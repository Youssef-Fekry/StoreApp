import 'dart:convert';

import 'package:store_app/models/Product_model.dart';
import 'package:http/http.dart' as http;

class AllProductServices {
  Future<List<productmodel>> getALLProducts() async {
    http.Response response = await http.get(
      Uri.parse('https://fakestoreapi.com/products'),
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
