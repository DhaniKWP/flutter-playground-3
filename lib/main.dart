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
          title: const Text("RichText dan TextSpan"),
          centerTitle: true,
        ),
        body: const Padding(
          padding: EdgeInsets.all(20),
          child: RichTextWidget(),
        ),
      ),
    );
  }
}



class RichTextWidget extends StatelessWidget {
  const RichTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        style: TextStyle(
          fontSize: 20,
          color: Colors.black,
        ),
        children: [
          TextSpan(
            text: 'nama: ',
          ),

          TextSpan(
            text: 'Dhani',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.blue,
            ),
          ),

          TextSpan(
            text: '\nstatus: ',
          ),

          TextSpan(
            text: 'mahasiswa aktif',
            style: TextStyle(
              color: Colors.green,
              fontStyle: FontStyle.italic,
            ),
          ),

          TextSpan(
            text: '\njurusan: ',
          ),

          TextSpan(
            text: 'software engineering',
            style: TextStyle(
              decoration: TextDecoration.underline,
              decorationColor: Colors.orange,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
