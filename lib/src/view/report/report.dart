import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:smart_farm_admin/src/core/utils/date_util.dart';
import 'package:smart_farm_admin/src/core/utils/time_util.dart';
import 'package:smart_farm_admin/src/model/dto/animal_meat_sale/animal_meat_sale_dto.dart';
import 'package:smart_farm_admin/src/model/dto/dead_poultry_log/dead_poultry_log_dto.dart';
import 'package:smart_farm_admin/src/model/dto/report_farming_batch/food_usage_detail/food_usage_detail.dart';
import 'package:smart_farm_admin/src/model/dto/report_farming_batch/growth_stage_report/growth_stage_report.dart';
import 'package:smart_farm_admin/src/model/dto/report_farming_batch/prescription_detail/prescription_detail.dart';
import 'package:smart_farm_admin/src/viewmodel/report_farming_batch/report_farming_batch_cubit.dart';
import 'package:smart_farm_admin/src/model/dto/report_farming_batch/report_farming_batch_dto.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';

class ReportFarmingBatchScreen extends StatefulWidget {
  final String farmingBatchId;
  const ReportFarmingBatchScreen({super.key, required this.farmingBatchId});

  @override
  State<ReportFarmingBatchScreen> createState() =>
      _ReportFarmingBatchScreenState();
}

