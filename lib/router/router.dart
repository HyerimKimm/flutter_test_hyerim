import 'dart:js';

import 'package:flutter_test_hyerim/screens/login_screen.dart';
import 'package:flutter_test_hyerim/utils/login_state.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_test_hyerim/utils/constant.dart';

class MyRouter{
  final LoginState loginState;
  MyRouter(this.loginState);

  late final router = GoRouter(
      routes: [
        GoRoute(
            path: '/login',
            name: loginRouteName,
            builder: (context, state){
              return LoginScreen();
            }
        )
      ],
      refreshListenable: loginState,
      debugLogDiagnostics: false,
  );
}