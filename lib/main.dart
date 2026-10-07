import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("ini header"),
          centerTitle: true,
        ),
        body: Center(
          child: BasicTextWidget(),
        ),
      ),
    );
  }
}

class BasicTextWidget extends StatelessWidget {
  const BasicTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      'testing text',
      style: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.w900,
        fontStyle: FontStyle.italic,
        fontFamily: 'Arial',
        decoration: TextDecoration.underline,
        letterSpacing: 5,
        color: Colors.purpleAccent,
        shadows: [
          Shadow(
            blurRadius: 10,
            offset: Offset(3, 3),
            color: Colors.black,
          ),
        ],
      ),
    );
  }
}
