

import 'package:batch_13/module-13/crud/productController.dart';
import 'package:flutter/material.dart';
class Crud extends StatefulWidget {
  const Crud({super.key});

  @override
  State<Crud> createState() => _CrudState();
}

class _CrudState extends State<Crud> {
  Productcontroller productcontroller = Productcontroller();


  @override
  void initState() {
    super.initState();
    fetchProducts();
  }

  Future fetchProducts() async {
    await productcontroller.fetchProducts();
    if(mounted) setState(() {
      
    });
  }

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('API Call')),
      body: productcontroller.isLoading ? Center(child: CircularProgressIndicator()) : GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1,
          crossAxisSpacing: 10
        ),
        itemCount: productcontroller.products.length,
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
                      productcontroller.products[index].img.toString(),
                      fit: BoxFit.cover,
                    ),
                  ),
                  Text(
                    productcontroller.products[index].productName.toString(),
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text("Price: \$${productcontroller.products[index].totalPrice.toString()} | QTY : ${productcontroller.products[index].qty.toString()}"),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
