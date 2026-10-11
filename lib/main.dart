
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
          title: const Text("overflowtext"),
          centerTitle: true,
        ),
        body: const Padding(
          padding: EdgeInsets.all(20),
          child: OverflowTextWidget(),
        ),
      ),
    );
  }
}


class OverflowTextWidget extends StatelessWidget {
  const OverflowTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
      ),
      child: const Text(
        'Pecel lele Pak Wartono menyediakan '
            'pecel lele, ayam goreng, bebek goreng, '
            'nasi putih, sambal, dan es teh manis '
            'dengan harga yang terjangkau.',
        maxLines: 4,
        overflow: TextOverflow.ellipsis,
        softWrap: true,
        style: TextStyle(
          fontSize: 16,
        ),
      ),
    );
  }
}
