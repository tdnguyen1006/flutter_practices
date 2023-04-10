import 'package:flutter_practices/features/Dashboard/screens/dashboard.dart';
import 'package:flutter_practices/features/Stock/screens/stock_index.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(routes: [
  GoRoute(
    path: "/",
    builder: (context, state) => const DashboardPage(),
  ),
  GoRoute(
    path: "/stock",
    builder: (context, state) => const StockIndexPage(),
  ),
]);
