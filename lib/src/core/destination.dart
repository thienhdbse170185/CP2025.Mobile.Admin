import 'package:flutter/material.dart';

class Destination {
  final String label;
  final IconData icon;
  final IconData iconSelected;
  final bool isQrButton;

  const Destination({
    required this.label,
    required this.icon,
    required this.iconSelected,
    this.isQrButton = false,
  });
}

const destinations = <Destination>[
  Destination(
    label: 'Trang chủ',
    icon: Icons.home_outlined,
    iconSelected: Icons.home_rounded,
  ),
  Destination(
    label: 'Quét QR',
    icon: Icons.qr_code_scanner,
    iconSelected: Icons.qr_code_scanner,
    isQrButton: true,
  ),
  Destination(
    label: 'Cá nhân',
    icon: Icons.account_circle_outlined,
    iconSelected: Icons.account_circle_rounded,
  ),
];
