import 'package:flutter/material.dart';

class Res extends StatelessWidget {
  const Res({super.key});

  @override
  Widget build(BuildContext context) {
    Size sizeScreen = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(title: const Text('Responsive Design')),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 20),
                Container(
                  width: 200,
                  height: 200,
                  color: Colors.green,
                ),
                SizedBox(height: 20),
                Container(
                  width: sizeScreen.width*0.5,
                  height: sizeScreen.height*.25,
                  color: Colors.red,
                ),
                SizedBox(height: 20,),
                Text(sizeScreen.width.toString(), style: TextStyle(fontSize: 20),),
                SizedBox(height: 10,),
                Text(sizeScreen.height.toString(), style: TextStyle(fontSize: 20),),

            ]
          ),
        ),
      ),
    );
  }
}
