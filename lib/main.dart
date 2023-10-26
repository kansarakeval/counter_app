import 'package:counter_app/provider/counter_provieder.dart';
import 'package:counter_app/view/counter_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => CounterProvider(),
      child: MaterialApp(
        theme: ThemeData(useMaterial3: true),
        debugShowCheckedModeBanner: false,
        routes: {
          '/':(context) => CounterScreen(),
        }
      ),
    ),
  );
}