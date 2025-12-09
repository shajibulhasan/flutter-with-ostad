

import 'package:batch_13/module-13/crud/model/productModel.dart';
import 'package:batch_13/module-13/crud/productController.dart';
import 'package:flutter/material.dart';
class Crud extends StatefulWidget {
  const Crud({super.key});

  @override
  State<Crud> createState() => _CrudState();
}

class _CrudState extends State<Crud> {
  Productcontroller productController = Productcontroller();


  @override
  void initState() {
    super.initState();
    fetchProducts();
  }

  Future fetchProducts() async {
    await productController.fetchProducts();
    if(mounted) {
      setState(() {});
    }
  }

  productDialog() {
    TextEditingController nameController = TextEditingController();
    TextEditingController unitPriceController = TextEditingController();
    TextEditingController totalPriceController = TextEditingController();
    TextEditingController qtyController = TextEditingController();
    TextEditingController imgController = TextEditingController();
    showDialog(
      context: context,
      builder: (context)=>AlertDialog(
        title: Text('Add Product'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              controller: nameController,
              decoration: InputDecoration(
                labelText: 'Product Name',
              ),
            ),
            SizedBox(height: 10,),
            TextField(
              controller: unitPriceController,
              decoration: InputDecoration(
                labelText: 'Unit Price',
              ),
            ),
            SizedBox(height: 10,),
            TextField(
              controller: totalPriceController,
              decoration: InputDecoration(
                labelText: 'Total Price',
              ),
            ),
            SizedBox(height: 10,),
            TextField(
              controller: qtyController,
              decoration: InputDecoration(
                labelText: 'Quantity',
              ),
            ),
            SizedBox(height: 10,),
            TextField(
              controller: imgController,
              decoration: InputDecoration(
                labelText: 'Image URL',
              ),
            ),

          ],
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text('Cancel'),
          ),
          ElevatedButton(
            onPressed: () async {
              productController.createProduct((Data(
                productName: nameController.text,
                unitPrice: int.tryParse(unitPriceController.text),
                totalPrice: int.tryParse(totalPriceController.text),
                qty: int.tryParse(qtyController.text),
                img: imgController.text,
              )));
              setState(() async {
                await fetchProducts();
              });

              Navigator.of(context).pop();
            },
            child: Text('Add'),
          ),
        ],
      )
    );
  }

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('API Call with Model')),
      body: productController.isLoading ? Center(child: CircularProgressIndicator()) : GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.8,
          crossAxisSpacing: 10
        ),
        itemCount: productController.products.length,
        itemBuilder: (context, index) {
          final product = productController.products[index];
          return Card(
            child: Container(
              child: Column(
                children: [
                  SizedBox(height: 10),
                  SizedBox(
                    height: 100,
                    width: 100,
                    child: Image.network(
                      product.img.toString(),
                      fit: BoxFit.cover,
                    ),
                  ),
                  Text(
                    product.productName.toString(),
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text("Price: \$${product.totalPrice.toString()} | QTY : ${product.qty.toString()}"),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      IconButton(
                        icon: Icon(Icons.edit, color: Colors.blue,),
                        onPressed: () {
                          productDialog();
                        },
                      ),
                      IconButton(
                        icon: Icon(Icons.delete, color: Colors.red,),
                        onPressed: () async {
                          await productController.deleteProduct(product.sId.toString()).then((onValue) async {
                            if(onValue) {
                              await fetchProducts();
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(content: Text('Product Deleted Successfully'))
                              );
                            }else{
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(content: Text('Failed to Delete Product'))
                              );
                            }
                          });
                        },
                      ),
                    ],
                  )
                ],
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          productDialog();
        },
        child: Icon(Icons.add),
      )
    );
  }
}
