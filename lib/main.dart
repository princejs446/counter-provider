import 'package:flutter/material.dart';
import 'package:incre_decre_num/counter.dart';
import 'package:incre_decre_num/counter_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context)=>CounterProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Counterscreen(),
      ),
    );
  }
}

