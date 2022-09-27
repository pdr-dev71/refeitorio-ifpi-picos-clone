import 'package:flutter/material.dart';
import 'package:refeitorio_ifpi_picos_clone/about_page.dart';
import 'package:refeitorio_ifpi_picos_clone/home.dart';
import 'package:refeitorio_ifpi_picos_clone/login_page.dart';
import 'package:refeitorio_ifpi_picos_clone/menu_page.dart';
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
        'About': ((context) => const About())
      },
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}