class _ReportFarmingBatchScreenState extends State<ReportFarmingBatchScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  final DateFormat dateFormat = DateFormat('dd/MM/yyyy');
  final NumberFormat currencyFormat = NumberFormat.currency(
    locale: 'vi_VN',
    symbol: 'đ',
  );

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 7, vsync: this);
    context
        .read<ReportFarmingBatchCubit>()
        .getReportFarmingBatchByFarmingBatchId(
          farmingBatchId: widget.farmingBatchId,
        );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  String formatDate(String? dateString) {
    if (dateString == null) return 'Chưa kết thúc';
    try {
      final date = DateTime.parse(dateString);
      return dateFormat.format(date);
    } catch (e) {
      return 'Ngày không hợp lệ';
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ReportFarmingBatchCubit, ReportFarmingBatchState>(
      builder: (context, state) {
        return state.maybeWhen(
          getReportFarmingBatchInProgress:
              () => const Scaffold(
                body: Center(child: CircularProgressIndicator()),
              ),
          getReportFarmingBatchFailure:
              (error) => Scaffold(
                body: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.error_outline,
                        size: 64,
                        color: Colors.red,
                      ),
                      const SizedBox(height: 16),
                      Text('Đã xảy ra lỗi: $error'),
                      const SizedBox(height: 16),
                      ElevatedButton(
                        onPressed:
                            () => context
                                .read<ReportFarmingBatchCubit>()
                                .getReportFarmingBatchByFarmingBatchId(
                                  farmingBatchId: widget.farmingBatchId,
                                ),
                        child: const Text('Thử lại'),
                      ),
                    ],
                  ),
                ),
              ),
          getReportFarmingBatchSuccess:
              (reportData) => _buildSuccessScreen(reportData),
          orElse:
              () => const Scaffold(
                body: Center(child: CircularProgressIndicator()),
              ),
        );
      },
    );
  }

  Widget _buildSuccessScreen(ReportFarmingBatchDto reportData) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Báo cáo vụ nuôi'),
            Row(
              children: [
                const Icon(Icons.access_time, size: 12),
                const SizedBox(width: 4),
                Text(
                  'Hiện tại: ${CustomDateUtils.formatDate(TimeUtils.customNow())}',
                  style: TextStyle(fontSize: 12, color: Colors.grey[600]),
                ),
              ],
            ),
          ],
        ),
        bottom: TabBar(
          controller: _tabController,
          isScrollable: true,
          tabs: const [
            Tab(text: 'Tổng quan'),
            Tab(text: 'Giai đoạn phát triển'),
            Tab(text: 'Vaccine'),
            Tab(text: 'Bán thịt'),
            Tab(text: 'Thức ăn'),
            Tab(text: 'Bệnh lý'),
            Tab(text: 'Nhật ký thất thoát'),
          ],
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.picture_as_pdf),
            tooltip: 'Xuất báo cáo PDF',
            onPressed: () => _exportToPdf(reportData),
          ),
        ],
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          _buildOverviewTab(reportData),
          _buildGrowthStagesTab(reportData.growthStageReports),
          _buildVaccinesTab(reportData),
          _buildMeatSalesTab(reportData.animalMeatSales),
          _buildFoodTab(reportData.foodUsageDetails),
          _buildPrescriptionsTab(reportData.prescriptionDetails),
          _buildDeadPoultryLogsTab(reportData.deadPoultryLogs),
        ],
      ),
    );
  }

  Future<void> _exportToPdf(ReportFarmingBatchDto reportData) async {
    final pdf = pw.Document();

    // Add font for Vietnamese characters
    final font = await PdfGoogleFonts.nunitoRegular();
    final fontBold = await PdfGoogleFonts.nunitoBold();

    pdf.addPage(
      pw.MultiPage(
        pageFormat: PdfPageFormat.a4,
        margin: const pw.EdgeInsets.all(32),
        build: (pw.Context context) {
          return [
            _buildPdfHeader(reportData, font, fontBold),
            pw.SizedBox(height: 20),
            _buildPdfOverviewSection(reportData, font, fontBold),
            pw.SizedBox(height: 20),
            _buildPdfFinancialSection(reportData, font, fontBold),
            pw.SizedBox(height: 20),
            if (reportData.growthStageReports.isNotEmpty)
              _buildPdfGrowthStagesSection(
                reportData.growthStageReports,
                font,
                fontBold,
              ),
            pw.SizedBox(height: 20),
            if (reportData.vaccineDetails.isNotEmpty)
              _buildPdfVaccinesSection(
                reportData.vaccineDetails,
                font,
                fontBold,
              ),
            // Thêm phần này vào phương thức _exportToPdf
            pw.SizedBox(height: 20),
            if (reportData.animalMeatSales.isNotEmpty)
              _buildPdfMeatSalesSection(
                reportData.animalMeatSales,
                font,
                fontBold,
              ),
            pw.SizedBox(height: 20),
            if (reportData.foodUsageDetails.isNotEmpty)
              _buildPdfFoodSection(reportData.foodUsageDetails, font, fontBold),
            pw.SizedBox(height: 20),
            if (reportData.prescriptionDetails.isNotEmpty)
              _buildPdfPrescriptionsSection(
                reportData.prescriptionDetails,
                font,
                fontBold,
              ),

            pw.SizedBox(height: 20),
            if (reportData.deadPoultryLogs.isNotEmpty)
              _buildPdfDeadPoultryLogsSection(
                reportData.deadPoultryLogs,
                font,
                fontBold,
              ),
          ];
        },
      ),
    );

    // Generate the PDF as bytes
    final bytes = await pdf.save();

    // Generate filename
    final fileName =
        'báo_cáo_vụ_nuôi_${reportData.farmingBatchName}_${TimeUtils.customNow()}.pdf';

    // Save the PDF to storage
    final savedFile = await _savePdfToStorage(bytes, fileName);

    if (savedFile != null) {
      // **Open the PDF in an external viewer:**
      OpenFile.open(savedFile.path);
    }
  }

  // Helper method to save PDF to device storage
  Future<File?> _savePdfToStorage(Uint8List bytes, String fileName) async {
    try {
      // 1) Yêu cầu WRITE / MANAGE permission
      PermissionStatus status;
      if (Platform.isAndroid) {
        // Android 11+ cần MANAGE_EXTERNAL_STORAGE
        if (await Permission.manageExternalStorage.isDenied) {
          status = await Permission.manageExternalStorage.request();
        } else {
          status = await Permission.manageExternalStorage.status;
        }
      } else {
        // iOS / others: không cần
        status = PermissionStatus.granted;
      }

      if (!status.isGranted) {
        // Nếu từ chối vĩnh viễn, mở cài đặt app
        if (status.isPermanentlyDenied) {
          await openAppSettings();
        }
        throw Exception('Quyền lưu trữ bị từ chối');
      }

      // 2) Lấy thư mục
      Directory directory;
      if (Platform.isAndroid) {
        directory = (await getExternalStorageDirectory())!;
        // nếu muốn lưu vào thư mục gốc DCIM/PDF chẳng hạn:
        // directory = Directory('/storage/emulated/0/Download');
      } else {
        directory = await getApplicationDocumentsDirectory();
      }

      final filePath = '${directory.path}/$fileName';
      final file = File(filePath);
      await file.writeAsBytes(bytes);
      return file;
    } catch (e) {
      // Hiện thông báo lỗi rõ ràng
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text('Lỗi khi lưu file: $e')));
      return null;
    }
  }

  pw.Widget _buildPdfDeadPoultryLogsSection(
    List<DeadPoultryLogDto> logs,
    pw.Font font,
    pw.Font fontBold,
  ) {
    // Sort logs by date (newest first)
    final sortedLogs = List<DeadPoultryLogDto>.from(logs)
      ..sort((a, b) => b.date.compareTo(a.date));

    // Calculate total dead quantity
    int totalDeadQuantity = logs.fold(0, (sum, log) => sum + log.quantity);

    return pw.Column(
      crossAxisAlignment: pw.CrossAxisAlignment.start,
      children: [
        pw.Text(
          'NHẬT KÝ THẤT THOÁT',
          style: pw.TextStyle(font: fontBold, fontSize: 14),
        ),
        pw.SizedBox(height: 10),
        pw.Text(
          'Tổng số vật nuôi thất thoát: $totalDeadQuantity con',
          style: pw.TextStyle(font: font, fontSize: 12),
        ),
        pw.SizedBox(height: 10),
        pw.Table(
          border: pw.TableBorder.all(color: PdfColors.grey300),
          children: [
            // Header
            pw.TableRow(
              decoration: const pw.BoxDecoration(color: PdfColors.grey200),
              children: [
                _buildPdfTableCell('Ngày', font, fontBold: true),
                _buildPdfTableCell(
                  'Số lượng',
                  font,
                  fontBold: true,
                  align: pw.TextAlign.center,
                ),
                _buildPdfTableCell('Ghi chú', font, fontBold: true),
              ],
            ),
            // Data rows
            ...sortedLogs.map((log) {
              return pw.TableRow(
                children: [
                  _buildPdfTableCell(
                    CustomDateUtils.formatDate(DateTime.parse(log.date)),
                    font,
                  ),
                  _buildPdfTableCell(
                    '${log.quantity} con',
                    font,
                    align: pw.TextAlign.center,
                  ),
                  _buildPdfTableCell(log.note, font),
                ],
              );
            }).toList(),
          ],
        ),
      ],
    );
  }

  pw.Widget _buildPdfHeader(
    ReportFarmingBatchDto reportData,
    pw.Font font,
    pw.Font fontBold,
  ) {
    return pw.Column(
      crossAxisAlignment: pw.CrossAxisAlignment.start,
      children: [
        pw.Text(
          'BÁO CÁO VỤ NUÔI',
          style: pw.TextStyle(font: fontBold, fontSize: 20),
          textAlign: pw.TextAlign.center,
        ),
        pw.SizedBox(height: 5),
        pw.Text(
          reportData.farmingBatchName,
          style: pw.TextStyle(font: fontBold, fontSize: 16),
          textAlign: pw.TextAlign.center,
        ),
        pw.SizedBox(height: 10),
        pw.Text(
          'Ngày xuất báo cáo: ${dateFormat.format(DateTime.now())}',
          style: pw.TextStyle(font: font, fontSize: 10),
        ),
        pw.Divider(),
      ],
    );
  }

  pw.Widget _buildPdfOverviewSection(
    ReportFarmingBatchDto reportData,
    pw.Font font,
    pw.Font fontBold,
  ) {
    return pw.Column(
      crossAxisAlignment: pw.CrossAxisAlignment.start,
      children: [
        pw.Text(
          'THÔNG TIN CHUNG',
          style: pw.TextStyle(font: fontBold, fontSize: 14),
        ),
        pw.SizedBox(height: 10),
        _buildPdfInfoRow('Tên vụ nuôi', reportData.farmingBatchName, font),
        _buildPdfInfoRow('Chuồng', reportData.cageName, font),
        _buildPdfInfoRow(
          'Ngày bắt đầu',
          formatDate(reportData.startDate.toIso8601String()),
          font,
        ),
        _buildPdfInfoRow(
          'Ngày kết thúc',
          formatDate(reportData.endDate?.toIso8601String()),
          font,
        ),
        _buildPdfInfoRow(
          'Số lượng vật nuôi',
          '${reportData.quantityAnimal} con',
          font,
        ),
        _buildPdfInfoRow(
          'Số lượng thất thoát',
          '${reportData.deadQuantity} con',
          font,
        ),
      ],
    );
  }

  pw.Widget _buildPdfFinancialSection(
    ReportFarmingBatchDto reportData,
    pw.Font font,
    pw.Font fontBold,
  ) {
    return pw.Column(
      crossAxisAlignment: pw.CrossAxisAlignment.start,
      children: [
        pw.Text(
          'THÔNG TIN TÀI CHÍNH',
          style: pw.TextStyle(font: fontBold, fontSize: 14),
        ),
        pw.SizedBox(height: 10),
        _buildPdfInfoRow(
          'Tổng chi phí thức ăn',
          currencyFormat.format(reportData.totalFoodCost),
          font,
        ),
        _buildPdfInfoRow(
          'Tổng chi phí vaccine',
          currencyFormat.format(reportData.totalVaccineCost),
          font,
        ),
        _buildPdfInfoRow(
          'Tổng chi phí thuốc',
          currencyFormat.format(reportData.totalMedicineCost),
          font,
        ),
        _buildPdfInfoRow(
          'Tổng doanh thu thịt',
          currencyFormat.format(reportData.totalMeatSales),
          font,
        ),
        _buildPdfInfoRow(
          'Tổng doanh thu trứng',
          currencyFormat.format(reportData.totalEggSales),
          font,
        ),
        _buildPdfInfoRow(
          'Lợi nhuận',
          currencyFormat.format(reportData.netProfit),
          font,
          isHighlighted: true,
          isPositive: reportData.netProfit >= 0,
        ),

        // Add a simple pie chart representation of costs
        if (reportData.totalFoodCost +
                reportData.totalVaccineCost +
                reportData.totalMedicineCost >
            0)
          pw.Container(
            margin: const pw.EdgeInsets.only(top: 10),
            child: pw.Column(
              crossAxisAlignment: pw.CrossAxisAlignment.start,
              children: [
                pw.Text(
                  'Chi phí theo danh mục:',
                  style: pw.TextStyle(font: font, fontSize: 12),
                ),
                pw.SizedBox(height: 5),
                _buildPdfCostBreakdown(reportData, font),
              ],
            ),
          ),
      ],
    );
  }

  pw.Widget _buildPdfCostBreakdown(
    ReportFarmingBatchDto reportData,
    pw.Font font,
  ) {
    final totalCost =
        reportData.totalFoodCost +
        reportData.totalVaccineCost +
        reportData.totalMedicineCost;

    return pw.Column(
      children: [
        if (reportData.totalFoodCost > 0)
          _buildPdfCostBar(
            'Thức ăn',
            reportData.totalFoodCost,
            totalCost,
            PdfColors.blue,
            font,
          ),

        if (reportData.totalVaccineCost > 0)
          _buildPdfCostBar(
            'Vaccine',
            reportData.totalVaccineCost,
            totalCost,
            PdfColors.green,
            font,
          ),

        if (reportData.totalMedicineCost > 0)
          _buildPdfCostBar(
            'Thuốc',
            reportData.totalMedicineCost,
            totalCost,
            PdfColors.red,
            font,
          ),
      ],
    );
  }

  pw.Widget _buildPdfCostBar(
    String label,
    int value,
    int total,
    PdfColor color,
    pw.Font font,
  ) {
    final percentage = (value / total * 100);

    return pw.Container(
      margin: const pw.EdgeInsets.symmetric(vertical: 2),
      child: pw.Column(
        crossAxisAlignment: pw.CrossAxisAlignment.start,
        children: [
          pw.Row(
            mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
            children: [
              pw.Text(label, style: pw.TextStyle(font: font, fontSize: 10)),
              pw.Text(
                '${currencyFormat.format(value)} (${percentage.toStringAsFixed(1)}%)',
                style: pw.TextStyle(font: font, fontSize: 10),
              ),
            ],
          ),
          pw.SizedBox(height: 2),
          pw.Container(
            height: 10,
            decoration: pw.BoxDecoration(
              color: PdfColors.grey300,
              borderRadius: pw.BorderRadius.circular(5),
            ),
            child: pw.Row(
              children: [
                pw.Container(
                  width: percentage * 2, // Scale to make the bar more visible
                  decoration: pw.BoxDecoration(
                    color: color,
                    borderRadius: pw.BorderRadius.circular(5),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  pw.Widget _buildPdfGrowthStagesSection(
    List<GrowthStageReport> growthStages,
    pw.Font font,
    pw.Font fontBold,
  ) {
    return pw.Column(
      crossAxisAlignment: pw.CrossAxisAlignment.start,
      children: [
        pw.Text(
          'GIAI ĐOẠN PHÁT TRIỂN',
          style: pw.TextStyle(font: fontBold, fontSize: 14),
        ),
        pw.SizedBox(height: 10),
        ...growthStages.map((stage) {
          return pw.Container(
            margin: const pw.EdgeInsets.only(bottom: 10),
            padding: const pw.EdgeInsets.all(10),
            decoration: pw.BoxDecoration(
              border: pw.Border.all(color: PdfColors.grey300),
              borderRadius: pw.BorderRadius.circular(5),
            ),
            child: pw.Column(
              crossAxisAlignment: pw.CrossAxisAlignment.start,
              children: [
                pw.Text(
                  stage.stageName,
                  style: pw.TextStyle(font: fontBold, fontSize: 12),
                ),
                pw.Text(
                  '${formatDate(stage.ageStartDate.toIso8601String())} - ${formatDate(stage.ageEndDate.toIso8601String())}',
                  style: pw.TextStyle(font: font, fontSize: 10),
                ),
                pw.SizedBox(height: 5),
                _buildPdfInfoRow(
                  'Cân nặng thực tế',
                  '${stage.weightAnimal} kg',
                  font,
                ),
                _buildPdfInfoRow(
                  'Cân nặng dự kiến',
                  '${stage.weightAnimalExpect} kg',
                  font,
                ),
                _buildPdfInfoRow('Số lượng', '${stage.quantity} con', font),
                _buildPdfInfoRow(
                  'Số lượng đã chết',
                  '${stage.deadQuantity} con',
                  font,
                ),

                if (stage.foods.isNotEmpty) ...[
                  pw.SizedBox(height: 5),
                  pw.Text(
                    'Thức ăn sử dụng:',
                    style: pw.TextStyle(font: fontBold, fontSize: 10),
                  ),
                  ...stage.foods.map((food) {
                    return _buildPdfInfoRow(
                      food.foodType,
                      '${food.totalWeightUsed} kg',
                      font,
                    );
                  }).toList(),
                ],

                if (stage.vaccines.isNotEmpty) ...[
                  pw.SizedBox(height: 5),
                  pw.Text(
                    'Vaccine đã tiêm:',
                    style: pw.TextStyle(font: fontBold, fontSize: 10),
                  ),
                  ...stage.vaccines.map((vaccine) {
                    return _buildPdfInfoRow(
                      vaccine.vaccineName,
                      '${formatDate(vaccine.dateAdministered.toIso8601String())} - ${currencyFormat.format(vaccine.totalPrice)}',
                      font,
                    );
                  }).toList(),
                ],
              ],
            ),
          );
        }).toList(),
      ],
    );
  }

  pw.Widget _buildPdfVaccinesSection(
    List<dynamic> vaccines,
    pw.Font font,
    pw.Font fontBold,
  ) {
    return pw.Column(
      crossAxisAlignment: pw.CrossAxisAlignment.start,
      children: [
        pw.Text(
          'LỊCH SỬ TIÊM VACCINE',
          style: pw.TextStyle(font: fontBold, fontSize: 14),
        ),
        pw.SizedBox(height: 10),
        pw.Table(
          border: pw.TableBorder.all(color: PdfColors.grey300),
          children: [
            // Header
            pw.TableRow(
              decoration: const pw.BoxDecoration(color: PdfColors.grey200),
              children: [
                _buildPdfTableCell('Tên Vaccine', font, fontBold: true),
                _buildPdfTableCell('Ngày tiêm', font, fontBold: true),
                _buildPdfTableCell(
                  'Chi phí',
                  font,
                  fontBold: true,
                  align: pw.TextAlign.right,
                ),
              ],
            ),
            // Data rows
            ...vaccines.map((vaccine) {
              return pw.TableRow(
                children: [
                  _buildPdfTableCell(vaccine.vaccineName, font),
                  _buildPdfTableCell(
                    formatDate(vaccine.dateAdministered.toIso8601String()),
                    font,
                  ),
                  _buildPdfTableCell(
                    currencyFormat.format(vaccine.totalPrice),
                    font,
                    align: pw.TextAlign.right,
                  ),
                ],
              );
            }).toList(),
          ],
        ),
      ],
    );
  }

  pw.Widget _buildPdfFoodSection(
    List<FoodUsageDetail> foods,
    pw.Font font,
    pw.Font fontBold,
  ) {
    // Calculate total food used
    double totalFood = 0;
    for (var food in foods) {
      totalFood += food.totalWeightUsed;
    }

    return pw.Column(
      crossAxisAlignment: pw.CrossAxisAlignment.start,
      children: [
        pw.Text(
          'CHI TIẾT THỨC ĂN',
          style: pw.TextStyle(font: fontBold, fontSize: 14),
        ),
        pw.SizedBox(height: 10),
        pw.Text(
          'Tổng lượng thức ăn đã sử dụng: ${totalFood.toStringAsFixed(1)} kg',
          style: pw.TextStyle(font: font, fontSize: 12),
        ),
        pw.SizedBox(height: 10),
        pw.Table(
          border: pw.TableBorder.all(color: PdfColors.grey300),
          children: [
            // Header
            pw.TableRow(
              decoration: const pw.BoxDecoration(color: PdfColors.grey200),
              children: [
                _buildPdfTableCell('Loại thức ăn', font, fontBold: true),
                _buildPdfTableCell(
                  'Khối lượng',
                  font,
                  fontBold: true,
                  align: pw.TextAlign.right,
                ),
                _buildPdfTableCell(
                  'Tỷ lệ',
                  font,
                  fontBold: true,
                  align: pw.TextAlign.right,
                ),
              ],
            ),
            // Data rows
            ...foods.map((food) {
              final percentage = (food.totalWeightUsed / totalFood * 100);
              return pw.TableRow(
                children: [
                  _buildPdfTableCell(food.foodType, font),
                  _buildPdfTableCell(
                    '${food.totalWeightUsed} kg',
                    font,
                    align: pw.TextAlign.right,
                  ),
                  _buildPdfTableCell(
                    '${percentage.toStringAsFixed(1)}%',
                    font,
                    align: pw.TextAlign.right,
                  ),
                ],
              );
            }).toList(),
          ],
        ),
      ],
    );
  }

  pw.Widget _buildPdfPrescriptionsSection(
    List<PrescriptionDetail> prescriptions,
    pw.Font font,
    pw.Font fontBold,
  ) {
    return pw.Column(
      crossAxisAlignment: pw.CrossAxisAlignment.start,
      children: [
        pw.Text(
          'CHI TIẾT BỆNH LÝ',
          style: pw.TextStyle(font: fontBold, fontSize: 14),
        ),
        pw.SizedBox(height: 10),
        ...prescriptions.map((prescription) {
          return pw.Container(
            margin: const pw.EdgeInsets.only(bottom: 10),
            padding: const pw.EdgeInsets.all(10),
            decoration: pw.BoxDecoration(
              border: pw.Border.all(color: PdfColors.grey300),
              borderRadius: pw.BorderRadius.circular(5),
            ),
            child: pw.Column(
              crossAxisAlignment: pw.CrossAxisAlignment.start,
              children: [
                pw.Text(
                  prescription.diseaseName != 'Unknown'
                      ? prescription.diseaseName
                      : 'Bệnh chưa xác định',
                  style: pw.TextStyle(font: fontBold, fontSize: 12),
                ),
                pw.SizedBox(height: 5),
                _buildPdfInfoRow(
                  'Chuẩn đoán',
                  prescription.diagnosis ?? 'Chưa có chuẩn đoán',
                  font,
                ),
                _buildPdfInfoRow(
                  'Số lượng bị ảnh hưởng',
                  '${prescription.affectedQuantity} con',
                  font,
                ),
                _buildPdfInfoRow(
                  'Chi phí điều trị',
                  currencyFormat.format(prescription.prescriptionPrice),
                  font,
                ),

                pw.SizedBox(height: 5),
                pw.Text(
                  'Triệu chứng:',
                  style: pw.TextStyle(font: fontBold, fontSize: 10),
                ),
                ...prescription.symptoms.map((symptom) {
                  return pw.Padding(
                    padding: const pw.EdgeInsets.only(left: 10),
                    child: pw.Row(
                      crossAxisAlignment: pw.CrossAxisAlignment.start,
                      children: [
                        pw.Text(
                          '• ',
                          style: pw.TextStyle(font: font, fontSize: 10),
                        ),
                        pw.Expanded(
                          child: pw.Text(
                            symptom,
                            style: pw.TextStyle(font: font, fontSize: 10),
                          ),
                        ),
                      ],
                    ),
                  );
                }).toList(),
              ],
            ),
          );
        }).toList(),
      ],
    );
  }

  // Thêm phương thức này
  pw.Widget _buildPdfMeatSalesSection(
    List<AnimalMeatSaleDto> meatSales,
    pw.Font font,
    pw.Font fontBold,
  ) {
    final totalQuantity = meatSales.fold(0, (sum, sale) => sum + sale.quantity);
    final totalWeight = meatSales.fold(0.0, (sum, sale) => sum + sale.weight);
    final totalRevenue = meatSales.fold(0, (sum, sale) => sum + sale.total);

    return pw.Column(
      crossAxisAlignment: pw.CrossAxisAlignment.start,
      children: [
        pw.Text(
          'CHI TIẾT BÁN THỊT',
          style: pw.TextStyle(font: fontBold, fontSize: 14),
        ),
        pw.SizedBox(height: 10),
        pw.Container(
          padding: const pw.EdgeInsets.all(10),
          decoration: pw.BoxDecoration(
            border: pw.Border.all(color: PdfColors.grey300),
            borderRadius: pw.BorderRadius.circular(5),
          ),
          child: pw.Column(
            crossAxisAlignment: pw.CrossAxisAlignment.start,
            children: [
              pw.Text(
                'Tổng kết',
                style: pw.TextStyle(font: fontBold, fontSize: 12),
              ),
              pw.SizedBox(height: 5),
              _buildPdfInfoRow(
                'Tổng số lượng đã bán',
                '$totalQuantity con',
                font,
              ),
              _buildPdfInfoRow('Tổng khối lượng', '$totalWeight kg', font),
              _buildPdfInfoRow(
                'Tổng doanh thu',
                currencyFormat.format(totalRevenue),
                font,
                isHighlighted: true,
                isPositive: true,
              ),
            ],
          ),
        ),
        pw.SizedBox(height: 10),
        pw.Text(
          'Chi tiết các đợt bán:',
          style: pw.TextStyle(font: fontBold, fontSize: 12),
        ),
        pw.SizedBox(height: 5),
        pw.Table(
          border: pw.TableBorder.all(color: PdfColors.grey300),
          children: [
            // Header
            pw.TableRow(
              decoration: const pw.BoxDecoration(color: PdfColors.grey200),
              children: [
                _buildPdfTableCell('Ngày bán', font, fontBold: true),
                _buildPdfTableCell(
                  'Số lượng',
                  font,
                  fontBold: true,
                  align: pw.TextAlign.right,
                ),
                _buildPdfTableCell(
                  'Khối lượng (kg)',
                  font,
                  fontBold: true,
                  align: pw.TextAlign.right,
                ),
                _buildPdfTableCell(
                  'Đơn giá',
                  font,
                  fontBold: true,
                  align: pw.TextAlign.right,
                ),
                _buildPdfTableCell(
                  'Tổng tiền',
                  font,
                  fontBold: true,
                  align: pw.TextAlign.right,
                ),
              ],
            ),
            // Data rows
            ...meatSales.map((sale) {
              return pw.TableRow(
                children: [
                  _buildPdfTableCell(formatDate(sale.saleDate), font),
                  _buildPdfTableCell(
                    '${sale.quantity} con',
                    font,
                    align: pw.TextAlign.right,
                  ),
                  _buildPdfTableCell(
                    '${sale.weight}',
                    font,
                    align: pw.TextAlign.right,
                  ),
                  _buildPdfTableCell(
                    currencyFormat.format(sale.unitPrice),
                    font,
                    align: pw.TextAlign.right,
                  ),
                  _buildPdfTableCell(
                    currencyFormat.format(sale.total),
                    font,
                    align: pw.TextAlign.right,
                  ),
                ],
              );
            }).toList(),
          ],
        ),
      ],
    );
  }

  pw.Widget _buildPdfTableCell(
    String text,
    pw.Font font, {
    bool fontBold = false,
    pw.TextAlign align = pw.TextAlign.left,
  }) {
    return pw.Container(
      padding: const pw.EdgeInsets.all(5),
      child: pw.Text(
        text,
        textAlign: align,
        style: pw.TextStyle(
          font: fontBold ? font : font,
          fontSize: 10,
          fontWeight: fontBold ? pw.FontWeight.bold : pw.FontWeight.normal,
        ),
      ),
    );
  }

  pw.Widget _buildPdfInfoRow(
    String label,
    String value,
    pw.Font font, {
    bool isHighlighted = false,
    bool isPositive = true,
  }) {
    return pw.Padding(
      padding: const pw.EdgeInsets.only(bottom: 5),
      child: pw.Row(
        crossAxisAlignment: pw.CrossAxisAlignment.start,
        children: [
          pw.Expanded(
            flex: 4,
            child: pw.Text(
              label,
              style: pw.TextStyle(
                font: font,
                fontSize: 10,
                color: PdfColors.grey700,
              ),
            ),
          ),
          pw.Expanded(
            flex: 6,
            child: pw.Text(
              value,
              style: pw.TextStyle(
                font: font,
                fontSize: 10,
                fontWeight:
                    isHighlighted ? pw.FontWeight.bold : pw.FontWeight.normal,
                color:
                    isHighlighted
                        ? (isPositive ? PdfColors.green : PdfColors.red)
                        : PdfColors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildOverviewTab(ReportFarmingBatchDto data) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildInfoCard('Thông tin chung', [
            _buildInfoRow('Tên vụ nuôi', data.farmingBatchName),
            _buildInfoRow('Chuồng', data.cageName),
            _buildInfoRow(
              'Ngày bắt đầu',
              formatDate(data.startDate.toIso8601String()),
            ),
            _buildInfoRow(
              'Ngày kết thúc',
              formatDate(data.endDate?.toIso8601String()),
            ),
            _buildInfoRow('Số lượng vật nuôi', '${data.quantityAnimal} con'),
            _buildInfoRow('Số lượng thất thoát', '${data.deadQuantity} con'),
          ]),
          const SizedBox(height: 16),
          _buildInfoCard('Thông tin tài chính', [
            _buildInfoRow(
              'Tổng chi phí thức ăn',
              currencyFormat.format(data.totalFoodCost),
            ),
            _buildInfoRow(
              'Tổng chi phí vaccine',
              currencyFormat.format(data.totalVaccineCost),
            ),
            _buildInfoRow(
              'Tổng chi phí thuốc',
              currencyFormat.format(data.totalMedicineCost),
            ),
            _buildInfoRow(
              'Tổng doanh thu thịt',
              currencyFormat.format(data.totalMeatSales),
            ),
            _buildInfoRow(
              'Tổng doanh thu trứng',
              currencyFormat.format(data.totalEggSales),
            ),
            _buildInfoRow(
              'Lợi nhuận',
              currencyFormat.format(data.netProfit),
              isHighlighted: true,
            ),
          ]),
          const SizedBox(height: 16),
          _buildFinancialChart(data),
        ],
      ),
    );
  }

  Widget _buildDeadPoultryLogsTab(List<DeadPoultryLogDto> logs) {
    if (logs.isEmpty) {
      return const Center(child: Text('Không có dữ liệu thất thoát'));
    }

    // Calculate total dead quantity
    int totalDeadQuantity = logs.fold(0, (sum, log) => sum + log.quantity);

    // Sort logs by date (newest first)
    final sortedLogs = List<DeadPoultryLogDto>.from(logs)
      ..sort((a, b) => b.date.compareTo(a.date));

    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        Card(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Tổng số vật nuôi thất thoát',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '$totalDeadQuantity con',
                      style: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.red,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 16),
        Card(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Chi tiết nhật ký thất thoát',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 16),
                ListView.separated(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: sortedLogs.length,
                  separatorBuilder: (context, index) => const Divider(),
                  itemBuilder: (context, index) {
                    final log = sortedLogs[index];
                    return ListTile(
                      leading: const CircleAvatar(
                        backgroundColor: Colors.red,
                        child: Icon(
                          Icons.warning_amber_rounded,
                          color: Colors.white,
                        ),
                      ),
                      title: Text('${log.quantity} con thất thoát'),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Ngày: ${formatDate(log.date)}'),
                          if (log.note.isNotEmpty) Text('Ghi chú: ${log.note}'),
                        ],
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 16),
        _buildDeadPoultryTimelineChart(sortedLogs),
      ],
    );
  }

  // Add a chart to visualize dead poultry over time
  Widget _buildDeadPoultryTimelineChart(List<DeadPoultryLogDto> logs) {
    if (logs.length < 2) {
      return const SizedBox.shrink();
    }

    // Reverse logs order for timeline (oldest first)
    final timelineLogs = logs.reversed.toList();

    return SizedBox(
      height: 300,
      child: Card(
        elevation: 4,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Biểu đồ thất thoát theo thời gian',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16),
              Expanded(
                child: LineChart(
                  LineChartData(
                    gridData: FlGridData(show: true),
                    titlesData: FlTitlesData(
                      leftTitles: AxisTitles(
                        sideTitles: SideTitles(
                          showTitles: true,
                          getTitlesWidget: (value, meta) {
                            return Text(
                              '${value.toInt()} con',
                              style: const TextStyle(fontSize: 10),
                            );
                          },
                          reservedSize: 40,
                        ),
                      ),
                      bottomTitles: AxisTitles(
                        sideTitles: SideTitles(
                          showTitles: true,
                          getTitlesWidget: (value, meta) {
                            if (value.toInt() >= 0 &&
                                value.toInt() < timelineLogs.length) {
                              return Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Text(
                                  dateFormat.format(
                                    DateTime.parse(
                                      timelineLogs[value.toInt()].date,
                                    ),
                                  ),
                                  style: const TextStyle(fontSize: 8),
                                ),
                              );
                            }
                            return const Text('');
                          },
                          reservedSize: 30,
                        ),
                      ),
                      rightTitles: AxisTitles(
                        sideTitles: SideTitles(showTitles: false),
                      ),
                      topTitles: AxisTitles(
                        sideTitles: SideTitles(showTitles: false),
                      ),
                    ),
                    borderData: FlBorderData(show: true),
                    lineBarsData: [
                      LineChartBarData(
                        spots: List.generate(
                          timelineLogs.length,
                          (index) => FlSpot(
                            index.toDouble(),
                            timelineLogs[index].quantity.toDouble(),
                          ),
                        ),
                        isCurved: true,
                        color: Colors.red,
                        barWidth: 3,
                        dotData: FlDotData(show: true),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildFinancialChart(ReportFarmingBatchDto data) {
    // Only show chart if there are costs
    final totalCosts =
        data.totalFoodCost + data.totalVaccineCost + data.totalMedicineCost;
    if (totalCosts <= 0) {
      return const SizedBox.shrink();
    }

    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.5,
      child: Card(
        elevation: 4,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Phân tích chi phí',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.15),
              Expanded(
                child: PieChart(
                  PieChartData(
                    sections: [
                      if (data.totalFoodCost > 0)
                        PieChartSectionData(
                          value: data.totalFoodCost.toDouble(),
                          title:
                              '${(data.totalFoodCost / totalCosts * 100).toStringAsFixed(1)}%',
                          color: Colors.blue,
                          radius: 100,
                          titleStyle: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      if (data.totalVaccineCost > 0)
                        PieChartSectionData(
                          value: data.totalVaccineCost.toDouble(),
                          title:
                              '${(data.totalVaccineCost / totalCosts * 100).toStringAsFixed(1)}%',
                          color: Colors.green,
                          radius: 100,
                          titleStyle: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      if (data.totalMedicineCost > 0)
                        PieChartSectionData(
                          value: data.totalMedicineCost.toDouble(),
                          title:
                              '${(data.totalMedicineCost / totalCosts * 100).toStringAsFixed(1)}%',
                          color: Colors.red,
                          radius: 100,
                          titleStyle: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                    ],
                    centerSpaceRadius: 20,
                    sectionsSpace: 2,
                  ),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.15),
              Column(
                children: [
                  _buildLegendItem(
                    'Thức ăn',
                    Colors.blue,
                    currencyFormat.format(data.totalFoodCost),
                  ),
                  const SizedBox(width: 16),
                  _buildLegendItem(
                    'Vaccine',
                    Colors.green,
                    currencyFormat.format(data.totalVaccineCost),
                  ),
                  const SizedBox(width: 16),
                  _buildLegendItem(
                    'Thuốc',
                    Colors.red,
                    currencyFormat.format(data.totalMedicineCost),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildLegendItem(String title, Color color, [String? value]) {
    return Row(
      children: [
        Container(width: 16, height: 16, color: color),
        const SizedBox(width: 4),
        Text(value != null ? '$title: $value' : title),
      ],
    );
  }

  Widget _buildGrowthStagesTab(List<GrowthStageReport> growthStages) {
    if (growthStages.isEmpty) {
      return const Center(child: Text('Không có dữ liệu giai đoạn phát triển'));
    }

    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: growthStages.length,
      itemBuilder: (context, index) {
        final stage = growthStages[index];
        return Card(
          margin: const EdgeInsets.only(bottom: 16),
          child: ExpansionTile(
            title: Text(
              stage.stageName,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              '${formatDate(stage.ageStartDate.toIso8601String())} - ${formatDate(stage.ageEndDate.toIso8601String())}',
            ),
            children: [
              Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildInfoRow(
                      'Cân nặng thực tế',
                      '${stage.weightAnimal} kg',
                    ),
                    _buildInfoRow(
                      'Cân nặng dự kiến',
                      '${stage.weightAnimalExpect} kg',
                    ),
                    _buildInfoRow('Số lượng', '${stage.quantity} con'),
                    _buildInfoRow(
                      'Số lượng đã chết',
                      '${stage.deadQuantity} con',
                    ),
                    if (stage.foods.isNotEmpty) ...[
                      const Divider(),
                      const Text(
                        'Thức ăn sử dụng:',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      ...stage.foods.map((food) {
                        return _buildInfoRow(
                          food.foodType,
                          '${food.totalWeightUsed} kg',
                        );
                      }),
                    ],
                    if (stage.vaccines.isNotEmpty) ...[
                      const Divider(),
                      const Text(
                        'Vaccine đã tiêm:',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      ...stage.vaccines.map((vaccine) {
                        return ListTile(
                          title: Text(vaccine.vaccineName),
                          subtitle: Text(
                            'Ngày tiêm: ${formatDate(vaccine.dateAdministered.toIso8601String())}',
                          ),
                          trailing: Text(
                            currencyFormat.format(vaccine.totalPrice),
                          ),
                        );
                      }),
                    ],
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _buildVaccinesTab(ReportFarmingBatchDto data) {
    final vaccines = data.vaccineDetails;

    if (vaccines.isEmpty) {
      return const Center(child: Text('Không có dữ liệu vaccine'));
    }

    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        if (data.growthStageReports.length > 1)
          _buildWeightGrowthChart(data.growthStageReports),
        const SizedBox(height: 16),
        Card(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Lịch sử tiêm vaccine',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 16),
                ...vaccines.map((vaccine) {
                  return ListTile(
                    leading: const CircleAvatar(
                      child: Icon(Icons.medical_services),
                    ),
                    title: Text(vaccine.vaccineName),
                    subtitle: Text(
                      'Ngày tiêm: ${formatDate(vaccine.dateAdministered.toIso8601String())}',
                    ),
                    trailing: Text(
                      currencyFormat.format(vaccine.totalPrice),
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                  );
                }),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildWeightGrowthChart(List<GrowthStageReport> growthStages) {
    if (growthStages.length < 2) {
      return const SizedBox.shrink();
    }

    return SizedBox(
      height: 300,
      child: Card(
        elevation: 4,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Biểu đồ tăng trưởng',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16),
              Expanded(
                child: LineChart(
                  LineChartData(
                    gridData: FlGridData(show: true),
                    titlesData: FlTitlesData(
                      leftTitles: AxisTitles(
                        sideTitles: SideTitles(
                          showTitles: true,
                          reservedSize: 40,
                        ),
                      ),
                      bottomTitles: AxisTitles(
                        sideTitles: SideTitles(
                          showTitles: true,
                          reservedSize: 30,
                          getTitlesWidget: (value, meta) {
                            if (value.toInt() < growthStages.length) {
                              return Text(
                                growthStages[value.toInt()].stageName
                                    .split(' ')
                                    .last,
                                style: const TextStyle(fontSize: 10),
                              );
                            }
                            return const Text('');
                          },
                        ),
                      ),
                    ),
                    borderData: FlBorderData(show: true),
                    lineBarsData: [
                      LineChartBarData(
                        spots: List.generate(
                          growthStages.length,
                          (index) => FlSpot(
                            index.toDouble(),
                            growthStages[index].weightAnimal,
                          ),
                        ),
                        isCurved: true,
                        color: Colors.blue,
                        barWidth: 4,
                        dotData: FlDotData(show: true),
                      ),
                      LineChartBarData(
                        spots: List.generate(
                          growthStages.length,
                          (index) => FlSpot(
                            index.toDouble(),
                            growthStages[index].weightAnimalExpect,
                          ),
                        ),
                        isCurved: true,
                        color: Colors.green,
                        barWidth: 4,
                        dotData: FlDotData(show: true),
                        dashArray: [5, 5],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _buildLegendItem('Cân nặng thực tế', Colors.blue),
                  const SizedBox(width: 16),
                  _buildLegendItem('Cân nặng dự kiến', Colors.green),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildFoodTab(List<FoodUsageDetail> foods) {
    if (foods.isEmpty) {
      return const Center(child: Text('Không có dữ liệu thức ăn'));
    }

    // Calculate total food used
    double totalFood = 0;
    for (var food in foods) {
      totalFood += food.totalWeightUsed / 1000; // Convert from grams to kg
    }

    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        Card(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Tổng lượng thức ăn đã sử dụng',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '${totalFood.toStringAsFixed(1)} kg',
                      style: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.green,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 16),
        Card(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Chi tiết thức ăn theo loại',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 16),
                ...foods.map((food) {
                  final foodInKg =
                      food.totalWeightUsed / 1000; // Convert from grams to kg
                  final percentage = (foodInKg / totalFood * 100);
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildInfoRow(
                        food.foodType,
                        '${foodInKg.toStringAsFixed(1)} kg',
                      ),
                      const SizedBox(height: 8),
                      LinearProgressIndicator(
                        value: percentage / 100,
                        minHeight: 10,
                        backgroundColor: Colors.grey[300],
                      ),
                      Text('${percentage.toStringAsFixed(1)}%'),
                      const SizedBox(height: 16),
                    ],
                  );
                }),
              ],
            ),
          ),
        ),
        const SizedBox(height: 16),
        BlocBuilder<ReportFarmingBatchCubit, ReportFarmingBatchState>(
          builder: (context, state) {
            return state.maybeWhen(
              getReportFarmingBatchSuccess:
                  (reportData) =>
                      reportData.growthStageReports.length > 1
                          ? _buildFoodConsumptionChart(
                            reportData.growthStageReports,
                          )
                          : const SizedBox.shrink(),
              orElse: () => const SizedBox.shrink(),
            );
          },
        ),
      ],
    );
  }

  Widget _buildFoodConsumptionChart(List<GrowthStageReport> growthStages) {
    if (growthStages.length < 2) {
      return const SizedBox.shrink();
    }

    return SizedBox(
      height: 300,
      child: Card(
        elevation: 4,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Lượng thức ăn theo giai đoạn',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16),
              Expanded(
                child: BarChart(
                  BarChartData(
                    alignment: BarChartAlignment.spaceAround,
                    maxY:
                        growthStages.fold<double>(0, (max, stage) {
                          final stageTotal = stage.foods.fold<double>(
                            0,
                            (sum, food) =>
                                sum +
                                food.totalWeightUsed /
                                    1000, // Convert from grams to kg
                          );
                          return stageTotal > max ? stageTotal : max;
                        }) *
                        1.2,
                    barGroups: List.generate(growthStages.length, (index) {
                      final stage = growthStages[index];
                      final stageTotal = stage.foods.fold<double>(
                        0,
                        (sum, food) =>
                            sum +
                            food.totalWeightUsed /
                                1000, // Convert from grams to kg
                      );

                      return BarChartGroupData(
                        x: index,
                        barRods: [
                          BarChartRodData(
                            toY: stageTotal,
                            color: Colors.blue,
                            width: 20,
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(4),
                              topRight: Radius.circular(4),
                            ),
                          ),
                        ],
                      );
                    }),
                    titlesData: FlTitlesData(
                      bottomTitles: AxisTitles(
                        sideTitles: SideTitles(
                          showTitles: true,
                          getTitlesWidget: (value, meta) {
                            if (value.toInt() < growthStages.length) {
                              return Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Text(
                                  growthStages[value.toInt()].stageName,
                                  style: const TextStyle(fontSize: 10),
                                ),
                              );
                            }
                            return const Text('');
                          },
                          reservedSize: 30,
                        ),
                      ),
                      leftTitles: AxisTitles(
                        sideTitles: SideTitles(
                          showTitles: true,
                          reservedSize: 40,
                          getTitlesWidget: (value, meta) {
                            return Text(
                              '${value.toStringAsFixed(1)} kg', // Format with 1 decimal place
                              style: const TextStyle(fontSize: 10),
                            );
                          },
                        ),
                      ),
                    ),
                    borderData: FlBorderData(show: false),
                    gridData: FlGridData(show: true),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildPrescriptionsTab(List<PrescriptionDetail> prescriptions) {
    if (prescriptions.isEmpty) {
      return const Center(child: Text('Không có dữ liệu bệnh lý'));
    }

    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: prescriptions.length,
      itemBuilder: (context, index) {
        final prescription = prescriptions[index];
        return Card(
          margin: const EdgeInsets.only(bottom: 16),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const Icon(Icons.medical_services, color: Colors.red),
                    const SizedBox(width: 8),
                    Text(
                      prescription.diseaseName != 'Unknown'
                          ? prescription.diseaseName
                          : 'Bệnh chưa xác định',
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                _buildInfoRow(
                  'Chuẩn đoán',
                  prescription.diagnosis ?? 'Chưa có chuẩn đoán',
                ),
                _buildInfoRow(
                  'Số lượng bị ảnh hưởng',
                  '${prescription.affectedQuantity} con',
                ),
                _buildInfoRow(
                  'Chi phí điều trị',
                  currencyFormat.format(prescription.prescriptionPrice),
                ),
                const SizedBox(height: 8),
                const Text(
                  'Triệu chứng:',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                ...prescription.symptoms.map((symptom) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 16, top: 4),
                    child: Row(
                      children: [
                        const Icon(Icons.circle, size: 8),
                        const SizedBox(width: 8),
                        Expanded(child: Text(symptom)),
                      ],
                    ),
                  );
                }),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buildMeatSalesTab(List<AnimalMeatSaleDto> meatSales) {
    if (meatSales.isEmpty) {
      return const Center(child: Text('Không có dữ liệu bán thịt'));
    }

    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        Card(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Tổng kết bán thịt',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 16),
                _buildInfoRow(
                  'Tổng số lượng đã bán',
                  '${meatSales.fold(0, (sum, sale) => sum + sale.quantity)} con',
                ),
                _buildInfoRow(
                  'Tổng khối lượng',
                  '${meatSales.fold(0.0, (sum, sale) => sum + sale.weight)} kg',
                ),
                _buildInfoRow(
                  'Tổng doanh thu',
                  currencyFormat.format(
                    meatSales.fold(0, (sum, sale) => sum + sale.total),
                  ),
                  isHighlighted: true,
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 16),
        Card(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Chi tiết các đợt bán thịt',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 16),
                ...meatSales.map((sale) => _buildMeatSaleItem(sale)).toList(),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildMeatSaleItem(AnimalMeatSaleDto sale) {
    return Card(
      margin: const EdgeInsets.only(bottom: 8),
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Ngày bán: ${formatDate(sale.saleDate)}',
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  currencyFormat.format(sale.total),
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.green,
                  ),
                ),
              ],
            ),
            const Divider(),
            _buildInfoRow('Số lượng', '${sale.quantity} con'),
            _buildInfoRow('Khối lượng', '${sale.weight} kg'),
            _buildInfoRow(
              'Đơn giá',
              currencyFormat.format(sale.unitPrice) + '/kg',
            ),
            _buildInfoRow('Loại bán', sale.saleTypeName),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoCard(String title, List<Widget> children) {
    return Card(
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            ...children,
          ],
        ),
      ),
    );
  }

  Widget _buildInfoRow(
    String label,
    String value, {
    bool isHighlighted = false,
  }) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 4,
            child: Text(label, style: const TextStyle(color: Colors.grey)),
          ),
          Expanded(
            flex: 6,
            child: Text(
              value,
              style: TextStyle(
                fontWeight: isHighlighted ? FontWeight.bold : FontWeight.normal,
                color:
                    isHighlighted
                        ? (value.contains('-') ? Colors.red : Colors.green)
                        : null,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
