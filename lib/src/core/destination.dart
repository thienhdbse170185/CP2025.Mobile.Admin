import 'package:flutter/material.dart';

class Destination {
  final String label;
  final IconData icon;
  final IconData iconSelected;

  const Destination({
    required this.label,
    required this.icon,
    required this.iconSelected,
  });
}

const destinations = <Destination>[
  Destination(
    label: 'Trang chủ',
    icon: Icons.home_outlined,
    iconSelected: Icons.home_rounded,
  ),
  Destination(
    label: 'Cá nhân',
    icon: Icons.account_circle_outlined,
    iconSelected: Icons.account_circle_rounded,
  ),
];
