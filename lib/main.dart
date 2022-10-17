import 'package:app_delivery/src/register/register_page.dart';
import 'package:app_delivery/src/utils/my_colors.dart';
import 'package:flutter/material.dart';
import 'package:app_delivery/src/login/login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Delivery App Flutter',
      initialRoute: 'login',
      routes: {
          'login':(BuildContext context) => const LoginPage(),
        'register':(BuildContext context) => const RegisterPage(),
      },
        theme: ThemeData(
            fontFamily: 'Roboto',
            colorScheme: ColorScheme.light(primary: MyColors.prymaryColor)
        ),
    );
  }
}
