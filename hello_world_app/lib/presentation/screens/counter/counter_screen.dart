// importM + tab
import 'package:flutter/material.dart';

// stles + tab
class CounterScreen extends StatelessWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Screen'),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('10', style: TextStyle(fontSize: 150, fontWeight: FontWeight.w100),),
            Text('Cantidad Click', style: TextStyle(fontSize: 20),),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () { 
          
        },
        child: const Icon(Icons.plus_one),
      ),
    );
  }
}