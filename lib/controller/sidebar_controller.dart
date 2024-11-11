import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';

import '../../../utils/routes/routes.dart';

class SidebarController extends GetxController {
  var isSidebarOpen = true.obs;
  var selectedIndex = 0.obs;

  void toggleSidebar() {
    isSidebarOpen.value = !isSidebarOpen.value;
  }

  void selectPage(int index,BuildContext context) {
    selectedIndex.value = index;
    switch (index) {
      case 0:
        context.go(Routes.HOME);
        break;
      case 1:
        context.go(Routes.DASHBOARD);
        break;
      case 2:
        context.go(Routes.REPORTING);
        break;
      case 3:
        context.go(Routes.TEMPLATES);
        break;
      case 4:
        context.go(Routes.SETTINGS);
        break;
      default:
        context.go(Routes.HOME);
        break;
    }

  }

  void updatingIndexes(BuildContext context){
    final routeMap = {
      Routes.HOME: 0,
      Routes.DASHBOARD: 1,
      Routes.REPORTING: 2,
      Routes.TEMPLATES: 3,
      Routes.SETTINGS: 4,
    };

    String currentRoute = GoRouter.of(context).routerDelegate.currentConfiguration.fullPath;
    selectedIndex.value = routeMap[currentRoute] ?? selectedIndex.value;
  }
  @override
  void onInit() {
    super.onInit();
    isSidebarOpen.value = true;
  }
}
