import 'package:flutter/material.dart';

class CounterFunctionsScreen extends StatefulWidget {
  const CounterFunctionsScreen({super.key});

  @override
  State<CounterFunctionsScreen> createState() => _CounterFunctionsScreenState();
}

class _CounterFunctionsScreenState extends State<CounterFunctionsScreen> {
  int clickCounter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Counter Functions Screen Title:')),
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                clickCounter = 0;
              });
            },
            icon: const Icon(Icons.refresh_rounded),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('$clickCounter', style: const TextStyle(fontSize: 120, fontWeight: FontWeight.w100)),
            Text((clickCounter == 1) ? 'Click' : 'Clicks', style: const TextStyle(fontSize: 20))
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          CustomFloatingActionButton(
            icon: Icons.refresh_outlined, 
            onPressed: () { 
              setState(() {
                clickCounter=0;      
              });
            }
          ),
          const SizedBox(height: 10),
          CustomFloatingActionButton(
            icon: Icons.plus_one,
            onPressed: () {
              setState(() {
                clickCounter++;
              });
            },
          ),
          const SizedBox(height: 10),
          CustomFloatingActionButton(
            icon: Icons.exposure_minus_1_rounded,
            onPressed: () {
              setState(() {
                if(clickCounter == 0) return;
                clickCounter --;
              });
            },
          ),
        ],
      )
    );
  }
}

class CustomFloatingActionButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback? onPressed;

  const CustomFloatingActionButton({
    super.key,
    required this.icon,
    this.onPressed
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      //shape: const StadiumBorder(), para poner el boton redondo
      elevation: 5,
      backgroundColor: Colors.indigo[600],
      foregroundColor: Colors.white70,
      onPressed: onPressed,
      child: Icon(icon),
    );
  }
}