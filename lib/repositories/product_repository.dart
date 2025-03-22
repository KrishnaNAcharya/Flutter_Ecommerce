import 'dart:convert';
import 'package:http/http.dart';
import 'package:my_project_2/models/product.dart';

class ProductRepository{
  Future<List<Product>> fetchProducts(){
    final String url= "https://dummyjson.com/products";
    final Uri uri=Uri.parse(url);
    final Response response= await get(Uri.parse('uri'));
    jsonDecode(source)
  }
}