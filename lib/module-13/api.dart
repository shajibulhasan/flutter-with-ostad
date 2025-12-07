import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
class ApiCall extends StatefulWidget {
  const ApiCall({super.key});

  @override
  State<ApiCall> createState() => _ApiCallState();
}

class _ApiCallState extends State<ApiCall> {
  List products = [];
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    fetchProducts();
  }

  Future<void> fetchProducts() async {
    final url = Uri.parse('http://35.73.30.144:2008/api/v1/ReadProduct');
    final response = await http.get(url);
    if(response.statusCode == 200) {
      final jsonResponse = jsonDecode(response.body);
      setState(() {
        products = jsonResponse['data'];
        isLoading = false;
      });
    } else {
      throw Exception('Failed to load products');
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('API Call')),
      body: isLoading ? Center(child: CircularProgressIndicator()) : GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1,
          crossAxisSpacing: 10
        ),
        itemCount: products.length,
        itemBuilder: (context, index) {
          return Card(
            child: Container(
              child: Column(
                children: [
                  SizedBox(height: 10),
                  SizedBox(
                    height: 100,
                    width: 100,
                    child: Image.network(
                      products[index]['Img'].toString(),
                      fit: BoxFit.cover,
                    ),
                  ),
                  Text(
                    products[index]['ProductName'].toString(),
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text("Price: \$${products[index]['UnitPrice'].toString()} | QTY : ${products[index]['Qty'].toString()}"),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
