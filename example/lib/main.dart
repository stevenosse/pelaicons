import 'package:flutter/material.dart';
import 'package:pelaicons/pelaicons.dart';

void main(List<String> args) {
  runApp(const ExampleApp());
}

class ExampleApp extends StatelessWidget {
  const ExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Example',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Wrap(
          runSpacing: 10.0,
          spacing: 10.0,
          children: [
            Icon(Pelaicons.activities1LightOutline),
            Icon(Pelaicons.headphoneLightOutline),
            Icon(Pelaicons.notification1Bold),
            Icon(Pelaicons.notification2Bold),
            Icon(Pelaicons.volumeDown2LightOutline),
            Icon(Pelaicons.microphoneOffLightOutline),
            Icon(Pelaicons.cart1Bold),
            Icon(Pelaicons.cart2Bold),
          ],
        ),
      ),
    );
  }
}
