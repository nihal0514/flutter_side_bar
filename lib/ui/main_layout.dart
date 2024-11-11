import 'package:flutter/material.dart';
import 'package:flutterdemosidebar/ui/side_bar/side_bar.dart';
import 'package:get/get.dart';

import '../controller/sidebar_controller.dart';
import 'app_bar/custom_app_bar.dart';

class MainLayout extends StatefulWidget {
  final Widget child;

  const MainLayout({super.key, required this.child});

  @override
  State<MainLayout> createState() => _MainLayoutState();
}

class _MainLayoutState extends State<MainLayout> {
  final sidebarController = Get.put(SidebarController());


  @override
  void initState() {
    super.initState();
    sidebarController.updatingIndexes(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          bool isWideScreen = constraints.maxWidth >= 1000;
          // Keep the sidebar open by default on wide screens
          if (isWideScreen && !sidebarController.isSidebarOpen.value) {
            sidebarController.isSidebarOpen.value = true;
          }
          return Row(
            children: [
              // Sidebar Section
              Obx(() {
                return sidebarController.isSidebarOpen.value
                    ? Sidebar(
                        onSelect: (index) =>
                            sidebarController.selectPage(index, context),
                        selectedIndex: sidebarController.selectedIndex.value,
                      )
                    : const SizedBox.shrink();
              }),
              Expanded(
                  child: Column(
                children: [
                  const CustomAppBar(greeting: "Good morning,", heading: "User"),
                  Expanded(child: widget.child),
                ],
              )),
            ],
          );
        },
      ),
    );
  }
}
