import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:smart_farm_admin/src/core/utils/date_util.dart';
import 'package:smart_farm_admin/src/model/dto/medical_symptom/medical_symptom_dto.dart';
import 'package:smart_farm_admin/src/model/dto/medication/medication.dart';
import 'package:smart_farm_admin/src/model/dto/prescription/prescription.dart';
import 'package:smart_farm_admin/src/model/request/symptom/create_symptom/create_symptom_request.dart';
import 'package:smart_farm_admin/src/viewmodel/medical_symptom/medical_symptom_cubit.dart';

class MedicalSymptomScreen extends StatefulWidget {
  final String id;

  const MedicalSymptomScreen({super.key, required this.id});

  @override
  State<MedicalSymptomScreen> createState() => _MedicalSymptomScreenState();
}

class _MedicalSymptomScreenState extends State<MedicalSymptomScreen> {
  MedicalSymptomDto? medicalSymptomDto;
  PrescriptionDto? prescriptions;
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();

    context.read<MedicalSymptomCubit>().getMedicalSymptomById(id: widget.id);
  }

  String _getStatusText(String status) {
    switch (status.toLowerCase()) {
      case 'pending':
        return 'Đang xử lý';
      case 'prescribed':
        return 'Đã kê đơn';
      case 'reject':
        return 'Gà bình thường';
      default:
        return 'Không rõ';
    }
  }

  String _getPrescriptionStatusText(String status) {
    switch (status.toLowerCase()) {
      case 'active':
        return 'Đang cho uống';
      case 'stop':
        return 'Ngừng cho uống';
      case 'completed':
        return 'Đã hoàn thành';
      case 'return':
        return 'Đã trả về chuồng';
      case 'followup':
        return 'Tiếp tục cách ly';
      default:
        return 'Không rõ';
    }
  }

  @override
  Widget build(BuildContext context) {
    final dateFormat = DateFormat('dd/MM/yyyy HH:mm');

    return BlocListener<MedicalSymptomCubit, MedicalSymptomState>(
      listener: (context, state) {
        state.maybeWhen(
          getMedicalSymptomByIdInProgress: () {
            setState(() {
              _isLoading = true;
            });
          },
          getMedicalSymptomByIdSuccess: (medicalSymptom) {
            setState(() {
              medicalSymptomDto = medicalSymptom;
              prescriptions = medicalSymptom.prescriptions;
              _isLoading = false;
            });
          },
          getMedicalSymptomByIdFailure: (e) {
            log('Error: $e');
            setState(() {
              _isLoading = false;
            });
          },
          orElse: () {},
        );
      },
      child: Scaffold(
        appBar: AppBar(title: const Text('Chi tiết báo cáo')),
        body:
            _isLoading
                ? Center(child: CircularProgressIndicator())
                : RefreshIndicator(
                  onRefresh: () async {
                    context.read<MedicalSymptomCubit>().getMedicalSymptomById(
                      id: widget.id,
                    );
                  },
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Thông tin cơ bản
                          _buildInfoCard(
                            context,
                            title: 'Thông tin chung',
                            content: [
                              _buildInfoRow(
                                'Loại vật nuôi:',
                                medicalSymptomDto?.nameAnimal ?? 'N/A',
                              ),
                              _buildInfoRow(
                                'Chẩn đoán:',
                                medicalSymptomDto?.diagnosis,
                              ),
                              _buildInfoRow(
                                'Số lượng cách ly:',
                                '${medicalSymptomDto?.affectedQuantity} con',
                              ),
                              _buildInfoRow(
                                'Ngày tạo:',
                                CustomDateUtils.formatDate(
                                  medicalSymptomDto?.createAt ?? DateTime.now(),
                                ),
                              ),
                              _buildInfoRow(
                                'Trạng thái:',
                                _getStatusText(medicalSymptomDto?.status ?? ''),
                              ),
                              if (medicalSymptomDto?.notes != null &&
                                  medicalSymptomDto!.notes
                                      .toString()
                                      .isNotEmpty)
                                _buildInfoRow(
                                  'Ghi chú:',
                                  medicalSymptomDto?.notes,
                                ),
                            ],
                          ),

                          const SizedBox(height: 16),

                          if (medicalSymptomDto?.pictures != null &&
                              (medicalSymptomDto?.pictures as List)
                                  .isNotEmpty) ...[
                            Text(
                              'Hình ảnh',
                              style: Theme.of(context).textTheme.titleLarge
                                  ?.copyWith(fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(height: 12),
                            if (medicalSymptomDto?.pictures != null &&
                                (medicalSymptomDto?.pictures as List)
                                    .isNotEmpty) ...[
                              _buildImageGridView(
                                context,
                                medicalSymptomDto!.pictures!,
                              ),
                            ],
                            const SizedBox(height: 16),
                          ],

                          // Thông tin đơn thuốc
                          if (prescriptions != null) ...[
                            _buildInfoCard(
                              context,
                              title: 'Thông tin đơn thuốc',
                              content: [
                                _buildInfoRow(
                                  'Ngày kê đơn:',
                                  CustomDateUtils.formatDate(
                                    prescriptions?.prescribedDate ??
                                        DateTime.now(),
                                  ),
                                ),
                                _buildInfoRow(
                                  'Ngày kết thúc:',
                                  CustomDateUtils.formatDate(
                                    prescriptions?.endDate ?? DateTime.now(),
                                  ),
                                ),
                                _buildInfoRow(
                                  'Số ngày uống thuốc:',
                                  '${prescriptions?.daysToTake} ngày',
                                ),
                                _buildInfoRow(
                                  'Trạng thái đơn thuốc:',
                                  _getPrescriptionStatusText(
                                    prescriptions?.status ?? 'N/A',
                                  ),
                                ),
                                _buildInfoRow(
                                  'Giá tiền:',
                                  NumberFormat.currency(
                                    locale: 'vi_VN',
                                    symbol: 'đ',
                                  ).format(prescriptions?.price),
                                ),
                                if (prescriptions?.notes != null)
                                  _buildInfoRow(
                                    'Ghi chú:',
                                    prescriptions?.notes,
                                  ),
                              ],
                            ),

                            const SizedBox(height: 16),

                            // Danh sách thuốc
                            if (prescriptions?.medications != null &&
                                (prescriptions?.medications as List)
                                    .isNotEmpty) ...[
                              Text(
                                'Danh sách thuốc',
                                style: Theme.of(context).textTheme.titleLarge
                                    ?.copyWith(fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(height: 8),
                              ...List<Widget>.from(
                                (prescriptions?.medications as List).map(
                                  (med) => _buildMedicationCard(context, med),
                                ),
                              ),
                            ],
                          ],

                          const SizedBox(height: 16),

                          // Hình ảnh (nếu có)
                          if (medicalSymptomDto?.pictures != null &&
                              (medicalSymptomDto?.pictures as List)
                                  .isNotEmpty) ...[
                            Text(
                              'Hình ảnh',
                              style: Theme.of(context).textTheme.titleLarge
                                  ?.copyWith(fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(height: 8),
                            Text('Không có hình ảnh nào được cung cấp'),
                          ],
                        ],
                      ),
                    ),
                  ),
                ),
      ),
    );
  }

  Widget _buildImageGridView(
    BuildContext context,
    List<PictureSymptom> pictures,
  ) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        childAspectRatio: 1.0,
      ),
      itemCount: pictures.length,
      itemBuilder: (context, index) {
        final picture = pictures[index];
        final imageUrl = picture.image;
        final dateCaptured = picture.dateCaptured;
        final formattedDate = DateFormat(
          'dd/MM/yyyy HH:mm',
        ).format(dateCaptured);

        return InkWell(
          onTap: () {
            _showImageDetailDialog(context, imageUrl, formattedDate);
          },
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: Colors.grey.shade300),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: ClipRRect(
                    borderRadius: const BorderRadius.vertical(
                      top: Radius.circular(7),
                    ),
                    child: Image.network(
                      imageUrl,
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) {
                        return Container(
                          color: Colors.grey.shade200,
                          child: const Center(
                            child: Icon(
                              Icons.error_outline,
                              color: Colors.red,
                              size: 40,
                            ),
                          ),
                        );
                      },
                      loadingBuilder: (context, child, loadingProgress) {
                        if (loadingProgress == null) return child;
                        return Center(
                          child: CircularProgressIndicator(
                            value:
                                loadingProgress.expectedTotalBytes != null
                                    ? loadingProgress.cumulativeBytesLoaded /
                                        loadingProgress.expectedTotalBytes!
                                    : null,
                          ),
                        );
                      },
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8,
                    vertical: 4,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.green.shade50,
                    borderRadius: const BorderRadius.vertical(
                      bottom: Radius.circular(7),
                    ),
                  ),
                  child: Text(
                    formattedDate,
                    style: const TextStyle(fontSize: 12),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  void _showImageDetailDialog(
    BuildContext context,
    String imageUrl,
    String dateCaptured,
  ) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          insetPadding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              AppBar(
                title: Text('Hình ảnh - $dateCaptured'),
                centerTitle: true,
                leading: IconButton(
                  icon: const Icon(Icons.close),
                  onPressed: () => Navigator.of(context).pop(),
                ),
                automaticallyImplyLeading: false,
              ),
              InteractiveViewer(
                panEnabled: true,
                boundaryMargin: const EdgeInsets.all(20),
                minScale: 0.5,
                maxScale: 4,
                child: Image.network(
                  imageUrl,
                  fit: BoxFit.contain,
                  errorBuilder: (context, error, stackTrace) {
                    return Container(
                      padding: const EdgeInsets.all(20),
                      child: const Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            Icons.error_outline,
                            color: Colors.red,
                            size: 60,
                          ),
                          SizedBox(height: 16),
                          Text('Không thể tải hình ảnh'),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _buildInfoCard(
    BuildContext context, {
    required String title,
    required List<Widget> content,
  }) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.bold,
                color: Colors.green.shade700,
              ),
            ),
            const Divider(thickness: 1),
            const SizedBox(height: 8),
            ...content,
          ],
        ),
      ),
    );
  }

  Widget _buildInfoRow(String label, String? value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 150,
            child: Text(
              label,
              style: const TextStyle(
                fontWeight: FontWeight.w500,
                color: Colors.black87,
              ),
            ),
          ),
          Expanded(
            child: Text(
              value ?? 'N/A',
              style: const TextStyle(color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMedicationCard(BuildContext context, MedicationDto medication) {
    // Tính tổng số liều mỗi ngày
    final int totalDosesPerDay =
        (medication.morning) +
        (medication.afternoon) +
        (medication.evening) +
        (medication.noon);

    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      color: Colors.green.shade50,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Icon(Icons.medication, color: Colors.green),
                const SizedBox(width: 8),
                Text(
                  medication.medicationName,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            const Divider(),
            _buildDosageInfo(medication),
            const SizedBox(height: 16),
            Text(
              'Ghi chú: ${medication.notes ?? 'Không có ghi chú'}',
              style: const TextStyle(
                fontStyle: FontStyle.italic,
                color: Colors.black87,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDosageInfo(MedicationDto medication) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        _buildDosageItem('Sáng', medication.morning),
        _buildDosageItem('Trưa', medication.noon),
        _buildDosageItem('Chiều', medication.afternoon),
        _buildDosageItem('Tối', medication.evening),
      ],
    );
  }

  Widget _buildDosageItem(String time, int count) {
    return Column(
      children: [
        Text(time, style: const TextStyle(fontSize: 13, color: Colors.black54)),
        const SizedBox(height: 4),
        Container(
          width: 36,
          height: 36,
          decoration: BoxDecoration(
            color: count > 0 ? Colors.green.shade100 : Colors.grey.shade200,
            borderRadius: BorderRadius.circular(18),
            border: Border.all(
              color: count > 0 ? Colors.green.shade700 : Colors.grey.shade400,
            ),
          ),
          child: Center(
            child: Text(
              '$count',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: count > 0 ? Colors.green.shade700 : Colors.grey.shade600,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
