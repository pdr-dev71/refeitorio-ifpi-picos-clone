import 'package:flutter/material.dart';
import 'package:refeitorio_ifpi_picos_clone/about_page.dart';
import 'package:refeitorio_ifpi_picos_clone/home.dart';
import 'package:refeitorio_ifpi_picos_clone/login_page.dart';
import 'package:refeitorio_ifpi_picos_clone/menu_page.dart';
import 'package:refeitorio_ifpi_picos_clone/recover_password_page.dart';
import 'package:refeitorio_ifpi_picos_clone/register_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': ((context) => const HomeIfpi()),
        'Register': ((context) => const RegisterPage()),
        'Login': ((context) => const LoginPage()),
        'Menu': ((context) => const Menu()),
        'About': ((context) => const About()),
        'Recover': ((context) => const RecoverPassword())
      },
      theme: ThemeData(
        primarySwatch: Palette.ThemeColorApplication,
      ),
    );
  }
}

class Palette {
  static const MaterialColor ThemeColorApplication = MaterialColor(
    0xFF007065,
    <int, Color>{
      50: Color(0xff1a9483),
      100: Color(0xff33a091),
      200: Color(0xff005f52),
      300: Color(0xff1a9483),
      400: Color(0xff33a091),
      500: Color(0xff005f52),
      600: Color(0xff005f52),
      700: Color(0xff1a9483),
      800: Color(0xff33a091),
      900: Color(0xff005f52),
    },
  );
}
