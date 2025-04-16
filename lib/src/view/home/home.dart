import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:smart_farm_admin/src/core/router.dart';
import 'package:smart_farm_admin/src/model/dto/farming_batch/farming_batch_dto.dart';
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
  final List<FarmingBatchDto> farmingBatchList = [];
  bool _isLoading = false;
  String _username = 'Đang tải';
  String _currentDate = '';
  String _currentTime = '';

  List<MergedFarmingBatchDto> mergedFarmingBatchList = [];

  @override
  void initState() {
    super.initState();
    context.read<SystemBloc>().add(const SystemEvent.appStarted());
    _updateDateTime();
  }

  void _updateDateTime() {
    final now = DateTime.now();
    setState(() {
      _currentDate = DateFormat('dd/MM/yyyy').format(now);
      _currentTime = DateFormat('HH:mm').format(now);
    });
  }

  String _getGreeting() {
    final hour = DateTime.now().hour;
    if (hour < 12) return 'Chào buổi sáng';
    if (hour < 18) return 'Chào buổi chiều';
    return 'Chào buổi tối';
  }

  Color _getStatusColor(String status) {
    switch (status) {
      case 'Active':
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
    switch (status) {
      case 'Active':
        return 'Đang nuôi';
      case 'Completed':
        return 'Đã hoàn thành';
      case 'Pending':
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
              getFarmingBatchByUserIdSuccess: (farmingBatches) {
                setState(() {
                  _isLoading = false;
                  farmingBatches.clear();
                  farmingBatches.addAll(farmingBatches);
                });
              },
              getFarmingBatchesInProgress: () {
                setState(() {
                  _isLoading = true;
                });
              },
              getFarmingBatchesSuccess: (batchList) {
                setState(() {
                  _isLoading = false;
                  farmingBatchList.clear();
                  farmingBatchList.addAll(batchList);
                });
              },
              getFarmingBatchesFailure: (message) {
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
          leading: IconButton(
            onPressed: () {
              context.push(RouteName.notification);
            },
            icon: const Icon(Icons.notifications_outlined),
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
                        _getGreeting(),
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
                        stream: Stream.periodic(const Duration(seconds: 10), (
                          _,
                        ) {
                          _updateDateTime();
                          return DateTime.now();
                        }),
                        builder: (context, snapshot) {
                          return Text(
                            '$_currentTime, $_currentDate',
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
                ? Center(child: CircularProgressIndicator())
                : RefreshIndicator(
                  onRefresh: () async {
                    context.read<FarmingBatchCubit>().getFarmingBatches();
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
                                    'Số lượng: ${farmingBatchList.length} (vụ nuôi)',
                                    style: TextStyle(
                                      color:
                                          Theme.of(context).colorScheme.outline,
                                    ),
                                  ),
                                ],
                              ),
                              IconButton(
                                onPressed: () {
                                  context
                                      .read<FarmingBatchCubit>()
                                      .getFarmingBatches();
                                },
                                icon: const Icon(Icons.refresh),
                              ),
                            ],
                          ),
                          const SizedBox(height: 16),
                          _buildFarmingBatchList(),
                        ],
                      ),
                    ),
                  ),
                ),
      ),
    );
  }

  Widget _buildFarmingBatchList() {
    if (farmingBatchList.isEmpty) {
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
      itemCount: farmingBatchList.length,
      itemBuilder: (context, index) {
        final batch = farmingBatchList[index];
        final progress = _calculateProgress(batch.startDate, batch.endDate);
        final daysRemaining = _calculateDaysRemaining(batch.endDate);

        return Card(
          elevation: 3,
          margin: const EdgeInsets.only(bottom: 16),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          child: InkWell(
            onTap: () {
              context.push(
                RouteName.farmingBatch,
                extra: {'farmingBatchId': batch.id},
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
                          batch.name,
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
                          color: _getStatusColor(batch.status).withOpacity(0.2),
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(
                            color: _getStatusColor(batch.status),
                            width: 1,
                          ),
                        ),
                        child: Text(
                          _translateStatus(batch.status),
                          style: Theme.of(
                            context,
                          ).textTheme.bodySmall?.copyWith(
                            color: _getStatusColor(batch.status),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 4),
                  Row(
                    children: [
                      const Icon(Icons.location_on_outlined, size: 16),
                      const SizedBox(width: 4),
                      Expanded(
                        child: Text(
                          'Chuồng: ${batch.cage?.name} (${batch.cage?.location})',
                          style: Theme.of(context).textTheme.bodyMedium,
                          overflow: TextOverflow.ellipsis,
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
                            Text(
                              'Loài: ${batch.animalTemplate?.species ?? "N/A"}',
                              style: Theme.of(context).textTheme.bodyMedium,
                            ),
                            const SizedBox(height: 4),
                            Row(
                              children: [
                                const Icon(Icons.pets, size: 16),
                                const SizedBox(width: 4),
                                Text(
                                  'Số lượng: ${batch.quantity} con',
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
                                  'Bắt đầu: ${_formatDate(batch.startDate)}',
                                  style: Theme.of(context).textTheme.bodyMedium,
                                ),
                              ],
                            ),
                            const SizedBox(height: 4),
                            Row(
                              children: [
                                const Icon(Icons.event, size: 16),
                                const SizedBox(width: 4),
                                Text(
                                  'Kết thúc: ${_formatDate(batch.endDate)}',
                                  style: Theme.of(context).textTheme.bodyMedium,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  if (batch.status == 'Active') ...[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Tiến độ:',
                          style: Theme.of(context).textTheme.bodyMedium
                              ?.copyWith(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Còn lại: $daysRemaining ngày',
                          style: Theme.of(
                            context,
                          ).textTheme.bodyMedium?.copyWith(
                            color:
                                daysRemaining < 7 ? Colors.red : Colors.green,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
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
                  if (batch.status == 'Completed') ...[
                    Row(
                      children: [
                        Icon(Icons.check_circle, color: Colors.green, size: 20),
                        const SizedBox(width: 8),
                        Text(
                          'Hoàn thành vào: ${_formatDate(batch.completeAt)}',
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
