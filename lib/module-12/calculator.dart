import 'dart:ffi';

import 'package:batch_13/module-12/widget/button_widget.dart';
import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
   String output = "";
   double result = 0;
   String number = "";
   String operator = "";
   double oldResult = 0;

   void onButtonPressed(String value) {
    setState(() {
      if(value == 'C'){
        output = "";
        result = 0;
        oldResult = 0;
        number = "";
        operator = "";
      } else if(value == '+' || value == '-' || value == '*' || value == '/'){
        if(operator == "") {
          operator = value;
        }else {
          double num = double.tryParse(number) ?? 0;
          double out = double.tryParse(output) ?? 0;
          if(operator == '+'){
            result = out + num;
          }else if(operator == '-'){
            result = out - num;
          }else if(operator == '*'){
            result = out * num;
          }else if(operator == '/'){
            result = out / num;
          }
         output = result.toString();
         operator = value;
         number = "";
        }
      } else if(value == '='){
        double num = double.tryParse(number) ?? 0;
        double out = double.tryParse(output) ?? 0;
        if(operator == '+'){
          result = out + num;
        }else if(operator == '-'){
          result = out - num;
        }else if(operator == '*'){
          result = out * num;
        }else if(operator == '/'){
          result = out / num;
        }
      }else if(value == 'Del'){
        if(number != ""){
          number = number.substring(0, number.length - 1);
        }else{
          output = output.substring(0, output.length - 1);
        }
      }
      else {
        if(operator == ""){
          output += value;
        }else{
          number += value;
        }
      }
    });
   }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Calculator')),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Container(
                alignment: Alignment.bottomRight,
                child: Column(
                  children: [
                    Text('$output $operator $number', style: TextStyle(fontSize: 30)),
                    SizedBox(height: 10),
                    Text(
                      result.toString(),
                      style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
            Row(
              children: [
                ElevatedButtonWidget(onClick: ()=>onButtonPressed('7'),text: '7'),
                ElevatedButtonWidget(onClick: ()=>onButtonPressed('8'),text: '8'),
                ElevatedButtonWidget(onClick: ()=>onButtonPressed('9'),text: '9'),
                ElevatedButtonWidget(onClick: ()=>onButtonPressed('C'),text: 'C', color: Colors.blue),
              ],
            ),
            Row(
              children: [
                ElevatedButtonWidget(onClick: ()=>onButtonPressed('4'),text: '4'),
                ElevatedButtonWidget(onClick: ()=>onButtonPressed('5'),text: '5'),
                ElevatedButtonWidget(onClick: ()=>onButtonPressed('6'),text: '6'),
                ElevatedButtonWidget(onClick: ()=>onButtonPressed('+'),text: '+', color: Colors.blue),
              ],
            ),
            Row(
              children: [
                ElevatedButtonWidget(onClick: ()=>onButtonPressed('1'),text: '1'),
                ElevatedButtonWidget(onClick: ()=>onButtonPressed('2'),text: '2'),
                ElevatedButtonWidget(onClick: ()=>onButtonPressed('3'),text: '3'),
                ElevatedButtonWidget(onClick: ()=>onButtonPressed('-'),text: '-', color: Colors.blue),
              ],
            ),
            Row(
              children: [
                ElevatedButtonWidget(onClick: ()=>onButtonPressed('Del'), text: 'Del', color: Colors.red),
                ElevatedButtonWidget(onClick: ()=>onButtonPressed('0'),text: '0'),
                ElevatedButtonWidget(onClick: ()=>onButtonPressed('='),text: '='),
                ElevatedButtonWidget(onClick: ()=>onButtonPressed('*'),text: '*', color: Colors.blue),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
