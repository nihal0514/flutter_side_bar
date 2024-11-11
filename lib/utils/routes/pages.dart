import 'package:flutter/material.dart';
import 'package:flutterdemosidebar/utils/routes/routes.dart';
import 'package:go_router/go_router.dart';

import '../../ui/all_screens.dart';
import '../../ui/main_layout.dart';

class AppRouter {
  final GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        redirect: (context, state) => Routes.HOME,
      ),
      ShellRoute(
        builder: (context, state, child) => MainLayout(
          child: child,
        ),
        routes: [
          GoRoute(
            path: Routes.HOME,
            pageBuilder: (context, state) => _buildPageWithTransition(
              const HomeScreen(),
              state,
            ),
          ),
          GoRoute(
            path: Routes.DASHBOARD,
            pageBuilder: (context, state) => _buildPageWithTransition(
              const DashboardPage(),
              state,
            ),
          ),
          GoRoute(
            path: Routes.REPORTING,
            pageBuilder: (context, state) => _buildPageWithTransition(
              const ReportingPage(),
              state,
            ),
          ),
          GoRoute(
            path: Routes.TEMPLATES,
            pageBuilder: (context, state) => _buildPageWithTransition(
              const TemplatesPage(),
              state,
            ),
          ),
          GoRoute(
            path: Routes.SETTINGS,
            pageBuilder: (context, state) => _buildPageWithTransition(
              const SettingsPage(),
              state,
            ),
          ),
        ],
      ),
    ],
  );

  static CustomTransitionPage _buildPageWithTransition(Widget child, GoRouterState state) {
    return CustomTransitionPage(
      key: state.pageKey,
      child: child,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        return FadeTransition(
          opacity: animation,
          child: child,
        );
      },
    );
  }
}
