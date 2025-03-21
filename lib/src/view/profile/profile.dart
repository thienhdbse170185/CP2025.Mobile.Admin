import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:smart_farm_admin/src/core/router.dart';
import 'package:smart_farm_admin/src/view/widgets/linear_icons.dart';
import 'package:smart_farm_admin/src/view/widgets/processing_button_widget.dart';
import 'package:smart_farm_admin/src/viewmodel/auth/auth_bloc.dart';
import 'package:smart_farm_admin/src/viewmodel/user/user_bloc.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  String? _username;
  bool _isLoading = false;
  bool _isProcessing = false;

  @override
  void initState() {
    super.initState();
    context.read<UserBloc>().add(const UserEvent.getUserProfile());
  }

  void _showLogoutConfirmationBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
      builder: (BuildContext context) {
        return StatefulBuilder(
          builder:
              (context, setState) => Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    LinearIcons.warningAboutIcon,
                    const SizedBox(height: 10),
                    const Text(
                      'Đăng xuất',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
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
                            onPressed:
                                _isProcessing
                                    ? null
                                    : () {
                                      context.read<AuthBloc>().add(
                                        const AuthEvent.logout(),
                                      );
                                    },
                            child:
                                _isProcessing
                                    ? const ProcessingButtonWidget(
                                      loadingMessage: 'Đang đăng xuất...',
                                    )
                                    : const Text('Đăng xuất'),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<AuthBloc, AuthState>(
          listener: (context, state) {
            state.maybeWhen(
              logoutInProgress: () {
                setState(() {
                  _isProcessing = true;
                });
              },
              logoutSuccess: () {
                context.pop();
                setState(() {
                  _isProcessing = false;
                });
                context.go(RouteName.login);
              },
              logoutFailure: (message) {
                setState(() {
                  _isProcessing = false;
                });
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('Đăng xuất thất bại!'),
                    backgroundColor: Colors.red,
                  ),
                );
              },
              orElse: () {},
            );
          },
        ),
        BlocListener<UserBloc, UserState>(
          listener: (context, state) {
            state.maybeWhen(
              getUserProfileInProgress: () {
                setState(() {
                  _isLoading = true;
                });
              },
              getUserProfileSuccess: (userName, _) {
                setState(() {
                  _username = userName;
                  _isLoading = false;
                });
              },
              getUserProfileFailure: (_) {
                setState(() {
                  _isLoading = false;
                });
              },
              orElse: () {},
            );
          },
        ),
      ],
      child: Scaffold(
        body: Stack(
          clipBehavior: Clip.none, // Ensures elements can overflow the Stack
          children: [
            Image.asset(
              'assets/images/background_profile.jpg',
              fit: BoxFit.cover,
              height: MediaQuery.of(context).size.height * 0.225,
              width: double.infinity,
            ),
            Positioned(
              top: MediaQuery.of(context).size.height * 0.17,
              left: 16,
              right: 16,
              child: InkWell(
                onTap: () {
                  context.push(RouteName.userProfile);
                },
                child: Card(
                  color: Colors.white,
                  shape: const StadiumBorder(),
                  elevation: 2,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child:
                        _isLoading
                            ? Center(child: CircularProgressIndicator())
                            : ListTile(
                              leading: Image.asset(
                                'assets/images/avatar.png',
                                width: 64,
                                height: 64,
                              ),
                              title: Text(
                                _username ?? 'Tên người dùng',
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                              trailing: Icon(Icons.chevron_right_rounded),
                            ),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.29,
              ),
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Card.outlined(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                      side: BorderSide(color: Colors.grey.shade300),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                        top: 20,
                        bottom: 20,
                        left: 16,
                        right: 16,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Cài đặt',
                            style: Theme.of(
                              context,
                            ).textTheme.titleMedium?.copyWith(
                              color: Theme.of(context).colorScheme.outline,
                            ),
                          ),
                          const SizedBox(height: 16),
                          InkWell(
                            splashColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () {
                              // Navigate to about
                              context.push(RouteName.notificationSetting);
                            },
                            child: Row(
                              children: [
                                Icon(Icons.notifications_none_outlined),
                                const SizedBox(width: 16),
                                Text(
                                  'Thông báo',
                                  style: Theme.of(context).textTheme.bodyLarge,
                                ),
                                const Spacer(),
                                Icon(Icons.chevron_right_rounded),
                              ],
                            ),
                          ),
                          const SizedBox(height: 20),
                          InkWell(
                            splashColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () {
                              // Navigate to help
                              context.push(
                                RouteName.changePassword,
                                extra: {'username': _username},
                              );
                            },
                            child: Row(
                              children: [
                                Icon(Icons.lock_outline),
                                const SizedBox(width: 16),
                                Text(
                                  'Đổi mật khẩu',
                                  style: Theme.of(context).textTheme.bodyLarge,
                                ),
                                const Spacer(),
                                Icon(Icons.chevron_right_rounded),
                              ],
                            ),
                          ),
                          // const SizedBox(height: 20),
                          // InkWell(
                          //   splashColor: Colors.transparent,
                          //   highlightColor: Colors.transparent,
                          //   onTap: () {
                          //     // Navigate to help
                          //     context.push(RouteName.setting);
                          //   },
                          //   child: Row(
                          //     children: [
                          //       Icon(Icons.settings_outlined),
                          //       const SizedBox(width: 16),
                          //       Text(
                          //         'Cài đặt khác',
                          //         style: Theme.of(context).textTheme.bodyLarge,
                          //       ),
                          //       const Spacer(),
                          //       Icon(Icons.chevron_right_rounded)
                          //     ],
                          //   ),
                          // ),
                        ],
                      ),
                    ),
                  ),
                  // const SizedBox(height: 10),
                  // Card.outlined(
                  //   color: Colors.white,
                  //   shape: RoundedRectangleBorder(
                  //     borderRadius: BorderRadius.circular(16),
                  //     side: BorderSide(color: Colors.grey.shade300),
                  //   ),
                  //   child: Padding(
                  //     padding: const EdgeInsets.only(
                  //         top: 20, bottom: 20, left: 16, right: 16),
                  //     child: Column(
                  //       crossAxisAlignment: CrossAxisAlignment.start,
                  //       children: [
                  //         InkWell(
                  //           splashColor: Colors.transparent,
                  //           highlightColor: Colors.transparent,
                  //           onTap: () {
                  //             context.push(RouteName.setting);
                  //           },
                  //           child: Row(
                  //             crossAxisAlignment: CrossAxisAlignment.center,
                  //             children: [
                  //               Expanded(
                  //                 child: Row(
                  //                   children: [
                  //                     LinearIcons.settingIconGreen,
                  //                     const SizedBox(width: 16),
                  //                     Text(
                  //                       'Cài đặt',
                  //                       style: Theme.of(context)
                  //                           .textTheme
                  //                           .bodyLarge,
                  //                     ),
                  //                   ],
                  //                 ),
                  //               ),
                  //               LinearIcons.chevronRightIcon
                  //             ],
                  //           ),
                  //         ),
                  //       ],
                  //     ),
                  //   ),
                  // ),
                  const SizedBox(height: 30),
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
          ],
        ),
      ),
    );
  }
}
