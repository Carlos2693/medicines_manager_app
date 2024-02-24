import 'package:go_router/go_router.dart';

import 'package:medicines_manager_app/presentation/view/view.dart';

final appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const MedicineScreen(),
    ),
    GoRoute(
      path: '/register',
      builder: (context, state) => const RegisterScreen(),
    )
  ]
);