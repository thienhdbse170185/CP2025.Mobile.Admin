import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:smart_farm_admin/src/view/widgets/custom_app_bar.dart';
import 'package:smart_farm_admin/src/view/widgets/linear_icons.dart';

class TestNotificationWidget extends StatelessWidget {
  const TestNotificationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        leading: IconButton(
          onPressed: () {
            context.pop();
          },
          icon: LinearIcons.arrowBackIcon,
        ),
        title: const Text('Test thông báo'),
      ),
      body: Center(child: const Text('Màn hình test thông báo')),
    );
  }
}
