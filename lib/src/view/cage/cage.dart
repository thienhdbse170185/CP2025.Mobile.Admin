import 'package:data_layer/data_layer.dart';
import 'package:data_layer/model/dto/cage_admin/cage_admin_dto.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:lottie/lottie.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:smart_farm_admin/src/viewmodel/cage/cage_bloc.dart';

class FeatureWidget {
  final Widget icon;
  final String title;
  final Map<String, dynamic>? extra;
  final String routeName;

  FeatureWidget({
    required this.icon,
    required this.title,
    this.extra,
    required this.routeName,
  });
}

/// Màn hình chi tiết chuồng sử dụng TabBar để phân chia nội dung theo từng phần
class CageScreen extends StatefulWidget {
  final String cageId;
  const CageScreen({super.key, required this.cageId});

  @override
  State<CageScreen> createState() => _CageScreenState();
}

class _CageScreenState extends State<CageScreen> {
  CageAdminDto? _cage;
  FarmingBatchDto? _farmingBatch;
  GrowthStageDto? _growthStage;
  bool _isLoading = false;

  // Danh sách các chức năng nhanh (ví dụ: xem công việc, chỉ số, báo cáo)
  final List<FeatureWidget> features = [
    FeatureWidget(
      icon: Icon(Icons.task_outlined, size: 32, color: Colors.white),
      title: 'Xem danh sách công việc',
      routeName: '/taskCage',
    ),
    FeatureWidget(
      icon: Icon(Icons.device_hub_rounded, size: 32, color: Colors.white),
      title: 'Xem các chỉ số',
      routeName: '/logCage',
    ),
    FeatureWidget(
      icon: Icon(Icons.receipt_long_rounded, size: 32, color: Colors.white),
      title: 'Xem báo cáo',
      routeName: '/reportCage',
    ),
  ];

  @override
  void initState() {
    super.initState();
    context.read<CageBloc>().add(CageEvent.getCage(cageId: widget.cageId));
  }

  // Format datetime to display in a readable format
  String formatDate(String? dateString) {
    if (dateString == null || dateString.isEmpty) return 'Chưa có';
    try {
      final date = DateTime.parse(dateString);
      return DateFormat('dd/MM/yyyy').format(date);
    } catch (e) {
      return 'Định dạng không hợp lệ';
    }
  }

  // Calculate days between two dates
  int daysBetween(String? startDateStr, String? endDateStr) {
    if (startDateStr == null || endDateStr == null) return 0;
    try {
      final start = DateTime.parse(startDateStr);
      final end = DateTime.parse(endDateStr);
      return end.difference(start).inDays;
    } catch (e) {
      return 0;
    }
  }

