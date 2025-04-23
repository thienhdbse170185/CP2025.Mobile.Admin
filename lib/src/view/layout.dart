import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:smart_farm_admin/src/core/destination.dart';
import 'package:smart_farm_admin/src/core/router.dart';
import 'package:smart_farm_admin/src/model/dto/animal_template/animal_template_dto.dart';
import 'package:smart_farm_admin/src/model/dto/cage/cage_dto.dart';
import 'package:smart_farm_admin/src/model/dto/merged_farming_batch/merged_farming_batch_details/merged_farming_batch_details_dto.dart';
import 'package:smart_farm_admin/src/model/dto/merged_farming_batch/merged_farming_batch_dto.dart';
import 'package:smart_farm_admin/src/view/widgets/qr_scanner.dart';
import 'package:smart_farm_admin/src/viewmodel/farming_batch/farming_batch_cubit.dart';
import 'package:smart_farm_admin/src/viewmodel/system/system_bloc.dart';
import 'package:smart_farm_admin/src/viewmodel/user/user_bloc.dart';

class LayoutScaffold extends StatefulWidget {
  final StatefulNavigationShell navigationShell;

  const LayoutScaffold({required this.navigationShell, Key? key})
    : super(key: key ?? const ValueKey<String>('LayoutScaffold'));

  @override
  State<LayoutScaffold> createState() => _LayoutScaffoldState();
}

class _LayoutScaffoldState extends State<LayoutScaffold> {
  final List<MergedFarmingBatchDto> _farmingBatches = [];

  @override
  void initState() {
    super.initState();
    // context.read<FarmingBatchCubit>().getFarmingBatchByUserId();
    context.read<SystemBloc>().add(const SystemEvent.appStarted());
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<FarmingBatchCubit, FarmingBatchState>(
          listener: (context, state) {
            state.maybeWhen(
              getFarmingBatchByUserIdInProgress: () {},
              getFarmingBatchByUserIdSuccess: (farmingBatch) {
                _farmingBatches.clear();
                _farmingBatches.addAll(farmingBatch);
              },
              getFarmingBatchByUserIdFailure: (error) {},
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
        BlocListener<UserBloc, UserState>(
          listener: (context, state) {
            state.maybeWhen(
              getUserProfileSuccess: (_, __) {
                context.read<FarmingBatchCubit>().getFarmingBatchByUserId();
              },
              orElse: () {},
            );
          },
        ),
      ],
      child: Scaffold(
        body: widget.navigationShell,
        bottomNavigationBar: NavigationBar(
          selectedIndex: _getSelectedIndex(),
          onDestinationSelected: (index) {
            if (destinations[index].isQrButton) {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder:
                      (context) => QRScannerWidget(
                        title: 'Quét mã QR chuồng',
                        instruction: 'Đặt mã QR vào khung hình để quét',
                        helperText: 'Mã QR được dán trên chuồng',
                        onScanned: (String qrCode) {
                          log("QR Code: //");
                          final farmingBatch = _farmingBatches.firstWhere(
                            (farmingbatch) =>
                                farmingbatch.farmingBatchModels.firstWhere(
                                  (farmingBatchModel) =>
                                      farmingBatchModel.cage.id == qrCode,
                                  orElse:
                                      () => MergedFarmingBatchDetailsDto(
                                        id: '',
                                        farmingbatchCode: '',
                                        name: '',
                                        species: '',
                                        startDate: '',
                                        estimatedTimeStart: '',
                                        status: '',
                                        cleaningFrequency: 0,
                                        quantity: 0,
                                        deadQuantity: 0,
                                        cage: CageDto(
                                          id: '',
                                          farmId: '',
                                          name: '',
                                          area: 0,
                                          capacity: 0,
                                          location: '',
                                        ),
                                        template: AnimalTemplateDto(
                                          id: '',
                                          name: '',
                                          species: '',
                                        ),
                                      ),
                                ) !=
                                null,
                            orElse:
                                () => MergedFarmingBatchDto(
                                  farmingBatchName: '',
                                  dateStart: '',
                                  farmingBatchModels: [],
                                ),
                          );

                          if (farmingBatch.farmingBatchModels.isNotEmpty) {
                            final farmingBatchModel = farmingBatch
                                .farmingBatchModels
                                .firstWhere(
                                  (farmingBatchModel) =>
                                      farmingBatchModel.cage.id ==
                                      qrCode.toLowerCase(),
                                  orElse:
                                      () => MergedFarmingBatchDetailsDto(
                                        id: '',
                                        farmingbatchCode: '',
                                        name: '',
                                        species: '',
                                        startDate: '',
                                        estimatedTimeStart: '',
                                        status: '',
                                        cleaningFrequency: 0,
                                        quantity: 0,
                                        deadQuantity: 0,
                                        cage: CageDto(
                                          id: '',
                                          farmId: '',
                                          name: '',
                                          area: 0,
                                          capacity: 0,
                                          location: '',
                                        ),
                                        template: AnimalTemplateDto(
                                          id: '',
                                          name: '',
                                          species: '',
                                        ),
                                      ),
                                );
                            widget.navigationShell.goBranch(1);
                            context.push(
                              RouteName.farmingBatch,
                              extra: {'farmingBatchId': farmingBatchModel.id},
                            );
                          } else {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text(
                                  'Không tìm thấy chuồng với mã QR này',
                                ),
                              ),
                            );
                          }
                        },
                      ),
                ),
              );
            } else {
              final adjustedIndex = index > 1 ? index - 1 : index;
              widget.navigationShell.goBranch(adjustedIndex);
            }
            // final adjustedIndex = index > 2 ? index - 1 : index;
            // widget.navigationShell.goBranch(adjustedIndex);
          },
          elevation: 5,
          backgroundColor: const Color(0xFFFFFFFF),
          height: MediaQuery.of(context).size.height * 0.08,
          destinations:
              destinations.map((destination) {
                if (destination.isQrButton) {
                  return NavigationDestination(
                    icon: Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.primary,
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(
                        Icons.qr_code_scanner,
                        color: Colors.white,
                        size: 24,
                      ),
                    ),
                    label: destination.label,
                  );
                }
                return NavigationDestination(
                  icon: Icon(destination.icon),
                  label: destination.label,
                  selectedIcon: Icon(
                    destination.iconSelected,
                    color: Theme.of(context).primaryColor,
                  ),
                );
              }).toList(),
        ),
      ),
    );
  }

  int _getSelectedIndex() {
    final currentIndex = widget.navigationShell.currentIndex;
    return currentIndex >= 1 ? currentIndex + 1 : currentIndex;
  }
}
