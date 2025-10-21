import 'package:flutter/material.dart';

class FlutterInput extends StatelessWidget {
  const FlutterInput({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController nameController = TextEditingController();
    TextEditingController phoneController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Flutter Input",
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: NetworkImage(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSUyG1A-8tCRS9x4_io_tJA8EHnva3lzqc1VQ&s'),
              height: 200,
            ),
            Image.asset('images/1.png'),
            SizedBox(height: 20),
            TextField(
              controller: nameController,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey, width: 2),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.green, width: 2),
                ),
                labelText: 'Name',
                hintText: 'Enter your name',
                labelStyle: TextStyle(fontSize: 20, color: Colors.green),
                prefixIcon: Icon(Icons.person, color: Colors.green),
                hintStyle: TextStyle(color: Colors.green),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              controller: phoneController,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey, width: 2),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.green, width: 2),
                ),
                labelText: 'Phone Number',
                hintText: 'Enter your phone number',
                labelStyle: TextStyle(fontSize: 20, color: Colors.green),
                prefixIcon: Icon(Icons.phone, color: Colors.green),
                hintStyle: TextStyle(color: Colors.grey),
              ),
            ),
            SizedBox(height: 20),
            TextField(

              controller: passwordController,
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey, width: 2),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.green, width: 2),
                ),
                labelText: 'Password',
                hintText: 'Enter your password',
                labelStyle: TextStyle(fontSize: 20, color: Colors.green),
                prefixIcon: Icon(Icons.lock, color: Colors.green),
                suffixIcon: Icon(Icons.visibility, color: Colors.green),
                hintStyle: TextStyle(color: Colors.grey),
              ),
            ),
            SizedBox(height: 30),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  onPressed: () {
                    print(nameController.text);
                    print(phoneController.text);
                    print(passwordController.text);
                    nameController.clear();
                    passwordController.clear();
                    phoneController.clear();
                  }, child: Text("Submit", style: TextStyle(fontWeight: FontWeight.bold),)),

            ),
          ],
        ),
      ),
    );
  }
}
