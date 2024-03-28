import 'dart:convert';

import 'package:store_app/models/Product_model.dart';
import 'package:http/http.dart' as http;

class AllProductServices {
  Future<List<ProductModel>> getALLProducts() async {
    http.Response response = await http.get(
      Uri.parse('https://fakestoreapi.com/products'),
    );

    List<dynamic> data = jsonDecode(response.body);

    List<ProductModel> ProductList = [];

    for (int i = 0; i < ProductList.length; i++) {
      ProductList.add(
        ProductModel.fromJason(data[i]),
      );
    }
    return ProductList;
  }
}
