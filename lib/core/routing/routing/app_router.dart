import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'dashboard_routes.dart';

final GlobalKey<NavigatorState> rootNavigatorKey = GlobalKey<NavigatorState>();

final GoRouter appRouter =
    GoRouter(initialLocation: '/dashboard', routes: [dashboardRoute]);
