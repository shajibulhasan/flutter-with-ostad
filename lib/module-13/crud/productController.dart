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
}