  // Calculate progress percentage
  double calculateProgress(String? startDateStr, String? endDateStr) {
    if (startDateStr == null || endDateStr == null) return 0;
    try {
      final start = DateTime.parse(startDateStr);
      final end = DateTime.parse(endDateStr);
      final now = DateTime.now();

      // If current date is before start date
      if (now.isBefore(start)) return 0;
      // If current date is after end date
      if (now.isAfter(end)) return 1;

      final totalDays = end.difference(start).inDays;
      final elapsedDays = now.difference(start).inDays;
      return elapsedDays / totalDays;
    } catch (e) {
      return 0;
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<CageBloc, CageState>(
      // Thay thế bằng BlocListener<CageBloc, CageState> nếu sử dụng Bloc thật
      listener: (context, state) {
        // Xử lý các trạng thái getCageDetailInProgress, getCageDetailSuccess, getCageDetailFailure
        state.maybeWhen(
          getCageDetailInProgress: () {
            setState(() => _isLoading = true);
          },
          getCageDetailSuccess: (cage) {
            setState(() {
              _cage = cage;
              _farmingBatch = cage.farmingBatchStageModel;
              _growthStage = cage.farmingBatchStageModel?.growthStageDetails;
              _isLoading = false;
            });
          },
          getCageDetailFailure: (message) {
            setState(() {
              _isLoading = false;
              ScaffoldMessenger.of(
                context,
              ).showSnackBar(SnackBar(content: Text('Lỗi: $message')));
            });
          },
          orElse: () {},
        );
      },
      child: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Chi tiết chuồng'),
            bottom: TabBar(
              tabs: [
                Tab(text: "Tổng Quan"),
                Tab(text: "Vụ Nuôi"),
                Tab(text: "Giai Đoạn"),
                Tab(text: "Báo Cáo & Cài Đặt"),
              ],
            ),
            actions: [
              IconButton(
                icon: const Icon(Icons.settings),
                onPressed: () {
                  // Xử lý chuyển sang màn hình cài đặt chung
                },
              ),
            ],
          ),
          body:
              _isLoading
                  ? const Center(child: CircularProgressIndicator())
                  : TabBarView(
                    children: [
                      buildOverviewTab(),
                      buildFarmingBatchTab(),
                      buildGrowthStageTab(),
                      buildReportsAndSettingsTab(),
                    ],
                  ),
        ),
      ),
    );
  }

  Widget buildOverviewTab() {
    // Format the datetime properly
    String formatDate(String? dateString) {
      if (dateString == null) return 'N/A';
      try {
        final date = DateTime.parse(dateString);
        return DateFormat('dd/MM/yyyy').format(date);
      } catch (e) {
        return 'N/A';
      }
    }

    // Format numbers with comma separators
    String formatNumber(int? number) {
      if (number == null) return '0';
      return NumberFormat('#,###').format(number);
    }

    // Features grid data
    final List<Map<String, dynamic>> features = [
      {
        'title': 'Thiết bị',
        'icon': Icons.sensors,
        'color': Colors.blue,
        'route': '/devices',
      },
      {
        'title': 'Thống kê',
        'icon': Icons.analytics,
        'color': Colors.orange,
        'route': '/statistics',
      },
      {
        'title': 'Báo cáo',
        'icon': Icons.assessment,
        'color': Colors.green,
        'route': '/reports',
      },
      {
        'title': 'Ghi chú',
        'icon': Icons.note_alt,
        'color': Colors.purple,
        'route': '/notes',
      },
      {
        'title': 'Lịch trình',
        'icon': Icons.calendar_month,
        'color': Colors.red,
        'route': '/schedule',
      },
      {
        'title': 'Nhân viên',
        'icon': Icons.people,
        'color': Colors.teal,
        'route': '/staff',
      },
    ];

    return SafeArea(
      child: RefreshIndicator(
        onRefresh: () async {
          // Implement refresh logic here
          await Future.delayed(const Duration(seconds: 1));
        },
        child: SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Status Card with Camera Preview
              Card(
                elevation: 2,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Header with status
                    Container(
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.primary,
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(16),
                          topRight: Radius.circular(16),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              const Icon(
                                Icons.home_work,
                                color: Colors.white,
                                size: 24,
                              ),
                              const SizedBox(width: 8),
                              Text(
                                _cage?.name ?? 'Cage 2',
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 12,
                              vertical: 6,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Container(
                                  width: 8,
                                  height: 8,
                                  decoration: BoxDecoration(
                                    color:
                                        _cage?.boardStatus == true
                                            ? Colors.green
                                            : Colors.red,
                                    shape: BoxShape.circle,
                                  ),
                                ),
                                const SizedBox(width: 4),
                                Text(
                                  _cage?.boardStatus == true
                                      ? 'Đang hoạt động'
                                      : 'Không hoạt động',
                                  style: TextStyle(
                                    color:
                                        Theme.of(context).colorScheme.primary,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),

                    // Camera preview or animation
                    Container(
                      height: 180,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.05),
                      ),
                      child:
                          _cage?.cameraUrl != null &&
                                  _cage!.cameraUrl.isNotEmpty
                              ? Stack(
                                alignment: Alignment.center,
                                children: [
                                  Center(
                                    child: Text(
                                      'Camera Stream: ${_cage?.cameraUrl}',
                                      style: const TextStyle(
                                        color: Colors.black54,
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    right: 10,
                                    bottom: 10,
                                    child: IconButton(
                                      icon: const Icon(
                                        Icons.fullscreen,
                                        color: Colors.white,
                                      ),
                                      onPressed: () {
                                        ScaffoldMessenger.of(
                                          context,
                                        ).showSnackBar(
                                          const SnackBar(
                                            content: Text(
                                              'Mở rộng camera đang được phát triển',
                                            ),
                                          ),
                                        );
                                      },
                                      style: IconButton.styleFrom(
                                        backgroundColor: Colors.black54,
                                      ),
                                    ),
                                  ),
                                ],
                              )
                              : Center(
                                child: Lottie.asset(
                                  'assets/animations/chicken_adult.json',
                                  width: 150,
                                  height: 150,
                                ),
                              ),
                    ),

                    // Cage Info
                    Padding(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Thông tin chuồng',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 12),

                          // Info rows
                          _buildInfoRow(
                            icon: Icons.qr_code,
                            label: 'Mã chuồng',
                            value: _cage?.penCode ?? 'Pen_02',
                          ),
                          _buildInfoRow(
                            icon: Icons.location_on,
                            label: 'Vị trí',
                            value: _cage?.location ?? 'Location 2',
                          ),
                          _buildInfoRow(
                            icon: Icons.calendar_today,
                            label: 'Ngày tạo',
                            value: formatDate(
                              _cage?.createdDate ?? '2024-12-16T03:01:38.55',
                            ),
                          ),
                          _buildInfoRow(
                            icon: Icons.person,
                            label: 'Nhân viên phụ trách',
                            value: _cage?.staffName ?? 'Staff Farm 2',
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20),

              // Capacity and Area Cards in a row
              Row(
                children: [
                  // Capacity Card
                  Expanded(
                    child: Card(
                      elevation: 2,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.pets,
                                  color: Theme.of(context).colorScheme.primary,
                                ),
                                const SizedBox(width: 8),
                                const Text(
                                  'Sức chứa',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 12),
                            LinearPercentIndicator(
                              lineHeight: 12.0,
                              percent: 0.2, // Example: 200/1000 = 0.2
                              backgroundColor: Colors.grey.shade200,
                              progressColor:
                                  Theme.of(context).colorScheme.primary,
                              barRadius: const Radius.circular(6),
                              padding: EdgeInsets.zero,
                              animation: true,
                            ),
                            const SizedBox(height: 8),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text('Hiện tại'),
                                Text(
                                  '200/${formatNumber(_cage?.capacity ?? 1000)}',
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),
                  // Area Card
                  Expanded(
                    child: Card(
                      elevation: 2,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.square_foot,
                                  color: Theme.of(context).colorScheme.primary,
                                ),
                                const SizedBox(width: 8),
                                const Text(
                                  'Diện tích',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 16),
                            Center(
                              child: Text(
                                '${_cage?.area ?? 11.5} m²',
                                style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                  color: Theme.of(context).colorScheme.primary,
                                ),
                              ),
                            ),
                            const SizedBox(height: 4),
                            Center(
                              child: Text(
                                'Mật độ: 17.4 con/m²',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.grey.shade700,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 20),

              // Board Status Card
              Card(
                elevation: 2,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.developer_board,
                            color: Theme.of(context).colorScheme.primary,
                          ),
                          const SizedBox(width: 8),
                          const Text(
                            'Trạng thái thiết bị',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 16),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              _buildStatusRow(
                                title: 'Mã thiết bị',
                                value: _cage?.boardCode ?? 'Board_02',
                                status: true,
                              ),
                              const SizedBox(height: 8),
                              _buildStatusRow(
                                title: 'Trạng thái kết nối',
                                value:
                                    _cage?.boardStatus == true
                                        ? 'Đang kết nối'
                                        : 'Mất kết nối',
                                status: _cage?.boardStatus ?? true,
                              ),
                            ],
                          ),
                          Container(
                            width: 80,
                            height: 80,
                            decoration: BoxDecoration(
                              color:
                                  _cage?.boardStatus == true
                                      ? Colors.green.withOpacity(0.1)
                                      : Colors.red.withOpacity(0.1),
                              shape: BoxShape.circle,
                            ),
                            child: Center(
                              child: Icon(
                                _cage?.boardStatus == true
                                    ? Icons.check_circle_outline
                                    : Icons.error_outline,
                                size: 40,
                                color:
                                    _cage?.boardStatus == true
                                        ? Colors.green
                                        : Colors.red,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 16),
                      OutlinedButton.icon(
                        onPressed: () {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text(
                                'Chức năng kiểm tra thiết bị đang được phát triển',
                              ),
                            ),
                          );
                        },
                        icon: const Icon(Icons.refresh),
                        label: const Text('Kiểm tra thiết bị'),
                        style: OutlinedButton.styleFrom(
                          minimumSize: const Size(double.infinity, 48),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 20),

              // Features Grid
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Các tính năng',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 16),
                  GridView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          crossAxisSpacing: 12,
                          mainAxisSpacing: 12,
                          childAspectRatio: 1.1,
                        ),
                    itemCount: features.length,
                    itemBuilder: (context, index) {
                      final feature = features[index];
                      return InkWell(
                        onTap: () {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(
                                'Chức năng ${feature['title']} đang được phát triển',
                              ),
                            ),
                          );
                        },
                        child: Card(
                          elevation: 1,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: feature['color'].withOpacity(0.1),
                                  shape: BoxShape.circle,
                                ),
                                child: Icon(
                                  feature['icon'],
                                  color: feature['color'],
                                  size: 24,
                                ),
                              ),
                              const SizedBox(height: 8),
                              Text(
                                feature['title'],
                                style: const TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ],
              ),

              const SizedBox(height: 20),

              // Quick Actions
              Card(
                elevation: 2,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Hành động nhanh',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 16),
                      Row(
                        children: [
                          Expanded(
                            child: _buildQuickAction(
                              icon: Icons.add_circle_outline,
                              title: 'Tạo vụ nuôi',
                              color: Colors.green,
                              onTap: () {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                    content: Text(
                                      'Chức năng tạo vụ nuôi đang được phát triển',
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                          const SizedBox(width: 12),
                          Expanded(
                            child: _buildQuickAction(
                              icon: Icons.history,
                              title: 'Lịch sử',
                              color: Colors.blue,
                              onTap: () {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                    content: Text(
                                      'Chức năng xem lịch sử đang được phát triển',
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                          const SizedBox(width: 12),
                          Expanded(
                            child: _buildQuickAction(
                              icon: Icons.settings,
                              title: 'Cài đặt',
                              color: Colors.orange,
                              onTap: () {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                    content: Text(
                                      'Chức năng cài đặt đang được phát triển',
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }

  // Helper method to build info row
  Widget _buildInfoRow({
    required IconData icon,
    required String label,
    required String value,
  }) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Row(
        children: [
          Icon(icon, size: 18, color: Colors.grey[600]),
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              label,
              style: TextStyle(color: Colors.grey[600], fontSize: 14),
            ),
          ),
          Text(
            value,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
          ),
        ],
      ),
    );
  }

  // Helper method to build status row
  Widget _buildStatusRow({
    required String title,
    required String value,
    required bool status,
  }) {
    return Row(
      children: [
        Container(
          width: 8,
          height: 8,
          decoration: BoxDecoration(
            color: status ? Colors.green : Colors.red,
            shape: BoxShape.circle,
          ),
        ),
        const SizedBox(width: 8),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(color: Colors.grey[600], fontSize: 13),
            ),
            Text(
              value,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
            ),
          ],
        ),
      ],
    );
  }

  // Helper method to build quick action button
  Widget _buildQuickAction({
    required IconData icon,
    required String title,
    required Color color,
    required VoidCallback onTap,
  }) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(12),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 12),
        decoration: BoxDecoration(
          color: color.withOpacity(0.1),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, color: color, size: 24),
            const SizedBox(height: 4),
            Text(
              title,
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
                color: color,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }

  // Make sure you have added these packages to your pubspec.yaml:
  // dependencies:
  //   flutter:
  //     sdk: flutter
  //   lottie: ^2.6.0
  //   percent_indicator: ^4.2.3
  //   intl: ^0.18.1

  /// REDESIGNED: Tab Vụ Nuôi - New layout with all farming batch details
  Widget buildFarmingBatchTab() {
    // Check if farming batch data exists
    final hasFarmingBatch = _cage?.farmingBatchStageModel != null;
    final farmingBatch = _cage?.farmingBatchStageModel;

    if (!hasFarmingBatch) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.no_food, size: 64, color: Colors.grey[400]),
            const SizedBox(height: 16),
            Text(
              'Chưa có thông tin vụ nuôi',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const SizedBox(height: 8),
            ElevatedButton.icon(
              icon: const Icon(Icons.add),
              label: const Text('Tạo vụ nuôi mới'),
              onPressed: () {
                // Navigate to create new farming batch
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Chức năng tạo vụ nuôi đang được phát triển'),
                  ),
                );
              },
            ),
          ],
        ),
      );
    }

    // Calculate progress
    final progress = calculateProgress(
      farmingBatch?.startDate,
      farmingBatch?.endDate,
    );

    // Calculate total days
    final totalDays = daysBetween(
      farmingBatch?.startDate,
      farmingBatch?.endDate,
    );

    // Calculate elapsed days
    final elapsedDays = progress * totalDays;

    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header Card with Status and Action Buttons
          Card(
            elevation: 2,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              farmingBatch?.name ?? 'Vụ nuôi',
                              style: Theme.of(context).textTheme.headlineSmall
                                  ?.copyWith(fontWeight: FontWeight.bold),
                              overflow: TextOverflow.ellipsis,
                            ),
                            Text(
                              'Mã: ${farmingBatch?.farmingbatchCode ?? ''}',
                              style: Theme.of(context).textTheme.bodyMedium,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 6,
                        ),
                        decoration: BoxDecoration(
                          color:
                              farmingBatch?.status == 'Active'
                                  ? Colors.green[100]
                                  : Colors.orange[100],
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                            color:
                                farmingBatch?.status == 'Active'
                                    ? Colors.green
                                    : Colors.orange,
                          ),
                        ),
                        child: Text(
                          farmingBatch?.status == 'Active'
                              ? 'Đang hoạt động'
                              : farmingBatch?.status ?? 'Không xác định',
                          style: TextStyle(
                            color:
                                farmingBatch?.status == 'Active'
                                    ? Colors.green[800]
                                    : Colors.orange[800],
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  Row(
                    children: [
                      Expanded(
                        child: OutlinedButton.icon(
                          icon: const Icon(Icons.edit),
                          label: const Text('Chỉnh sửa'),
                          onPressed: () {
                            // Navigate to edit farming batch
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text(
                                  'Chức năng chỉnh sửa đang được phát triển',
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                      const SizedBox(width: 8),
                      Expanded(
                        child: OutlinedButton.icon(
                          icon: const Icon(Icons.list_alt),
                          label: const Text('Báo cáo'),
                          onPressed: () {
                            // Navigate to reports
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text(
                                  'Chức năng báo cáo đang được phát triển',
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 16),

          // Timeline Progress
          Card(
            elevation: 2,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Tiến độ vụ nuôi',
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 16),
                  LinearPercentIndicator(
                    lineHeight: 16.0,
                    percent: progress.clamp(0.0, 1.0),
                    center: Text(
                      '${(progress * 100).toStringAsFixed(1)}%',
                      style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    barRadius: const Radius.circular(8),
                    progressColor: Theme.of(context).colorScheme.primary,
                    backgroundColor: Theme.of(
                      context,
                    ).colorScheme.primary.withOpacity(0.2),
                    animation: true,
                    animationDuration: 1000,
                  ),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Ngày bắt đầu',
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                          Text(
                            formatDate(farmingBatch?.startDate),
                            style: Theme.of(context).textTheme.bodyMedium
                                ?.copyWith(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            'Ngày kết thúc (dự kiến)',
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                          Text(
                            formatDate(farmingBatch?.endDate),
                            style: Theme.of(context).textTheme.bodyMedium
                                ?.copyWith(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  const Divider(),
                  const SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          Text(
                            'Tổng thời gian',
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                          Text(
                            '$totalDays ngày',
                            style: Theme.of(context).textTheme.titleMedium
                                ?.copyWith(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            'Đã trải qua',
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                          Text(
                            '${elapsedDays.toInt()} ngày',
                            style: Theme.of(context).textTheme.titleMedium
                                ?.copyWith(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            'Còn lại',
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                          Text(
                            '${(totalDays - elapsedDays).toInt()} ngày',
                            style: Theme.of(context).textTheme.titleMedium
                                ?.copyWith(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 16),

          // Basic Information Card
          Card(
            elevation: 2,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Thông tin cơ bản',
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 12),
                  _buildInfoRow(
                    label: 'Loài vật nuôi',
                    value: farmingBatch?.species ?? 'Không có',
                    icon: Icons.pets,
                  ),
                  _buildInfoRow(
                    label: 'Số lượng ban đầu',
                    value: '${farmingBatch?.quantity ?? 0} con',
                    icon: Icons.summarize,
                  ),
                  _buildInfoRow(
                    label: 'Số lượng bị ảnh hưởng',
                    value: '${farmingBatch?.affectedQuantity ?? 0} con',
                    icon: Icons.sick,
                  ),
                  _buildInfoRow(
                    label: 'Tần suất vệ sinh',
                    value: '${farmingBatch?.cleaningFrequency ?? 0} lần/tuần',
                    icon: Icons.cleaning_services,
                  ),
                  const SizedBox(height: 8),
                  const Divider(),
                  const SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircularPercentIndicator(
                        radius: 60.0,
                        lineWidth: 10.0,
                        percent:
                            farmingBatch?.quantity != null &&
                                    farmingBatch!.quantity > 0
                                ? (1 -
                                        (farmingBatch.affectedQuantity! /
                                            farmingBatch.quantity))
                                    .clamp(0.0, 1.0)
                                : 0,
                        center: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '${farmingBatch?.quantity != null && farmingBatch!.quantity > 0 ? ((farmingBatch.quantity - farmingBatch.affectedQuantity!) / farmingBatch.quantity * 100).toStringAsFixed(1) : 0}%',
                              style: Theme.of(context).textTheme.titleMedium
                                  ?.copyWith(fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'Khỏe mạnh',
                              style: Theme.of(context).textTheme.bodySmall,
                            ),
                          ],
                        ),
                        progressColor: Colors.green,
                        backgroundColor: Colors.red.withOpacity(0.2),
                        animation: true,
                        animationDuration: 1200,
                      ),
                      const SizedBox(width: 20),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            RichText(
                              text: TextSpan(
                                style: DefaultTextStyle.of(context).style,
                                children: [
                                  TextSpan(
                                    text: 'Số lượng hiện tại: ',
                                    style:
                                        Theme.of(context).textTheme.bodyMedium,
                                  ),
                                  TextSpan(
                                    text:
                                        '${farmingBatch?.quantity ?? 0 - (farmingBatch?.affectedQuantity ?? 0)} con',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyMedium
                                        ?.copyWith(fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 8),
                            Row(
                              children: [
                                Container(
                                  width: 12,
                                  height: 12,
                                  decoration: BoxDecoration(
                                    color: Colors.green,
                                    borderRadius: BorderRadius.circular(6),
                                  ),
                                ),
                                const SizedBox(width: 4),
                                Text(
                                  'Khỏe mạnh: ${farmingBatch?.quantity ?? 0 - (farmingBatch?.affectedQuantity ?? 0)} con',
                                  style: Theme.of(context).textTheme.bodySmall,
                                ),
                              ],
                            ),
                            const SizedBox(height: 4),
                            Row(
                              children: [
                                Container(
                                  width: 12,
                                  height: 12,
                                  decoration: BoxDecoration(
                                    color: Colors.red,
                                    borderRadius: BorderRadius.circular(6),
                                  ),
                                ),
                                const SizedBox(width: 4),
                                Text(
                                  'Bị ảnh hưởng: ${farmingBatch?.affectedQuantity ?? 0} con',
                                  style: Theme.of(context).textTheme.bodySmall,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 16),

          // Dates and Schedule Information
          Card(
            elevation: 2,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Thông tin lịch trình',
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 12),
                  _buildInfoRow(
                    label: 'Ngày bắt đầu thực tế',
                    value: formatDate(farmingBatch?.startDate),
                    icon: Icons.calendar_today,
                  ),
                  _buildInfoRow(
                    label: 'Ngày dự kiến bắt đầu',
                    value: formatDate(farmingBatch?.estimatedTimeStart),
                    icon: Icons.edit_calendar,
                  ),
                  _buildInfoRow(
                    label: 'Ngày dự kiến kết thúc',
                    value: formatDate(farmingBatch?.endDate),
                    icon: Icons.event_available,
                  ),
                  _buildInfoRow(
                    label: 'Ngày hoàn thành',
                    value:
                        formatDate(farmingBatch?.completeAt) == 'Chưa có'
                            ? 'Chưa hoàn thành'
                            : formatDate(farmingBatch?.completeAt),
                    icon: Icons.check_circle_outline,
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 16),

          // Action Buttons
          Row(
            children: [
              Expanded(
                child: ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Theme.of(context).colorScheme.primary,
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(vertical: 12),
                  ),
                  icon: const Icon(Icons.visibility),
                  label: const Text('Xem giai đoạn'),
                  onPressed: () {
                    // Switch to the growth stage tab
                    DefaultTabController.of(context).animateTo(2);
                  },
                ),
              ),
              const SizedBox(width: 10),
              OutlinedButton.icon(
                style: OutlinedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(
                    vertical: 12,
                    horizontal: 12,
                  ),
                ),
                icon: const Icon(Icons.add_chart),
                label: const Text('Báo cáo'),
                onPressed: () {
                  // Navigate to reports section
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Chức năng báo cáo đang được phát triển'),
                    ),
                  );
                },
              ),
            ],
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }

  /// Tab Giai Đoạn: Hiển thị chi tiết về giai đoạn phát triển hiện tại của vật nuôi
  Widget buildGrowthStageTab() {
    // Kiểm tra có dữ liệu giai đoạn hay không
    final hasGrowthStage =
        _cage?.farmingBatchStageModel?.growthStageDetails != null;
    final growthStage = _cage?.farmingBatchStageModel?.growthStageDetails;

    if (!hasGrowthStage) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.timeline_outlined, size: 64, color: Colors.grey[400]),
            const SizedBox(height: 16),
            Text(
              'Chưa có thông tin giai đoạn',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const SizedBox(height: 8),
            ElevatedButton.icon(
              icon: const Icon(Icons.add),
              label: const Text('Tạo giai đoạn mới'),
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text(
                      'Chức năng tạo giai đoạn đang được phát triển',
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      );
    }

    // Tính toán số ngày đã qua của giai đoạn
    final startDate = DateTime.parse(growthStage!.ageStartDate);
    final endDate = DateTime.parse(growthStage.ageEndDate);
    final today = DateTime.now();

    // Tính phần trăm tiến độ giai đoạn
    final totalDaysInStage = endDate.difference(startDate).inDays;
    final daysPassed = today.difference(startDate).inDays;
    final stageProgress = (daysPassed / totalDaysInStage).clamp(0.0, 1.0);

    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header với thông tin tổng quan
          Card(
            elevation: 2,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              growthStage.name,
                              style: Theme.of(context).textTheme.headlineSmall
                                  ?.copyWith(fontWeight: FontWeight.bold),
                              overflow: TextOverflow.ellipsis,
                            ),
                            Text(
                              'Độ tuổi: ${growthStage.ageStart} - ${growthStage.ageEnd} ngày',
                              style: Theme.of(context).textTheme.bodyMedium,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 6,
                        ),
                        decoration: BoxDecoration(
                          color:
                              growthStage.status == 'Active'
                                  ? Colors.green[100]
                                  : Colors.orange[100],
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                            color:
                                growthStage.status == 'Active'
                                    ? Colors.green
                                    : Colors.orange,
                          ),
                        ),
                        child: Text(
                          growthStage.status == 'Active'
                              ? 'Đang hoạt động'
                              : growthStage.status,
                          style: TextStyle(
                            color:
                                growthStage.status == 'Active'
                                    ? Colors.green[800]
                                    : Colors.orange[800],
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),

                  // Hiển thị tiến độ giai đoạn
                  Text(
                    'Tiến độ giai đoạn',
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                  const SizedBox(height: 8),
                  LinearPercentIndicator(
                    lineHeight: 16.0,
                    percent: stageProgress,
                    center: Text(
                      '${(stageProgress * 100).toStringAsFixed(1)}%',
                      style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    barRadius: const Radius.circular(8),
                    progressColor: Theme.of(context).colorScheme.primary,
                    backgroundColor: Theme.of(
                      context,
                    ).colorScheme.primary.withOpacity(0.2),
                    animation: true,
                    animationDuration: 1000,
                  ),
                  const SizedBox(height: 16),

                  // Thông tin ngày bắt đầu và kết thúc
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Ngày bắt đầu',
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                          Text(
                            formatDate(growthStage.ageStartDate),
                            style: Theme.of(context).textTheme.bodyMedium
                                ?.copyWith(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            'Ngày kết thúc',
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                          Text(
                            formatDate(growthStage.ageEndDate),
                            style: Theme.of(context).textTheme.bodyMedium
                                ?.copyWith(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  const Divider(),
                  const SizedBox(height: 8),

                  // Số liệu thống kê về thời gian
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          Text(
                            'Tổng thời gian',
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                          Text(
                            '$totalDaysInStage ngày',
                            style: Theme.of(context).textTheme.titleMedium
                                ?.copyWith(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            'Đã trải qua',
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                          Text(
                            '${daysPassed.clamp(0, totalDaysInStage)} ngày',
                            style: Theme.of(context).textTheme.titleMedium
                                ?.copyWith(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            'Còn lại',
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                          Text(
                            '${(totalDaysInStage - daysPassed).clamp(0, totalDaysInStage)} ngày',
                            style: Theme.of(context).textTheme.titleMedium
                                ?.copyWith(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 16),

          // Thẻ thông tin chi tiết giai đoạn
          Card(
            elevation: 2,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Thông tin dinh dưỡng & phát triển',
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 12),
                  _buildInfoRow(
                    label: 'Loại thức ăn',
                    value: growthStage.foodType ?? '',
                    icon: Icons.restaurant,
                  ),
                  _buildInfoRow(
                    label: 'Khối lượng mỗi con',
                    value: '${growthStage.weightAnimal} kg',
                    icon: Icons.monitor_weight,
                  ),
                  _buildInfoRow(
                    label: 'Lượng thức ăn đề xuất/lần',
                    value: '${growthStage.recommendedWeightPerSession} kg',
                    icon: Icons.food_bank,
                  ),
                  _buildInfoRow(
                    label: 'Lượng thức ăn theo % trọng lượng',
                    value: '${growthStage.weightBasedOnBodyMass * 100}%',
                    icon: Icons.percent,
                  ),
                  _buildInfoRow(
                    label: 'Số lượng vật nuôi',
                    value: '${growthStage.quantity} con',
                    icon: Icons.pets,
                  ),
                  _buildInfoRow(
                    label: 'Số lượng ảnh hưởng',
                    value: '${growthStage.affectQuantity} con',
                    icon: Icons.sick,
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 16),

          // Thêm biểu đồ phát triển trọng lượng lý tưởng
          Card(
            elevation: 2,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Biểu đồ phát triển',
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 12),
                  Container(
                    height: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.grey.withOpacity(0.1),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.bar_chart,
                          size: 48,
                          color: Colors.grey,
                        ),
                        const SizedBox(height: 8),
                        Text(
                          'Biểu đồ trọng lượng theo ngày tuổi',
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 12),
                  Row(
                    children: [
                      Expanded(
                        child: OutlinedButton.icon(
                          icon: const Icon(Icons.visibility),
                          label: const Text('Xem chi tiết'),
                          onPressed: () {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text('Chức năng đang được phát triển'),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 16),

          // Card lịch tiêm vắc-xin và chăm sóc
          Card(
            elevation: 2,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Lịch tiêm vắc-xin & chăm sóc',
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 12),
                  // Hiển thị danh sách vắc-xin hoặc thông báo nếu không có
                  growthStage.vaccineSchedules != null &&
                          (growthStage.vaccineSchedules as List).isNotEmpty
                      ? ListView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: 0, // Sẽ cập nhật khi có dữ liệu thực tế
                        itemBuilder: (context, index) {
                          return const ListTile(
                            leading: Icon(Icons.medical_services),
                            title: Text('Tên vắc-xin'),
                            subtitle: Text('Ngày tiêm: DD/MM/YYYY'),
                          );
                        },
                      )
                      : Column(
                        children: [
                          const Icon(
                            Icons.medical_services_outlined,
                            size: 48,
                            color: Colors.grey,
                          ),
                          const SizedBox(height: 8),
                          Text(
                            'Chưa có lịch tiêm vắc-xin',
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                          const SizedBox(height: 12),
                          OutlinedButton.icon(
                            icon: const Icon(Icons.add),
                            label: const Text('Thêm lịch tiêm vắc-xin'),
                            onPressed: () {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content: Text(
                                    'Chức năng đang được phát triển',
                                  ),
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 16),

          // Các nút tác vụ
          Row(
            children: [
              Expanded(
                child: ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Theme.of(context).colorScheme.primary,
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(vertical: 12),
                  ),
                  icon: const Icon(Icons.note_add),
                  label: const Text('Ghi chú giai đoạn'),
                  onPressed: () {
                    // Mở dialog thêm ghi chú
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Chức năng đang được phát triển'),
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(width: 10),
              OutlinedButton.icon(
                style: OutlinedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(
                    vertical: 12,
                    horizontal: 12,
                  ),
                ),
                icon: const Icon(Icons.history),
                label: const Text('Lịch sử'),
                onPressed: () {
                  // Hiển thị lịch sử của giai đoạn
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Chức năng đang được phát triển'),
                    ),
                  );
                },
              ),
            ],
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }

  /// Tab Báo Cáo & Cài Đặt: Hiển thị biểu đồ báo cáo năng suất và các cài đặt liên quan đến chuồng
  Widget buildReportsAndSettingsTab() {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Báo cáo & Cài đặt',
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const SizedBox(height: 16),
          // Phần báo cáo năng suất
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            elevation: 4,
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Báo cáo năng suất',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  Container(
                    height: 200,
                    color: Colors.grey[200],
                    child: const Center(child: Text('Biểu đồ năng suất')),
                  ),
                  const SizedBox(height: 8),
                  ElevatedButton(
                    onPressed: () {
                      // Xử lý tải báo cáo PDF
                    },
                    child: const Text('Tải báo cáo PDF'),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 16),
          // Phần cài đặt chuồng
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            elevation: 4,
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Cài đặt chuồng',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  ListTile(
                    leading: const Icon(Icons.edit),
                    title: const Text('Chỉnh sửa thông tin chuồng'),
                    onTap: () {
                      // Chuyển sang màn hình chỉnh sửa thông tin chuồng
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.notifications),
                    title: const Text('Cấu hình cảnh báo'),
                    onTap: () {
                      // Chuyển sang màn hình cấu hình cảnh báo
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.build),
                    title: const Text('Bảo trì thiết bị'),
                    onTap: () {
                      // Chuyển sang màn hình bảo trì thiết bị
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
