import 'package:data_layer/model/dto/cage_admin/cage_admin_dto.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smart_farm_admin/src/viewmodel/cage/cage_bloc.dart';
// Các import khác theo mô hình dự án của bạn
// Giả sử bạn có sẵn các widget như LoadingWidget, MenuFeatureWidget, v.v.

/// Dummy class mô phỏng dữ liệu trả về (bạn thay thế bằng model thực tế)

/// Widget đại diện cho các chức năng nhanh hiển thị dưới dạng Grid
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
    // Giả lập gọi API thông qua Bloc (thay thế bằng sự kiện thực tế)
    context.read<CageBloc>().add(CageEvent.getCage(cageId: widget.cageId));
    // _loadCageData();
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
            bottom: const TabBar(
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

  /// Tab Tổng Quan: Hiển thị thông tin cơ bản của chuồng, live camera preview, quick action
  Widget buildOverviewTab() {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          // Thông tin chuồng với Card
          Card(
            color: Theme.of(context).colorScheme.primary,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            elevation: 4,
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Tiêu đề và trạng thái thiết bị
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          const Icon(Icons.home, color: Colors.white),
                          const SizedBox(width: 8),
                          Text(
                            _cage?.name ?? 'Đang tải...',
                            style: Theme.of(context).textTheme.titleMedium
                                ?.copyWith(color: Colors.white),
                          ),
                        ],
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          vertical: 4,
                          horizontal: 8,
                        ),
                        decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.primaryContainer,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: const Text(
                          'Thiết bị đang hoạt động',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  // Live camera preview hoặc placeholder
                  Container(
                    height: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      image: DecorationImage(
                        image:
                            _cage?.cameraUrl.isNotEmpty == true
                                ? NetworkImage(_cage!.cameraUrl)
                                : const AssetImage(
                                      'assets/images/placeholder.png',
                                    )
                                    as ImageProvider,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  // Thông tin số liệu chính
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      _buildInfoColumn(
                        label: 'Diện tích',
                        value: '${_cage?.area.toString() ?? '0'} m2',
                      ),
                      _buildInfoColumn(
                        label: 'Sức chứa',
                        value: '${_cage?.capacity.toString() ?? '0'} con',
                      ),
                      _buildInfoColumn(
                        label: 'Bị bệnh',
                        value: '20/200',
                      ), // Số liệu mẫu
                    ],
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 24),
          // Các chức năng nhanh hiển thị dưới dạng Grid
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Các tính năng',
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
          const SizedBox(height: 16),
          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisSpacing: 16,
              crossAxisSpacing: 16,
              childAspectRatio: 1,
            ),
            itemCount: features.length,
            itemBuilder: (context, index) {
              final feature = features[index];
              return GestureDetector(
                onTap: () {
                  // Ví dụ: thông báo chức năng đang được phát triển
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(
                        'Chức năng ${feature.title} đang được phát triển',
                      ),
                    ),
                  );
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.primaryContainer,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: feature.icon,
                    ),
                    const SizedBox(height: 8),
                    Text(
                      feature.title,
                      textAlign: TextAlign.center,
                      style: const TextStyle(fontSize: 14),
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }

  /// Tab Vụ Nuôi: Hiển thị thông tin vụ nuôi hiện tại của chuồng
  Widget buildFarmingBatchTab() {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Thông tin vụ nuôi',
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const SizedBox(height: 16),
          _cage?.farmingBatch != null
              ? Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                elevation: 4,
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Tên vụ nuôi: ${_cage!.farmingBatch!.name}',
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 8),
                      Text('Ngày bắt đầu: ${_cage!.farmingBatch!.startDate}'),
                      const SizedBox(height: 8),
                      Text(
                        'Ngày kết thúc dự kiến: ${_cage!.farmingBatch!.endDate}',
                      ),
                      const SizedBox(height: 8),
                      Text(
                        'Số lượng: ${_cage!.farmingBatch!.quantity.toString()} con',
                      ),
                    ],
                  ),
                ),
              )
              : const Center(child: Text('Chưa có thông tin vụ nuôi')),
        ],
      ),
    );
  }

  /// Tab Giai Đoạn: Hiển thị chi tiết về giai đoạn phát triển hiện tại
  Widget buildGrowthStageTab() {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Giai đoạn phát triển',
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const SizedBox(height: 16),
          _cage?.farmingBatch?.growthStageDetails != null
              ? Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                elevation: 4,
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Tên giai đoạn: ${_cage!.farmingBatch!.growthStageDetails!.name}',
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        'Từ ngày: ${_cage!.farmingBatch!.growthStageDetails!.ageStartDate}',
                      ),
                      const SizedBox(height: 8),
                      Text(
                        'Đến ngày: ${_cage!.farmingBatch!.growthStageDetails!.ageEndDate}',
                      ),
                      const SizedBox(height: 8),
                      Text(
                        'Số lượng: ${_cage!.farmingBatch!.growthStageDetails!.quantity.toString()} con',
                      ),
                      const SizedBox(height: 8),
                      Text(
                        'Khối lượng trung bình: ${_cage!.farmingBatch!.growthStageDetails!.weightAnimal.toString()} kg',
                      ),
                    ],
                  ),
                ),
              )
              : const Center(child: Text('Chưa có thông tin giai đoạn')),
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

  /// Hàm tiện ích hiển thị thông tin dạng Column với label và value
  Widget _buildInfoColumn({required String label, required String value}) {
    return Column(
      children: [
        Text(label, style: const TextStyle(color: Colors.white70)),
        Text(
          value,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
      ],
    );
  }
}
