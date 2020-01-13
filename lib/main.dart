import 'package:flutter/material.dart';
import 'package:xylophone/components/XylophoneLayout.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: XylophoneLayout().getXylophoneKeys(),
          ),
        ),
      ),
    );
  }
}
