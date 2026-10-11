
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
          title: const Text("Text Alignment"),
          centerTitle: true,
        ),
        body: const Padding(
          padding: EdgeInsets.all(20),
          child: AlignmentTextWidget(),
        ),
      ),
    );
  }
}

class AlignmentTextWidget extends StatelessWidget {
  const AlignmentTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
      ),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'RATA KIRI',
            textAlign: TextAlign.left,
            style: TextStyle(fontSize: 20),
          ),

          SizedBox(height: 20),

          Text(
            'RATA TENGAH',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20),
          ),

          SizedBox(height: 20),

          Text(
            'RATA KANAN',
            textAlign: TextAlign.right,
            style: TextStyle(fontSize: 20),
          ),

          SizedBox(height: 20),

          Text(
            'pecel lele adalah menu favorit. '
                'menu ada ayam goreng, ikan lele, '
                'nasi putih, dan sambal yang enak.',
            textAlign: TextAlign.justify,
            style: TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}
