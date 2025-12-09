import 'dart:convert';

import 'package:batch_13/module-13/crud/model/productModel.dart';
import 'package:http/http.dart' as http;
import 'utils/urls.dart';

class Productcontroller {
  List<Data> products = [];
  bool isLoading = true;

  Future fetchProducts() async {
    final response = await http.get(
      Uri.parse(Urls.readProduct),
    );
    if (response.statusCode == 200) {
      isLoading = false;
      final data = jsonDecode(response.body);

      ProductModel model = ProductModel.fromJson(data);
      products = model.data ?? [];
    } 
  }


  Future<bool> createProduct(Data data) async {
    final response = await http.post(
      Uri.parse(Urls.createProduct),
      headers: {
        "Content-Type": "application/json",
      },
      body: jsonEncode(
        {
          "ProductName": data.productName,
          "ProductCode": DateTime.now().millisecondsSinceEpoch,
          "UnitPrice": data.unitPrice,
          "TotalPrice": data.totalPrice,
          "Qty": data.qty,
          "Img": data.img,
        }
      ),
    );
    
    print(response.body);
    
    if (response.statusCode == 200) {
      return true;
    } else {
      return false;
    }
  }


  Future<bool>deleteProduct(String id) async {
    final response = await http.get(
      Uri.parse(Urls.deleteProduct(id)),
    );
    if (response.statusCode == 200) {
      return true;
    } else {
      return false;
    }
  }
}