import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:smart_farm_admin/src/model/dto/farming_batch/farming_batch_dto.dart';
import 'package:smart_farm_admin/src/viewmodel/farming_batch/farming_batch_cubit.dart';

class FarmingBatchDetailScreen extends StatefulWidget {
  final String farmingBatchId;
  const FarmingBatchDetailScreen({super.key, required this.farmingBatchId});

  @override
  State<FarmingBatchDetailScreen> createState() =>
      _FarmingBatchDetailScreenState();
}

class _FarmingBatchDetailScreenState extends State<FarmingBatchDetailScreen> {
  // Sample data from the provided JSON

  FarmingBatchDto? farmingBatchDto;
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();

    context.read<FarmingBatchCubit>().getFarmingBatchById(
      widget.farmingBatchId,
    );
  }

  @override
  Widget build(BuildContext context) {
    // Calculate current stage based on today's date
    DateTime now = DateTime.now();
    String currentStage = "Chưa bắt đầu";
    double growthProgress = 0.0;

    DateTime startDate =
        farmingBatchDto != null
            ? DateTime.parse(farmingBatchDto!.startDate)
            : DateTime.now(); // Provide a default value or handle null case
    DateTime endDate =
        farmingBatchDto != null
            ? DateTime.parse(farmingBatchDto!.endDate)
            : DateTime.now(); // Provide a default value or handle null case

    if (now.isAfter(startDate) && now.isBefore(endDate)) {
      // Calculate overall progress
      int totalDuration = endDate.difference(startDate).inDays;
      int daysPassed = now.difference(startDate).inDays;
      growthProgress = daysPassed / totalDuration;

      // Find current stage
      for (var stage in farmingBatchDto?.growthStages ?? []) {
        DateTime stageStart = DateTime.parse(stage["ageStartDate"]);
        DateTime stageEnd = DateTime.parse(stage["ageEndDate"]);

        if (now.isAfter(stageStart) && now.isBefore(stageEnd)) {
          currentStage = stage["name"];
          break;
        }
      }
    } else if (now.isAfter(endDate)) {
      currentStage = "Đã hoàn thành";
      growthProgress = 1.0;
    }

    return BlocListener<FarmingBatchCubit, FarmingBatchState>(
      listener: (context, state) {
        state.maybeWhen(
          getFarmingBatchByIdInProgress: () {
            setState(() {
              _isLoading = true;
            });
          },
          getFarmingBatchByIdSuccess: (farmingBatch) {
            setState(() {
              farmingBatchDto = farmingBatch;
              _isLoading = false;
            });
          },
          getFarmingBatchByIdFailure: (error) {
            setState(() {
              _isLoading = false;
            });
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text('Lỗi khi lấy thông tin vụ nuôi: $error'),
                backgroundColor: Colors.red,
              ),
            );
          },
          orElse: () {},
        );
      },
      child: Scaffold(
        appBar: AppBar(title: Text('Chi tiết vụ nuôi')),
        body:
            _isLoading
                ? Center(child: CircularProgressIndicator())
                : RefreshIndicator(
                  onRefresh: () async {
                    await context.read<FarmingBatchCubit>().getFarmingBatchById(
                      widget.farmingBatchId,
                    );
                  },
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _buildHeaderSection(),
                        const SizedBox(height: 16),
                        _buildProgressSection(currentStage, growthProgress),
                        const SizedBox(height: 16),
                        _buildInfoCards(),
                        const SizedBox(height: 16),
                        _buildGrowthStagesSection(),
                        const SizedBox(height: 16),
                        _buildMedicalSymptomsSection(),
                      ],
                    ),
                  ),
                ),
      ),
    );
  }

  Widget _buildHeaderSection() {
    return Container(
      padding: const EdgeInsets.all(16),
      color: Colors.green[50],
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  color:
                      farmingBatchDto?.status == "Active"
                          ? Colors.green
                          : Colors.grey,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(
                  farmingBatchDto?.status == "Active"
                      ? 'Đang nuôi'
                      : 'Kết thúc',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(width: 8),
              Text(
                farmingBatchDto?.farmingBatchCode ?? '',
                style: TextStyle(color: Colors.grey[600]),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Text(
            farmingBatchDto?.name ?? '',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 4),
          Text(
            'Chuồng: ${farmingBatchDto?.cageName ?? ''}',
            style: TextStyle(fontSize: 16, color: Colors.grey[800]),
          ),
        ],
      ),
    );
  }

  Widget _buildProgressSection(String currentStage, double progress) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Tiến độ phát triển',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                Icon(Icons.pets, color: Colors.green),
                const SizedBox(width: 8),
                Text(
                  'Giai đoạn hiện tại: ',
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
                Text(
                  currentStage,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.green[700],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            LinearProgressIndicator(
              value: progress,
              backgroundColor: Colors.grey[200],
              valueColor: AlwaysStoppedAnimation<Color>(
                progress >= 0.9 ? Colors.red : Colors.green,
              ),
              minHeight: 8,
            ),
            const SizedBox(height: 8),
            Text(
              'Tiến độ: ${(progress * 100).toInt()}%',
              style: TextStyle(color: Colors.grey[700]),
            ),
            const SizedBox(height: 8),
            _buildDateInfo(),
          ],
        ),
      ),
    );
  }

  Widget _buildDateInfo() {
    // Format dates
    String startDate = DateFormat(
      'dd/MM/yyyy',
    ).format(DateTime.parse(farmingBatchDto?.startDate ?? '1970-01-01'));
    String endDate = DateFormat(
      'dd/MM/yyyy',
    ).format(DateTime.parse(farmingBatchDto?.endDate ?? '1970-01-01'));

    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Ngày bắt đầu', style: TextStyle(color: Colors.grey[600])),
              const SizedBox(height: 2),
              Row(
                children: [
                  Icon(Icons.calendar_today, size: 16, color: Colors.green),
                  const SizedBox(width: 4),
                  Text(
                    startDate,
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ],
          ),
        ),
        Container(height: 35, width: 1, color: Colors.grey[300]),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(left: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Ngày kết thúc (dự kiến)',
                  style: TextStyle(color: Colors.grey[600]),
                ),
                const SizedBox(height: 2),
                Row(
                  children: [
                    Icon(Icons.event, size: 16, color: Colors.green),
                    const SizedBox(width: 4),
                    Text(
                      endDate,
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildInfoCards() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Thông tin cơ bản',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              Expanded(
                child: _buildInfoCard(
                  title: 'Số lượng',
                  value: '${farmingBatchDto?.quantity ?? 0} con',
                  icon: Icons.group,
                  color: Colors.blue,
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: _buildInfoCard(
                  title: 'Đã chết',
                  value: '${farmingBatchDto?.deadQuantity ?? 0}',
                  icon: Icons.warning,
                  color: Colors.red,
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: _buildInfoCard(
                  title: 'Tần suất vệ sinh',
                  value: '${farmingBatchDto?.cleaningFrequency ?? 0} ngày/lần',
                  icon: Icons.cleaning_services,
                  color: Colors.purple,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildInfoCard({
    required String title,
    required String value,
    required IconData icon,
    required Color color,
  }) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            Icon(icon, color: color, size: 32),
            const SizedBox(height: 8),
            Text(
              value,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            const SizedBox(height: 4),
            Text(
              title,
              style: TextStyle(color: Colors.grey[700], fontSize: 12),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildGrowthStagesSection() {
    // Sort growth stages by start date
    List<Map<String, dynamic>> stages = List<Map<String, dynamic>>.from(
      farmingBatchDto?.growthStages ?? [],
    );
    stages.sort(
      (a, b) => DateTime.parse(
        a["ageStartDate"],
      ).compareTo(DateTime.parse(b["ageStartDate"])),
    );

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Card(
        elevation: 2,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Các giai đoạn phát triển',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 12),
              ...stages.map((stage) => _buildStageItem(stage)).toList(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildStageItem(Map<String, dynamic> stage) {
    // Check if current stage
    DateTime now = DateTime.now();
    DateTime stageStart = DateTime.parse(stage["ageStartDate"]);
    DateTime stageEnd = DateTime.parse(stage["ageEndDate"]);
    bool isCurrentStage = now.isAfter(stageStart) && now.isBefore(stageEnd);

    // Format dates
    String startDate = DateFormat('dd/MM/yyyy').format(stageStart);
    String endDate = DateFormat('dd/MM/yyyy').format(stageEnd);

    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: isCurrentStage ? Colors.green[50] : Colors.grey[50],
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: isCurrentStage ? Colors.green : Colors.grey[300]!,
          width: 1,
        ),
      ),
      child: Row(
        children: [
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              color: isCurrentStage ? Colors.green : Colors.grey[300],
              shape: BoxShape.circle,
            ),
            child: Icon(Icons.egg_alt, color: Colors.white),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      stage["name"],
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color:
                            isCurrentStage ? Colors.green[800] : Colors.black,
                      ),
                    ),
                    if (isCurrentStage)
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 2,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Text(
                          'Hiện tại',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                  ],
                ),
                const SizedBox(height: 4),
                Text(
                  '$startDate - $endDate',
                  style: TextStyle(color: Colors.grey[700]),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMedicalSymptomsSection() {
    List<Map<String, dynamic>> symptoms = List<Map<String, dynamic>>.from(
      farmingBatchDto?.medicalSymptoms ?? [],
    );

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Card(
        elevation: 2,
        margin: const EdgeInsets.only(bottom: 16),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Tình trạng y tế',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 12),
              symptoms.isEmpty
                  ? Center(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 24),
                      child: Column(
                        children: [
                          Icon(
                            Icons.health_and_safety,
                            size: 48,
                            color: Colors.green,
                          ),
                          const SizedBox(height: 8),
                          Text(
                            'Không có ghi nhận y tế',
                            style: TextStyle(color: Colors.grey[600]),
                          ),
                        ],
                      ),
                    ),
                  )
                  : Column(
                    children:
                        symptoms
                            .map((symptom) => _buildSymptomItem(symptom))
                            .toList(),
                  ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSymptomItem(Map<String, dynamic> symptom) {
    // Determine color based on status
    Color statusColor;
    switch (symptom["status"]) {
      case "Pending":
        statusColor = Colors.orange;
        break;
      case "Prescribed":
        statusColor = Colors.blue;
        break;
      case "Resolved":
        statusColor = Colors.green;
        break;
      default:
        statusColor = Colors.grey;
    }

    String statusText;
    switch (symptom["status"]) {
      case "Pending":
        statusText = "Chờ xử lý";
        break;
      case "Prescribed":
        statusText = "Đã kê đơn";
        break;
      case "Resolved":
        statusText = "Đã giải quyết";
        break;
      default:
        statusText = symptom["status"];
    }

    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: statusColor.withOpacity(0.5), width: 1),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 2,
            offset: Offset(0, 1),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  color: statusColor.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: statusColor, width: 1),
                ),
                child: Text(
                  statusText,
                  style: TextStyle(
                    color: statusColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                  ),
                ),
              ),
              if (symptom["isEmergency"] == true)
                Container(
                  margin: const EdgeInsets.only(left: 8),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8,
                    vertical: 4,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.red.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: Colors.red, width: 1),
                  ),
                  child: Text(
                    'Khẩn cấp',
                    style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                    ),
                  ),
                ),
              Spacer(),
              Text(
                '${symptom["affectedQuantity"]}/${symptom["quantityInCage"]} con',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[700],
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Text(
            symptom["diagnosis"] ?? 'Chưa chẩn đoán',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          if (symptom["notes"] != null &&
              symptom["notes"].toString().isNotEmpty)
            Padding(
              padding: const EdgeInsets.only(top: 8),
              child: Text(
                'Ghi chú: ${symptom["notes"]}',
                style: TextStyle(color: Colors.grey[800]),
              ),
            ),
        ],
      ),
    );
  }
}
