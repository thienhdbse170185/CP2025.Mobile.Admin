import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:smart_farm_admin/src/core/router.dart';
import 'package:smart_farm_admin/src/view/widgets/custom_app_bar.dart';
import 'package:smart_farm_admin/src/view/widgets/linear_icons.dart';
import 'package:smart_farm_admin/src/view/widgets/loading_dialog.dart';
import 'package:smart_farm_admin/src/view/widgets/text_field_required.dart';
import 'package:smart_farm_admin/src/view/widgets/warning_confirm_dialog.dart';
import 'package:smart_farm_admin/src/viewmodel/auth/auth_bloc.dart';
import 'package:smart_farm_admin/src/viewmodel/user/user_bloc.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();

  @override
  void initState() {
    super.initState();
    context.read<UserBloc>().add(const UserEvent.getUserProfileByUserId());
  }

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _phoneController.dispose();
    _addressController.dispose();
    super.dispose();
  }

  void _showLogoutConfirmationBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
      builder: (BuildContext context) {
        return Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              LinearIcons.warningAboutIcon,
              const SizedBox(height: 10),
              const Text(
                'Đăng xuất',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              const Text(
                'Bạn có chắc chắn muốn đăng xuất khỏi tài \nkhoản này?',
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.3,
                    child: OutlinedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text('Hủy bỏ'),
                    ),
                  ),
                  const SizedBox(width: 10),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.3,
                    child: FilledButton(
                      onPressed: () {
                        context.read<AuthBloc>().add(const AuthEvent.logout());
                      },
                      child: const Text('Đăng xuất'),
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<UserBloc, UserState>(
          listener: (context, state) {
            state.maybeWhen(
              getUserProfileByUserIdInProgress: () {
                LoadingDialog.show(context, 'Đang tải thông tin...');
              },
              getUserProfileByUserIdSuccess: (userInfo) {
                _nameController.text = userInfo.fullName;
                _emailController.text = userInfo.email;
                _phoneController.text = userInfo.phoneNumber;
                _addressController.text = userInfo.address;
                LoadingDialog.hide(context);
              },
              getUserProfileByUserIdFailure: (message) {
                LoadingDialog.hide(context);
                if (message.contains('data-changed')) {
                  showDialog(
                    context: context,
                    builder: (_) {
                      return WarningConfirmationDialog(
                        title: 'Cảnh báo',
                        content: const Text(
                          'Dữ liệu đã bị thay đổi, vui lòng đăng nhập trở lại.',
                        ),
                        primaryButtonText: 'Đăng xuất',
                        onPrimaryButtonPressed: () {
                          context.read<AuthBloc>().add(AuthEvent.logout());
                        },
                      );
                    },
                  );
                }
              },
              orElse: () {},
            );
          },
        ),

        BlocListener<AuthBloc, AuthState>(
          listener: (context, state) {
            state.maybeWhen(
              logoutInProgress: () {
                LoadingDialog.show(context, 'Đang đăng xuất...');
                log('[AUTH] Đang đăng xuất...');
              },
              logoutSuccess: () {
                log('[AUTH] Đăng xuất thành công');
                context.go(RouteName.login);
              },
              orElse: () {},
            );
          },
        ),
      ],
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: CustomAppBar(
          title: const Text('Thông tin cá nhân'),
          centerTitle: true,
          actions: [
            IconButton(
              onPressed: () {
                context.push(RouteName.editUserProfile);
              },
              icon: const Icon(Icons.edit),
            ),
          ],
        ),
        body: RefreshIndicator(
          onRefresh: () async {
            context.read<UserBloc>().add(const UserEvent.getUserProfile());
          },
          child: SizedBox(
            width: double.infinity,
            child: SingleChildScrollView(
              padding: const EdgeInsets.only(top: 32, left: 16, right: 16),
              physics: const AlwaysScrollableScrollPhysics(),
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      border: Border.all(
                        color: Theme.of(context).colorScheme.primary,
                      ),
                    ),
                    padding: const EdgeInsets.all(4),
                    child: Image.asset(
                      'assets/images/avatar.png',
                      width: 120,
                      height: 120,
                    ),
                  ),
                  const SizedBox(height: 32),
                  TextFieldRequired(
                    label: "Tên người dùng",
                    hintText: "Nhập tên người dùng",
                    controller: _nameController,
                  ),
                  const SizedBox(height: 32),
                  TextFieldRequired(
                    label: "Email",
                    hintText: "Nhập email",
                    controller: _emailController,
                    isDisabled: true,
                  ),
                  const SizedBox(height: 32),
                  TextFieldRequired(
                    label: "Số điện thoại",
                    hintText: "Nhập số điện thoại",
                    controller: _phoneController,
                    isDisabled: true,
                  ),
                  const SizedBox(height: 32),
                  TextFieldRequired(
                    label: "Địa chỉ",
                    hintText: "Nhập địa chỉ",
                    controller: _addressController,
                  ),
                  const SizedBox(height: 50),
                  InkWell(
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () {
                      _showLogoutConfirmationBottomSheet(context);
                    },
                    child: SizedBox(
                      width: double.infinity,
                      child: Row(
                        children: [
                          const SizedBox(width: 8),
                          LinearIcons.exportIcon,
                          const SizedBox(width: 8),
                          Text(
                            'Đăng xuất',
                            style: Theme.of(context).textTheme.titleMedium
                                ?.copyWith(color: Colors.red),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
