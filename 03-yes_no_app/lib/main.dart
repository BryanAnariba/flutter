// Usar mate + tab para generar el esqueleto
import 'package:flutter/material.dart';
import 'package:yes_no_app/config/theme/app.theme.dart';
import 'package:yes_no_app/presentation/screens/chat/chat_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      theme: AppTheme(selectedColor: 1).theme(), // quita el banner debug en el la App
      home: const ChatScreen(),
    );
  }
}