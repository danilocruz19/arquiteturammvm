import 'package:flutter/material.dart';

import 'package:mvvc_arquitetura/src/home/home_controller.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = HomeController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculo IMC'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              onChanged: controller.setAltura,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), labelText: 'Altura'),
            ),
            SizedBox(height: 10),
            TextField(
              onChanged: controller.setPeso,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), labelText: 'Peso'),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                controller.calculateImc();
              },
              child: Text("Calcular"),
            ),
            SizedBox(height: 30),
            AnimatedBuilder(
                animation: controller,
                builder: (context, child) {
                  return Text(controller.result);
                })
          ],
        ),
      ),
    );
  }
}
