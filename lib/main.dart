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
          'PECEL LELE PAK WARTONO',
          style: TextStyle(
            fontSize: 22,
            decoration: TextDecoration.underline,
          ),
        ),

        SizedBox(height: 20),

        Text(
          'HARGA PROMO',
          style: TextStyle(
            fontSize: 22,
            decoration: TextDecoration.overline,
          ),
        ),

        SizedBox(height: 20),

        Text(
          'HARGA NORMAL Rp25.000',
          style: TextStyle(
            fontSize: 22,
            decoration: TextDecoration.lineThrough,
          ),
        ),

        SizedBox(height: 20),

        Text(
          'PAKET HEMAT Rp15.000',
          style: TextStyle(
            fontSize: 22,
            color: Colors.green,
            decoration: TextDecoration.underline,
            decorationColor: Colors.red,
            decorationThickness: 3,
          ),
        ),

        SizedBox(height: 20),

        Text(
          'MENU FAVORIT',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            decoration: TextDecoration.underline,
            decorationStyle: TextDecorationStyle.dashed,
          ),
        ),
      ],
    );
  }
}
