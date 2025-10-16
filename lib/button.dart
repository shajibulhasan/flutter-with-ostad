import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Button",
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 30),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              onPressed: () {},
              child: Text("Submit"),
            ),
            SizedBox(height: 30),
            SizedBox(
              width: 300,
              height: 50,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
                child: Text("Click me"),
              ),
            ),
            SizedBox(height: 30),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                  backgroundColor: Colors.green,
                  foregroundColor: Colors.white,
                ),
                child: Text("Cancel"),
              ),
            ),
            SizedBox(height: 30),
            TextButton(
              onPressed: () {
                print("Read more");
              },
              style: TextButton.styleFrom(
                foregroundColor: Colors.black,
                backgroundColor: Colors.greenAccent,
              ),
              child: Text("Read more"),
            ),
            SizedBox(height: 30),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.delete, color: Colors.red, size: 50),
            ),
            SizedBox(height: 30),
            GestureDetector(
              onLongPress: () {
                print("On Long Press");
              },
              onDoubleTap: () {
                print("On Double Tap");
              },
              onTap: () {
                print("On Tap");
              },
              child: Text("This is text", style: TextStyle(fontSize: 30)),
            ),
            SizedBox(height: 30),
            InkWell(
              onTap: () {
                print("InkWell On clicked");
              },
              onDoubleTap: () {
                print("InkWell On Double Tap");
              },
              onLongPress: () {
                print("InkWell On Long Press");
              },
              child: Text(
                "Test",
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 30),
            FloatingActionButton(
              onPressed: () {},
              child: Icon(Icons.add),
              backgroundColor: Colors.green,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
      ),
    );
  }
}
