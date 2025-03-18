import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:smart_farm_admin/src/core/router.dart';
import 'package:smart_farm_admin/src/view/widgets/processing_button_widget.dart';
import 'package:smart_farm_admin/src/view/widgets/text_field_required.dart';
import 'package:smart_farm_admin/src/viewmodel/auth/auth_bloc.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final key = GlobalKey<FormState>();

  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  bool _isProcessing = false;

  @override
  void dispose() {
    super.dispose();
    _usernameController.dispose();
    _passwordController.dispose();
  }

  _onSubmit() {
    if (key.currentState!.validate()) {
      final username = _usernameController.text.trim();
      final password = _passwordController.text.trim();
      context.read<AuthBloc>().add(
        AuthEvent.login(username: username, password: password),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        state.maybeWhen(
          loginInProgress: () {
            setState(() {
              _isProcessing = true;
            });
          },
          loginSuccess: () {
            setState(() {
              _isProcessing = false;
            });
            context.go(RouteName.home);
          },
          loginFailure: (message) {
            setState(() {
              _isProcessing = false;
            });
            if (message.contains('wrong-credentials')) {
              ScaffoldMessenger.of(context).hideCurrentSnackBar();
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(
                    'Thông tin đăng nhập không đúng, vui lòng kiểm tra lại.',
                  ),
                  backgroundColor: Colors.red,
                ),
              );
              return;
            }
            ScaffoldMessenger.of(context).hideCurrentSnackBar();
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text('Đăng nhập thất bại! Lỗi: $message'),
                backgroundColor: Colors.red,
              ),
            );
            return;
          },
          orElse: () {},
        );
      },
      child: Scaffold(
        appBar: AppBar(title: const Text('Đăng nhập Admin')),
        body: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                height: 160,
                width: 160,
                child: Image.asset('assets/images/LOGOOFFICIAL.png'),
              ),
              const SizedBox(height: 16),
              Text(
                'Nhập form để đăng nhập',
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  color: Theme.of(context).primaryColor,
                ),
              ),
              const SizedBox(height: 16),
              Form(
                key: key,
                child: Column(
                  children: [
                    TextFieldRequired(
                      label: 'Tên đăng nhập',
                      hintText: 'Nhập tên đăng nhập',
                      isDisabled: false,
                      isRequired: true,
                      controller: _usernameController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Tên đăng nhập không được bỏ trống';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 20),
                    TextFieldRequired(
                      label: 'Mật khẩu',
                      hintText: 'Nhập mật khẩu',
                      isDisabled: false,
                      isRequired: true,
                      controller: _passwordController,
                      isPassword: true,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Mật khẩu không được bỏ trống';
                        }
                        return null;
                      },
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        onPressed: () {},
                        child: const Text('Quên mật khẩu?'),
                      ),
                    ),
                    const SizedBox(height: 8),
                    SizedBox(
                      width: double.infinity,
                      child: FilledButton(
                        onPressed: _isProcessing ? null : _onSubmit,
                        child:
                            _isProcessing
                                ? ProcessingButtonWidget(
                                  loadingMessage: 'Đang đăng nhập...',
                                )
                                : const Text('Đăng nhập'),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
