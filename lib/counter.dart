import 'package:flutter/material.dart';
import 'package:incre_decre_num/counter_provider.dart';
import 'package:provider/provider.dart';

class Counterscreen extends StatefulWidget{
   const Counterscreen ({super.key});
  @override  
  State<Counterscreen> createState()=> _CounterscreenState();
}
class _CounterscreenState extends State<Counterscreen>{
    @override  
  Widget build (BuildContext context){
    final counterProvider= Provider.of<CounterProvider>(context);
    return Scaffold(
      appBar: AppBar(title: Text("counter app with provider"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("You have pushed the button this many times:"),
            Text("${counterProvider.count}"),
          ],
        ),
      ),
      floatingActionButton:Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed:counterProvider.increment,
            child:Icon(Icons.add), 
          ),
          SizedBox(width: 10),
          FloatingActionButton(onPressed: counterProvider.decrement,
          child: Icon(Icons.remove),
          ),
        ],
      ));
  }
  }
