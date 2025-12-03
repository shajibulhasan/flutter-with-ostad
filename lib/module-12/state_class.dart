import 'package:flutter/material.dart';

class StateClass extends StatefulWidget {
  const StateClass({super.key});


  @override
  State<StateClass> createState() => _StateClassState();
}

class _StateClassState extends State<StateClass> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('State Class'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text(counter.toString() , style: TextStyle(fontSize: 60) ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(onPressed: (){
                  setState(() {
                    counter++;
                  });
                }, icon: Icon(Icons.add)),
                IconButton(onPressed: (){
                  setState(() {
                    counter--;
                  });
                }, icon: Icon(Icons.remove)),
              ],
            )
          ],
        ),
    );
  }
}
