import 'package:counter_app/provider/counter_provieder.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Counter",
            style: TextStyle(fontSize: 20),
          ),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Consumer<CounterProvider>(
                builder: (context, value, child) => Text(
                  "${value.i}",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              ElevatedButton(onPressed: (){
               CounterProvider cn=context.read<CounterProvider>();
               cn.increment();
              }, child: Icon(Icons.add)),
              ElevatedButton(onPressed: (){
                CounterProvider cn=context.read<CounterProvider>();
                cn.decrement();
              }, child: Icon(Icons.remove)),
              ElevatedButton(onPressed: (){
                CounterProvider cn=context.read<CounterProvider>();
                cn.x2();
              }, child: Text("2x")),
              ElevatedButton(onPressed: (){
                CounterProvider cn=context.read<CounterProvider>();
                cn.x3();
              }, child: Text("3x")),
              ElevatedButton(onPressed: (){
                CounterProvider cn=context.read<CounterProvider>();
                cn.x4();
              }, child: Text("4x")),
              ElevatedButton(onPressed: (){
                CounterProvider cn=context.read<CounterProvider>();
                cn.x5();
              }, child: Text("5x")),
            ],
          ),
        ),
        ),
    );
  }
}
