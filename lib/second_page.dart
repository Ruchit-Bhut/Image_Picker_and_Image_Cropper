import 'dart:io';

import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key, required this.file});

  final File file;

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Show Image Page'),
        centerTitle: true,
        elevation: 0,
      ),
      body: Center(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(100.0),
          child: Image.file(
            widget.file,
            height: 300.0,
            width: 300.0,
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
