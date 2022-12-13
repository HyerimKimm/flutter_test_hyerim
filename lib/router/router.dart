import 'package:flutter_test_hyerim/screens/create_account.dart';
import 'package:flutter_test_hyerim/screens/login_screen.dart';
import 'package:flutter_test_hyerim/utils/login_state.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_test_hyerim/utils/constant.dart';

import '../screens/error_page.dart';

class MyRouter{
  final LoginState loginState;
  MyRouter(this.loginState);

  late final router = GoRouter(
    initialLocation: '/login',
    errorBuilder: (context, state){
      return ErrorPage(error: state.error);
    },
      routes: [
        GoRoute(
            path: '/login',
            name: loginRouteName,
            builder: (context, state){
              return LoginScreen();
            }
        ),
        GoRoute(
            path: '/createAccount',
            name: createAccountRouteName,
            builder: (context, state){
              return CreateAccount();
            }
        )
      ],
      refreshListenable: loginState,
      debugLogDiagnostics: false,
  );
}