import 'package:data_layer/model/dto/cage_admin/cage_admin_dto.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smart_farm_admin/src/view/widgets/loading_widget.dart';
import 'package:smart_farm_admin/src/viewmodel/cage/cage_bloc.dart';

class CageScreen extends StatefulWidget {
  final String cageId;
  const CageScreen({super.key, required this.cageId});

  @override
  State<CageScreen> createState() => _CageScreenState();
}

class _CageScreenState extends State<CageScreen> {
  CageAdminDto? _cage;
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    context.read<CageBloc>().add(CageEvent.getCage(cageId: widget.cageId));
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<CageBloc, CageState>(
      listener: (context, state) {
        state.maybeWhen(
          getCageDetailInProgress: () {
            setState(() {
              _isLoading = true;
            });
          },
          getCageDetailSuccess: (cageAdminDto) {
            setState(() {
              _isLoading = false;
              _cage = cageAdminDto;
            });
          },
          getCageDetailFailure: (message) {
            setState(() {
              _isLoading = false;
            });
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text('Có lỗi xảy ra khi lấy thông tin chuồng')),
            );
          },
          orElse: () {},
        );
      },
      child: Scaffold(
        appBar: AppBar(title: Text(_cage?.name ?? 'Đang tải...')),
        body: _isLoading ? LoadingWidget() : _buildBodyScreen(context),
      ),
    );
  }

  Widget _buildBodyScreen(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(children: [const Text('Màn hình chi tiết chuồng')]),
    );
  }
}
