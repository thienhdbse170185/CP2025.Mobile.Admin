import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:smart_farm_admin/src/core/router.dart';
import 'package:smart_farm_admin/src/core/utils/date_util.dart';
import 'package:smart_farm_admin/src/core/utils/time_util.dart';
import 'package:smart_farm_admin/src/model/dto/merged_farming_batch/merged_farming_batch_details/merged_farming_batch_details_dto.dart';

class MergedFarmingBatchScreen extends StatefulWidget {
  final List<MergedFarmingBatchDetailsDto> mergedFarmingBatch;
  const MergedFarmingBatchScreen({super.key, required this.mergedFarmingBatch});

  @override
  State<MergedFarmingBatchScreen> createState() =>
      _MergedFarmingBatchScreenState();
}

class _MergedFarmingBatchScreenState extends State<MergedFarmingBatchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Danh sách các chuồng'),
            Row(
              children: [
                const Icon(Icons.access_time, size: 12, color: Colors.grey),
                const SizedBox(width: 4),
                Text(
                  'Thời gian: ${CustomDateUtils.formatDate(TimeUtils.customNow())}',
                  style: const TextStyle(fontSize: 12, color: Colors.grey),
                ),
              ],
            ),
          ],
        ),
      ),
      body:
          widget.mergedFarmingBatch.isEmpty
              ? const Center(child: Text('Thông tin trống'))
              : _buildBatchList(),
    );
  }

  Widget _buildBatchList() {
    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: widget.mergedFarmingBatch.length,
      itemBuilder: (context, index) {
        final batch = widget.mergedFarmingBatch[index];
        return _buildBatchCard(batch);
      },
    );
  }

  Widget _buildBatchCard(MergedFarmingBatchDetailsDto batch) {
    final dateFormat = DateFormat('dd/MM/yyyy');
    final startDate = DateTime.parse(batch.startDate);
    final endDate = DateTime.parse(
      batch.endDate ?? TimeUtils.customNow().toIso8601String(),
    );

    // Tính số ngày còn lại
    // final today = DateTime.now();
    final today = TimeUtils.customNow();
    final daysRemaining = endDate.difference(today).inDays;
    final totalDuration = endDate.difference(startDate).inDays;
    final progress =
        daysRemaining <= 0 ? 1.0 : 1 - (daysRemaining / totalDuration);

    return Card(
      margin: const EdgeInsets.only(bottom: 32),
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: InkWell(
        borderRadius: BorderRadius.circular(12),
        onTap: () {
          context.push(
            RouteName.farmingBatch,
            extra: {'farmingBatchId': batch.id},
          );
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Phần đầu của chuồng với hình ảnh
            Container(
              height: 120,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.vertical(
                  top: Radius.circular(12),
                ),
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [Colors.green[700]!, Colors.green[500]!],
                ),
              ),
              child: Stack(
                children: [
                  Positioned(
                    left: 16,
                    bottom: 16,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          batch.cage.name,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 4),
                        // Text(
                        //   'Mã: ${batch.farmingbatchCode}',
                        //   style: const TextStyle(
                        //     color: Colors.white,
                        //     fontSize: 14,
                        //   ),
                        // ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: 12,
                    right: 12,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 4,
                      ),
                      decoration: BoxDecoration(
                        color: _getStatusColor(batch.status),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Text(
                        _getStatusText(batch.status),
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // Chi tiết chuồng
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Vị trí và Diện tích
                  Row(
                    children: [
                      Icon(
                        Icons.location_on,
                        color: Colors.grey[600],
                        size: 20,
                      ),
                      const SizedBox(width: 8),
                      Text(
                        batch.cage.location,
                        style: TextStyle(color: Colors.grey[600]),
                      ),
                      const SizedBox(width: 16),
                      Icon(
                        Icons.square_foot,
                        color: Colors.grey[600],
                        size: 20,
                      ),
                      const SizedBox(width: 8),
                      Text(
                        '${batch.cage.area} m²',
                        style: TextStyle(color: Colors.grey[600]),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),

                  // Thông tin số lượng
                  Row(
                    children: [
                      _buildInfoItem(
                        icon: Icons.pets,
                        title: 'Số lượng',
                        value: '${batch.quantity}',
                      ),
                      const SizedBox(width: 24),
                      _buildInfoItem(
                        icon: Icons.person_off,
                        title: 'Thất thoát',
                        value: '${batch.deadQuantity}',
                        valueColor: Colors.red,
                      ),
                      const SizedBox(width: 24),
                      _buildInfoItem(
                        icon: Icons.local_fire_department,
                        title: 'Tỉ lệ sống',
                        value:
                            '${((batch.quantity - batch.deadQuantity) / batch.quantity * 100).toStringAsFixed(1)}%',
                      ),
                    ],
                  ),
                ],
              ),
            ),

            // Phần chân với nút hành động
            Container(
              padding: const EdgeInsets.only(left: 16, bottom: 16, right: 16),
              decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: const BorderRadius.vertical(
                  bottom: Radius.circular(12),
                ),
              ),
              child: Row(
                children: [
                  const Icon(Icons.cleaning_services, color: Colors.blue),
                  const SizedBox(width: 8),
                  Text(
                    'Vệ sinh cách ${batch.cleaningFrequency} ngày/lần',
                    style: const TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const Spacer(),
                  ElevatedButton(
                    onPressed: () {
                      // Chuyển hướng đến chi tiết vụ nuôi
                      // Navigator.pushNamed(
                      //   context,
                      //   '/farmingBatchDetails',
                      //   arguments: batch.id,
                      // );
                      context.push(
                        RouteName.farmingBatch,
                        extra: {'farmingBatchId': batch.id},
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green[700],
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: const Text('Xem chi tiết'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoItem({
    required IconData icon,
    required String title,
    required String value,
    Color? valueColor,
  }) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(icon, size: 16, color: Colors.grey[600]),
              const SizedBox(width: 4),
              Text(
                title,
                style: TextStyle(color: Colors.grey[600], fontSize: 14),
              ),
            ],
          ),
          const SizedBox(height: 4),
          Text(
            value,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: valueColor ?? Colors.black,
            ),
          ),
        ],
      ),
    );
  }

  String _getStatusText(String? status) {
    switch (status?.toLowerCase()) {
      case 'active':
        return 'Đang hoạt động';
      case 'completed':
        return 'Đã hoàn thành';
      case 'pending':
        return 'Đang chờ';
      case 'cancelled':
        return 'Đã hủy';
      default:
        return status ?? 'Không xác định';
    }
  }

  Color _getStatusColor(String? status) {
    switch (status?.toLowerCase()) {
      case 'active':
        return Colors.green;
      case 'completed':
        return Colors.blue;
      case 'pending':
        return Colors.orange;
      case 'cancelled':
        return Colors.red;
      default:
        return Colors.grey;
    }
  }

  Color _getProgressColor(double progress) {
    if (progress < 0.3) return Colors.red;
    if (progress < 0.7) return Colors.orange;
    return Colors.green;
  }
}
