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
            child: SpacingTextWidget(),
        ),
      ),
    );
  }
}

class SpacingTextWidget extends StatelessWidget {
  const SpacingTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text(
          'APA AJAH NORMAL  ',
          style: TextStyle(
            fontSize: 20,
          ),
        ),

        SizedBox(height: 20),

        Text(
          'Ini pake letter spacing',
          style: TextStyle(
            fontSize: 20,
            letterSpacing: 5,
          ),
        ),

        SizedBox(height: 20),

        Text(
          'Aku cinta indonesia',
          style: TextStyle(
            fontSize: 20,
            wordSpacing: 10,
          ),
        ),

        SizedBox(height: 20),

        Text(
          'AYAM\nIKAN\nSAPI',
          style: TextStyle(
            fontSize: 20,
            height: 2,
          ),
        ),
      ],
    );
  }
}
