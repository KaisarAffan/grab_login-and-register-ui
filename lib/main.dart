import 'package:flutter/material.dart';
import 'package:grab_ui/login_page.dart';
import 'package:grab_ui/register_page/register_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme:
            ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 9, 207, 52)),
        useMaterial3: true,
      ),
      home: LoginPage(),
    );
  }
}
