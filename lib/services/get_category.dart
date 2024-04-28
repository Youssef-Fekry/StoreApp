import 'dart:convert';

import 'package:store_app/models/Product_model.dart';
import 'package:http/http.dart' as http;

class Category {
  Future<List<productmodel>> getCategoryProducts(
      {required String categoryname}) async {
    http.Response response = await http.get(
      Uri.parse('https://fakestoreapi.com/products/category/$categoryname'),
    );

    List<dynamic> data = jsonDecode(response.body);

    List<productmodel> productList = [];

    for (int i = 0; i < productList.length; i++) {
      productList.add(
        productmodel.fromJason(data[i]),
      );
    }
    return productList;
  }
}
