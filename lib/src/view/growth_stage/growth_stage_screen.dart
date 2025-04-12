import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:smart_farm_admin/src/model/dto/farming_batch/growth_stage_detail/growth_stage_detail.dart';

class GrowthStageScreen extends StatefulWidget {
  final GrowthStageDetail growthStageDetail;
  const GrowthStageScreen({super.key, required this.growthStageDetail});

  @override
  State<GrowthStageScreen> createState() => _GrowthStageScreenState();
}

class _GrowthStageScreenState extends State<GrowthStageScreen> {
  String _getStatusText(String status) {
    switch (status) {
      case 'Completed':
        return 'Đã hoàn thành';
      case 'Active':
        return 'Đang nuôi';
      default:
        return 'Không xác định';
    }
  }

  @override
  Widget build(BuildContext context) {
    final stage = widget.growthStageDetail;
    DateTime startDate = DateTime.parse(stage.ageStartDate);
    DateTime endDate = DateTime.parse(stage.ageEndDate);
    String formattedStartDate = DateFormat('dd/MM/yyyy').format(startDate);
    String formattedEndDate = DateFormat('dd/MM/yyyy').format(endDate);
    int durationDays = endDate.difference(startDate).inDays;

    return Scaffold(
      appBar: AppBar(title: Text(stage.name)),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header: Sử dụng Icon đại diện thay cho animation
            _buildHeaderSection(stage),
            const SizedBox(height: 16),
            // Thông tin thời gian phát triển
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
                    const Text(
                      "Thời gian phát triển",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 12),
                    Row(
                      children: [
                        const Icon(
                          Icons.calendar_today,
                          size: 16,
                          color: Colors.green,
                        ),
                        const SizedBox(width: 8),
                        Text(
                          "Bắt đầu: $formattedStartDate",
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    Row(
                      children: [
                        const Icon(Icons.event, size: 16, color: Colors.green),
                        const SizedBox(width: 8),
                        Text(
                          "Kết thúc: $formattedEndDate",
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    Text(
                      "Tổng số ngày: $durationDays ngày",
                      style: TextStyle(fontSize: 16, color: Colors.grey[700]),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16),
            // Thông tin chi tiết của giai đoạn
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
                    const Text(
                      "Thông tin giai đoạn",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 12),
                    // Số lượng và số lượng chết
                    Row(
                      children: [
                        _buildInfoItem(
                          icon: Icons.numbers,
                          label: "Số lượng",
                          value: "${stage.quantity} con",
                        ),
                        const SizedBox(width: 12),
                        _buildInfoItem(
                          icon: Icons.warning,
                          label: "Số chết",
                          value: "${stage.deadQuantity}",
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),
                    // Loại thức ăn và trọng lượng động vật
                    Row(
                      children: [
                        _buildInfoItem(
                          icon: Icons.food_bank,
                          label: "Loại thức ăn",
                          value: stage.foodType,
                        ),
                        const SizedBox(width: 12),
                        _buildInfoItem(
                          icon: Icons.line_weight,
                          label: "Trọng lượng",
                          value: "${stage.weightAnimal} kg",
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),
                    // Khuyến nghị mỗi phiên và cơ số khối lượng
                    Row(
                      children: [
                        _buildInfoItem(
                          icon: Icons.access_time,
                          label: "Khuyến nghị mỗi phiên",
                          value: "${stage.recommendedWeightPerSession} kg",
                        ),
                        const SizedBox(width: 12),
                        _buildInfoItem(
                          icon: Icons.fitness_center,
                          label: "Cơ số khối lượng",
                          value: "${stage.weightBasedOnBodyMass} kg",
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),
                    // Số lượng bị ảnh hưởng
                    Row(
                      children: [
                        _buildInfoItem(
                          icon: Icons.error_outline,
                          label: "Số đang cách ly",
                          value: "${stage.affectQuantity}",
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Widget hiển thị thông tin theo dạng icon - label - value
  Widget _buildInfoItem({
    required IconData icon,
    required String label,
    required String value,
  }) {
    return Expanded(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, color: Colors.green, size: 20),
          const SizedBox(width: 4),
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  label,
                  style: TextStyle(fontSize: 12, color: Colors.grey[600]),
                ),
                const SizedBox(height: 2),
                Text(
                  value,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Header section với Icon đại diện và thông tin tên, trạng thái
  Widget _buildHeaderSection(GrowthStageDetail stage) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.grey[50],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          // Icon đại diện cho con gà
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Colors.green[100],
              shape: BoxShape.circle,
            ),
            child: const Icon(Icons.pets, size: 48, color: Colors.green),
          ),
          const SizedBox(width: 16),
          // Thông tin giai đoạn: Tên và trạng thái
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  stage.name,
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 6,
                  ),
                  decoration: BoxDecoration(
                    color:
                        stage.status == 'Completed'
                            ? Colors.green
                            : Colors.orange,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Text(
                    _getStatusText(stage.status),
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
