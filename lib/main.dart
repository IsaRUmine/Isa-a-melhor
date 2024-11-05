import 'package:flutter/material.dart';
import 'package:rent_car_luiz/views/TelaHome.dart';

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
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 0, 156, 228)),
        useMaterial3: true,
      ),
      home: const Telahome(),
      debugShowCheckedModeBanner: false,
    );
  }
}
