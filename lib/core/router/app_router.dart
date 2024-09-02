import 'package:flutter_task/feat/home/presentation/ui/home_page.dart';
import 'package:flutter_task/feat/login/presentation/ui/login_page.dart';
import 'package:flutter_task/feat/register/presentation/ui/register_page.dart';
import 'package:go_router/go_router.dart';
import '../../feat/login/domain/entity/user.dart';


final router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      name: 'login',
      path: '/',
      builder: (context, state) => LoginPage(),
    ),
    GoRoute(
      name: 'register',
      path: '/register',
      builder: (context, state) => RegiserPage(),
    ),
    GoRoute(
      name: 'home',
      path: '/home',
      builder: (context, state) {
        final UserAccount user = state.extra as UserAccount;
        return HomeScreen(user: user);
      },
    ),
  ],
);
