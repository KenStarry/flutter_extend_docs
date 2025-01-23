import 'package:flutter_extend_docs/features/dashboard/presentation/dashboard_page.dart';
import 'package:go_router/go_router.dart';

final dashboardRoute = GoRoute(
    path: '/dashboard',
    name: 'dashboard',
    builder: (context, state) => DashboardPage());
