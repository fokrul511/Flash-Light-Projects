import 'package:flash_light_projects/screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:torch_controller/torch_controller.dart';

void main() {
  TorchController().initialize();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Torch Light',
      debugShowCheckedModeBanner: true,
      home: HomeScreen(),
    );
  }
}
