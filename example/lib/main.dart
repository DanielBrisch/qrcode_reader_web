import 'package:flutter/material.dart';
import 'package:qrcode_reader_web/qrcode_reader_web.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<QRCodeCapture> list = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Example App"),
      ),
      body: Column(
        children: [
          QRCodeReaderTransparentWidget(
            onDetect: (QRCodeCapture capture) =>
                setState(() => list.add(capture)),
            targetSize: 250,
            radius: 20,
          ),
        ],
      ),
    );
  }
}
