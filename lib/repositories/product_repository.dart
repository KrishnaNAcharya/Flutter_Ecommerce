import 'dart:convert';
import 'package:http/http.dart';
import 'package:my_project_2/models/product.dart';

class ProductRepository{
  Future<List<Product>> fetchProducts() async{
    final String url ="https://dummyjson.com/products";
    final Uri uri = Uri.parse(url);
    final Response response =await get(uri);
    final data = jsonDecode(response.body);
    final jsonProducts= data['products'];
    final List<Product> products= jsonProducts.map<Product>(Product.fromJson).toList();
    print(products);
    return[];
    }
}