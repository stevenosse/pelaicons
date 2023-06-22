import 'package:flutter/material.dart';
import 'package:pelaicons/pelaicons.dart';

void main(List<String> args) {
  runApp(ExampleApp());
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
    return Scaffold(
      body: Center(
        child: Wrap(
          runSpacing: 10.0,
          spacing: 10.0,
          children: const [
            Icon(Pelaicons.activities_1_light_outline),
            Icon(Pelaicons.headphone_light_outline),
            Icon(Pelaicons.notification_1_svg_bold),
            Icon(Pelaicons.palette_svg_bold),
            Icon(Pelaicons.volume_down_2_light_outline),
            Icon(Pelaicons.microphone_off_light_outline),
          ],
        ),
      ),
    );
  }
}
