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
        body: const Padding(
          padding: EdgeInsets.all(20),
          child: DecorationTextWidget(),
        ),
      ),
    );
  }
}


class DecorationTextWidget extends StatelessWidget {
  const DecorationTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'INI KALIMAT ADA GARIS BAWAHNYA',
          style: TextStyle(
            fontSize: 20,
            decoration: TextDecoration.underline,
          ),
        ),

        SizedBox(height: 20),

        Text(
          'TEKS INi DICORET',
          style: TextStyle(
            fontSize: 20,
            decoration: TextDecoration.lineThrough,
          ),
        ),

        SizedBox(height: 20),

        Text(
          'BACKGROUND',
          style: TextStyle(
            fontSize: 20,
            backgroundColor: Colors.pink,
          ),
        ),

        SizedBox(height: 20),

        Text(
          'PECEL LELE PAK WARTONO',
          style: TextStyle(
            fontSize: 5 5,
            color: Colors.redAccent,
            shadows: [
              Shadow(
                offset: Offset(3, 3),
                blurRadius: 5,
                color: Colors.black54,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
