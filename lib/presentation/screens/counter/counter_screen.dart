import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {

  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {

  int clickCounter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar (
        title: const Text('Counter Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('$clickCounter', style: const TextStyle( fontSize: 160, fontWeight: FontWeight.w100),),
            Text('click${clickCounter == 1? '':'s'}', style: const TextStyle( fontSize: 30),)
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          clickCounter++;
          setState(() {});
          /*  OTRA FORMA
            setState(() {
              clickCounter++;
            });
          */
        },
      child: const Icon(Icons.plus_one),
      ),
    );
  }
}