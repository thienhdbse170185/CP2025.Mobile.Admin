import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:smart_farm_admin/src/core/constants/session_data_constant.dart';
import 'package:smart_farm_admin/src/core/router.dart';
import 'package:smart_farm_admin/src/core/utils/time_util.dart';
import 'package:smart_farm_admin/src/model/dto/merged_farming_batch/merged_farming_batch_details/merged_farming_batch_details_dto.dart';
import 'package:smart_farm_admin/src/model/dto/merged_farming_batch/merged_farming_batch_dto.dart';
import 'package:smart_farm_admin/src/view/widgets/avatar_round.dart';
import 'package:smart_farm_admin/src/viewmodel/farming_batch/farming_batch_cubit.dart';
import 'package:smart_farm_admin/src/viewmodel/system/system_bloc.dart';
import 'package:smart_farm_admin/src/viewmodel/user/user_bloc.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<MergedFarmingBatchDto> mergedFarmingBatchList = [];
  bool _isLoading = false;
  String _username = 'Đang tải';

  @override
  void initState() {
    super.initState();
    context.read<SystemBloc>().add(const SystemEvent.appStarted());
  }

  String _handleSessionMessage() {
    final currentSession = TimeUtils.getCurrentSession();
    switch (currentSession) {
      case SessionDataConstant.MORNING_INDEX:
        return SessionDataConstant.MORNING_MESSAGE;
      case SessionDataConstant.NOON_INDEX:
        return SessionDataConstant.NOON_MESSAGE;
      case SessionDataConstant.AFTERNOON_INDEX:
        return SessionDataConstant.AFTERNOON_MESSAGE;
      case SessionDataConstant.EVENING_INDEX:
        return SessionDataConstant.EVENING_MESSAGE;
      default:
        return 'Chúc bạn ngủ ngon';
    }
  }

  Color _getStatusColor(String status) {
    switch (status) {
      case 'Active' || 'Mixed':
        return Colors.green;
      case 'Completed':
        return Colors.blue;
      case 'Pending':
        return Colors.orange;
      default:
        return Colors.grey;
    }
  }

  String _translateStatus(String status) {
    switch (status.toLowerCase()) {
      case 'active' || 'mixed':
        return 'Đang nuôi';
      case 'completed':
        return 'Đã hoàn thành';
      case 'pending':
        return 'Chờ xử lý';
      default:
        return 'Không xác định';
    }
  }

  String _formatDate(String? dateString) {
    if (dateString == null) return 'N/A';
    try {
      final date = DateTime.parse(dateString);
      return DateFormat('dd/MM/yyyy').format(date);
    } catch (e) {
      return 'N/A';
    }
  }

  int _calculateDaysRemaining(String? endDateString) {
    if (endDateString == null) return 0;
    try {
      final endDate = DateTime.parse(endDateString);
      final today = DateTime.now();
      return endDate.difference(today).inDays;
    } catch (e) {
      return 0;
    }
  }

  double _calculateProgress(String? startDateString, String? endDateString) {
    if (startDateString == null || endDateString == null) return 0.0;
    try {
      final startDate = DateTime.parse(startDateString);
      final endDate = DateTime.parse(endDateString);
      final today = DateTime.now();

      if (today.isBefore(startDate)) return 0.0;
      if (today.isAfter(endDate)) return 1.0;

      final totalDuration = endDate.difference(startDate).inDays;
      final elapsedDuration = today.difference(startDate).inDays;

      return elapsedDuration / totalDuration;
    } catch (e) {
      return 0.0;
    }
  }

  int _getTotalQuantity(List<MergedFarmingBatchDetailsDto> batches) {
    return batches.fold(0, (sum, batch) => sum + (batch.quantity));
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<FarmingBatchCubit, FarmingBatchState>(
          listener: (context, state) {
            state.maybeWhen(
              getFarmingBatchByUserIdInProgress: () {
                setState(() {
                  _isLoading = true;
                });
              },
              getFarmingBatchByUserIdSuccess: (mergedBatches) {
                setState(() {
                  _isLoading = false;
                  mergedFarmingBatchList.clear();
                  mergedFarmingBatchList.addAll(mergedBatches);
                });
              },
              getFarmingBatchByUserIdFailure: (message) {
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
        ),
        BlocListener<UserBloc, UserState>(
          listener: (context, state) {
            state.maybeWhen(
              getUserProfileInProgress: () {},
              getUserProfileSuccess: (userName, _) {
                setState(() {
                  _username = userName;
                });
                context.read<FarmingBatchCubit>().getFarmingBatchByUserId();
              },
              getUserProfileFailure: (message) {},
              orElse: () {},
            );
          },
        ),
        BlocListener<SystemBloc, SystemState>(
          listener: (context, state) {
            state.maybeWhen(
              appStartedSuccess: () {
                context.read<UserBloc>().add(const UserEvent.getUserProfile());
              },
              orElse: () {},
            );
          },
        ),
      ],
      child: Scaffold(
        appBar: AppBar(
          leading: Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Image.asset(
              TimeUtils.getCurrentSessionImage(),
              width: 40,
              height: 40,
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 16.0),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        _handleSessionMessage(),
                        style: Theme.of(
                          context,
                        ).textTheme.labelMedium?.copyWith(
                          color: Theme.of(context).colorScheme.outline,
                        ),
                      ),
                      Text(
                        _username,
                        style: Theme.of(context).textTheme.titleSmall,
                      ),
                      StreamBuilder(
                        stream: Stream.periodic(const Duration(seconds: 1)),
                        builder: (context, snapshot) {
                          return Text(
                            DateFormat(
                              'HH:mm, dd/MM/yyyy',
                            ).format(TimeUtils.customNow()),
                            style: Theme.of(context).textTheme.bodySmall,
                          );
                        },
                      ),
                    ],
                  ),
                  const SizedBox(width: 8),
                  const AvatarRoundWidget(),
                ],
              ),
            ),
          ],
        ),
        body:
            _isLoading
                ? const Center(child: CircularProgressIndicator())
                : RefreshIndicator(
                  onRefresh: () async {
                    context.read<FarmingBatchCubit>().getFarmingBatchByUserId();
                  },
                  child: SingleChildScrollView(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16.0,
                      vertical: 16.0,
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).size.height * 0.03,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        'Vụ nuôi của bạn',
                                        style:
                                            Theme.of(
                                              context,
                                            ).textTheme.titleLarge,
                                      ),
                                      const SizedBox(width: 8),
                                      Container(
                                        width: 8,
                                        height: 8,
                                        decoration: BoxDecoration(
                                          color:
                                              Theme.of(
                                                context,
                                              ).colorScheme.primary,
                                          shape: BoxShape.circle,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 4),
                                  Text(
                                    'Số lượng: ${mergedFarmingBatchList.length} (Vụ nuôi)',
                                    style: TextStyle(
                                      color:
                                          Theme.of(context).colorScheme.outline,
                                    ),
                                  ),
                                ],
                              ),
                              IconButton(
                                onPressed: () {
                                  context.read<SystemBloc>().add(
                                    const SystemEvent.appStarted(),
                                  );
                                },
                                icon: const Icon(Icons.refresh),
                              ),
                            ],
                          ),
                          const SizedBox(height: 16),
                          _buildMergedFarmingBatchList(),
                        ],
                      ),
                    ),
                  ),
                ),
      ),
    );
  }

  Widget _buildMergedFarmingBatchList() {
    if (mergedFarmingBatchList.isEmpty) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 40),
            Icon(
              Icons.inventory_2_outlined,
              size: 80,
              color: Theme.of(context).colorScheme.outline.withOpacity(0.5),
            ),
            const SizedBox(height: 16),
            Text(
              'Chưa có vụ nuôi nào',
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                color: Theme.of(context).colorScheme.outline,
              ),
            ),
          ],
        ),
      );
    }

    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: mergedFarmingBatchList.length,
      itemBuilder: (context, index) {
        final mergedBatch = mergedFarmingBatchList[index];
        final batchModels = mergedBatch.farmingBatchModels ?? [];

        // Dùng ngày kết thúc của vụ nuôi đầu tiên để tính tiến độ
        // Giả định rằng tất cả các vụ nuôi trong một nhóm có cùng ngày bắt đầu và kết thúc
        final progress =
            batchModels.isNotEmpty
                ? _calculateProgress(
                  batchModels.first.startDate,
                  batchModels.first.endDate,
                )
                : 0.0;

        final daysRemaining =
            batchModels.isNotEmpty
                ? _calculateDaysRemaining(batchModels.first.endDate)
                : 0;

        // Tính tổng số lượng vật nuôi trong tất cả các vụ nuôi của nhóm
        final totalQuantity = _getTotalQuantity(batchModels);

        // Kiểm tra trạng thái của các vụ nuôi trong nhóm
        // Nếu tất cả đều trong cùng trạng thái thì hiển thị trạng thái đó, nếu không thì hiển thị "Mixed"
        final statuses = batchModels.map((e) => e.status).toSet();
        final status = statuses.length == 1 ? statuses.first : "Mixed";

        return Card(
          elevation: 3,
          margin: const EdgeInsets.only(bottom: 16),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          child: InkWell(
            onTap: () {
              context.push(
                RouteName.mergedFarmingBatch,
                extra: {'mergedFarmingBatch': mergedBatch.farmingBatchModels},
              );
            },
            borderRadius: BorderRadius.circular(12),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          mergedBatch.farmingBatchName ?? "Không có tên",
                          style: Theme.of(
                            context,
                          ).textTheme.titleLarge?.copyWith(
                            color: Theme.of(context).colorScheme.primary,
                            fontWeight: FontWeight.bold,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 4,
                        ),
                        decoration: BoxDecoration(
                          color: _getStatusColor(status).withOpacity(0.2),
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(
                            color: _getStatusColor(status),
                            width: 1,
                          ),
                        ),
                        child: Text(
                          _translateStatus(status),
                          style: Theme.of(
                            context,
                          ).textTheme.bodySmall?.copyWith(
                            color: _getStatusColor(status),
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
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            if (batchModels.isNotEmpty)
                              Text(
                                'Loài: ${batchModels.first.species ?? "N/A"}',
                                style: Theme.of(context).textTheme.bodyMedium,
                              ),
                            const SizedBox(height: 4),
                            Row(
                              children: [
                                const Icon(Icons.pets, size: 16),
                                const SizedBox(width: 4),
                                Text(
                                  'Số lượng: $totalQuantity con',
                                  style: Theme.of(context).textTheme.bodyMedium,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                const Icon(Icons.calendar_today, size: 16),
                                const SizedBox(width: 4),
                                Text(
                                  'Bắt đầu: ${_formatDate(mergedBatch.dateStart)}',
                                  style: Theme.of(context).textTheme.bodyMedium,
                                ),
                              ],
                            ),
                            const SizedBox(height: 4),
                            if (batchModels.isNotEmpty)
                              Row(
                                children: [
                                  const Icon(Icons.event, size: 16),
                                  const SizedBox(width: 4),
                                  Text(
                                    'Kết thúc: ${_formatDate(batchModels.first.endDate)}',
                                    style:
                                        Theme.of(context).textTheme.bodyMedium,
                                  ),
                                ],
                              ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  Text(
                    'Số lượng chuồng: ${batchModels.length}',
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Wrap(
                    spacing: 8,
                    runSpacing: 8,
                    children:
                        batchModels.map((batch) {
                          return Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 8,
                              vertical: 4,
                            ),
                            decoration: BoxDecoration(
                              color:
                                  Theme.of(context).colorScheme.surfaceVariant,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Text(
                              batch.cage?.name ?? "N/A",
                              style: Theme.of(context).textTheme.bodySmall,
                            ),
                          );
                        }).toList(),
                  ),
                  const SizedBox(height: 16),
                  if (status == 'Active') ...[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Tiến độ:',
                          style: Theme.of(context).textTheme.bodyMedium
                              ?.copyWith(fontWeight: FontWeight.bold),
                        ),
                        // Text(
                        //   'Còn lại: $daysRemaining ngày',
                        //   style: Theme.of(
                        //     context,
                        //   ).textTheme.bodyMedium?.copyWith(
                        //     color:
                        //         daysRemaining < 7 ? Colors.red : Colors.green,
                        //     fontWeight: FontWeight.bold,
                        //   ),
                        // ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: LinearProgressIndicator(
                        value: progress,
                        minHeight: 10,
                        backgroundColor:
                            Theme.of(context).colorScheme.surfaceVariant,
                        valueColor: AlwaysStoppedAnimation<Color>(
                          Theme.of(context).colorScheme.primary,
                        ),
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      '${(progress * 100).toStringAsFixed(0)}%',
                      style: Theme.of(context).textTheme.bodySmall,
                      textAlign: TextAlign.right,
                    ),
                  ],
                  if (status == 'Completed') ...[
                    Row(
                      children: [
                        Icon(Icons.check_circle, color: Colors.green, size: 20),
                        const SizedBox(width: 8),
                        Text(
                          'Hoàn thành vào: ${batchModels.isNotEmpty ? _formatDate(batchModels.first.completeAt) : "N/A"}',
                          style: Theme.of(
                            context,
                          ).textTheme.bodyMedium?.copyWith(
                            color: Colors.green,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
