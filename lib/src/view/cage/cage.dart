import 'package:flutter/material.dart';

class CageScreen extends StatefulWidget {
  final String cageId;
  const CageScreen({super.key, required this.cageId});

  @override
  State<CageScreen> createState() => _CageScreenState();
}

class _CageScreenState extends State<CageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Cage')),
      body: Center(
        child: Column(children: [const Text('Màn hình chi tiết chuồng')]),
      ),
    );
  }
}
