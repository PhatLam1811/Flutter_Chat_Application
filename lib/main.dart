import 'package:flutter/material.dart';
import 'package:flutter_chat_app/view/screens/home_screen.dart';
import 'package:flutter_chat_app/view/screens/login_screen.dart';
import 'package:flutter_chat_app/view/screens/menu_screen.dart';

void main() => runApp(const MyChatApp());

class MyChatApp extends StatelessWidget {
  const MyChatApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/login',
      routes: {
        '/login': (context) => const LoginScreen(),
        '/home': (context) => const HomeScreen(),
        '/menu': (context) => const MenuScreen(),
      },
    );
  }
}
