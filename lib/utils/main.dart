import 'package:flutter/material.dart';
import 'package:flutter_test_hyerim/router/router.dart';
import 'package:flutter_test_hyerim/screens/splash_screen.dart';
import 'constant.dart';
import 'package:flutter_test_hyerim/utils/login_state.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> main() async {
  final state = LoginState(await SharedPreferences.getInstance());
  state.checkLoggedIn();
  runApp(MyApp(loginState: state));
}

class MyApp extends StatelessWidget {
  final LoginState loginState;
  
  const MyApp({Key? key, required this.loginState}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<LoginState>(
          lazy: false,
          create: (BuildContext createContext)=>loginState,
        ),
        Provider<MyRouter>(
          lazy: false,
          create: (context) => MyRouter(loginState),
        )
      ],
      child: Builder(
        builder: (context) {
          final router = Provider.of<MyRouter>(context, listen: false).router;
          return MaterialApp.router(
              theme: ThemeData(
                primaryColor: Colors.blue,
                textButtonTheme: TextButtonThemeData(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.blue,
                    primary: Colors.white,
                    fixedSize: Size(200,50),
                    textStyle: TextStyle(fontSize: 25, fontFamily: 'cheolpil',fontWeight: FontWeight.bold),
                    minimumSize: Size(50,50))
                ),
              ),
            routerDelegate: router.routerDelegate,
            routeInformationProvider: router.routeInformationProvider,
            routeInformationParser: router.routeInformationParser,
          );
        }
      ),
    );
  }
}
