import 'dart:convert';

import 'package:store_app/models/Product_model.dart';
import 'package:http/http.dart' as http;

class Category {
  Future<List<ProductModel>> getCategoryProducts(
      {required String category_name}) async {
    http.Response response = await http.get(
      Uri.parse('https://fakestoreapi.com/products/category/$category_name'),
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
