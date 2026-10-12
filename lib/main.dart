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
          title: const Text("TextScaler"),
          centerTitle: true,
        ),
        body: const Padding(
          padding: EdgeInsets.all(20),
          child: TextScalerWidget(),
        ),
      ),
    );
  }
}

class TextScalerWidget extends StatelessWidget {
  const TextScalerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'GlOBAL INSTITUTE',
          textScaler: TextScaler.linear(9.0),
          style: TextStyle(fontSize: 10),
        ),

        const SizedBox(height: 20),

        const Text(
          'DHANI KUSUMA WARDANA PUTRA',
          textScaler: TextScaler.linear(3),
          style: TextStyle(fontSize: 10),
        ),

        const SizedBox(height: 20),

        const Text(
          'INDONESIA',
          textScaler: TextScaler.linear(3.0), // untuk megatur skalanya misal ukuran font 20 kalo scale nya 3 bakal 3x lebih besar
          style: TextStyle(fontSize: 20), //ngatur ukuran dasar fontnya
        ),
      ],
    );
  }
}