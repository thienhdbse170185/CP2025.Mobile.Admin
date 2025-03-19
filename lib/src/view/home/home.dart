import 'package:data_layer/model/dto/cage_admin/cage_admin_dto.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:smart_farm_admin/src/core/router.dart';
import 'package:smart_farm_admin/src/view/widgets/avatar_round.dart';
import 'package:smart_farm_admin/src/view/widgets/loading_widget.dart';
import 'package:smart_farm_admin/src/viewmodel/cage/cage_bloc.dart';
import 'package:smart_farm_admin/src/viewmodel/system/system_bloc.dart';
import 'package:smart_farm_admin/src/viewmodel/user/user_bloc.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<CageAdminDto> cageList = [];

  bool _isLoading = false;
  String _username = 'Đang tải';

  @override
  void initState() {
    super.initState();
    context.read<SystemBloc>().add(const SystemEvent.appStarted());
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<CageBloc, CageState>(
          listener: (context, state) {
            state.maybeWhen(
              getCageListInProgress: () {
                setState(() {
                  _isLoading = true;
                });
              },
              getCageListSuccess: (cageList) {
                setState(() {
                  _isLoading = false;
                  this.cageList.clear();
                  this.cageList.addAll(cageList);
                });
              },
              getCageListFailure: (message) {
                setState(() {
                  _isLoading = false;
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
                context.read<CageBloc>().add(const CageEvent.getCageList());
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
            icon: Icon(Icons.notifications_outlined),
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
                        'Chào buổi sáng',
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
                        stream: Stream.periodic(const Duration(seconds: 10)),
                        builder: (context, snapshot) {
                          return Text(
                            '10:00, 20/10/2021',
                            style: Theme.of(context).textTheme.bodySmall,
                          );
                        },
                      ),
                    ],
                  ),
                  const SizedBox(width: 8),
                  AvatarRoundWidget(),
                ],
              ),
            ),
          ],
        ),
        body: RefreshIndicator(
          onRefresh: () async {
            context.read<CageBloc>().add(const CageEvent.getCageList());
          },
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(
              horizontal: 16.0,
              vertical: 16.0,
            ),
            child:
                _isLoading
                    ? LoadingWidget()
                    : Padding(
                      padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).size.height * 0.1,
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
                                        'Chuồng đang hiện hành',
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
                                    'Số lượng: ${cageList.length} (chuồng)',
                                    style: TextStyle(
                                      color:
                                          Theme.of(context).colorScheme.outline,
                                    ),
                                  ),
                                ],
                              ),
                              IconButton(
                                onPressed: () {
                                  context.read<CageBloc>().add(
                                    const CageEvent.getCageList(),
                                  );
                                },
                                icon: Icon(Icons.replay),
                              ),
                            ],
                          ),
                          const SizedBox(height: 16),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.8,
                            child: _buildCageList(),
                          ),
                        ],
                      ),
                    ),
          ),
        ),
      ),
    );
  }

  Widget _buildCageList() {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 8.0,
        mainAxisSpacing: 8.0,
        childAspectRatio: 1.3,
      ),
      itemCount: cageList.length,
      itemBuilder: (context, index) {
        final cage = cageList[index];
        return GestureDetector(
          onTap: () {
            context.push(RouteName.cage, extra: {'cageId': cage.id});
          },
          child: Card(
            elevation: 4,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    cage.name,
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Row(
                    children: [
                      Text(
                        '🐔 ${cage.farmingBatchStageModel?.growthStageDetails?.quantity ?? 0} ',
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                      Text(
                        '/ ${cage.capacity}',
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: Theme.of(context).colorScheme.outline,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 4),
                  Text(
                    '👤 ${cage.staffName}',
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  const Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        cage.boardStatus ? '✅ Hoạt động' : '❌ Không hoạt động',
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: cage.boardStatus ? Colors.green : Colors.red,
                        ),
                      ),
                      Icon(
                        Icons.sensors,
                        color: cage.boardStatus ? Colors.green : Colors.red,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
