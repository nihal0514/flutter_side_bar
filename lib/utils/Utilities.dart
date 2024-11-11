import 'package:flutter/material.dart';

class SidebarItemModel {
  final IconData icon;
  final String label;

  SidebarItemModel({
    required this.icon,
    required this.label,
  });
}

class Data {
  static final List<SidebarItemModel> sidebarItems = [
    SidebarItemModel(icon: Icons.home, label: 'Home'),
    SidebarItemModel(icon: Icons.dashboard, label: 'Dashboard'),
    SidebarItemModel(icon: Icons.report, label: 'Reporting'),
    SidebarItemModel(
        icon: Icons.check_box_outline_blank_sharp, label: 'Templates'),
    SidebarItemModel(icon: Icons.settings, label: 'Settings'),
  ];
}
