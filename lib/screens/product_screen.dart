import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_project_2/repositories/product_repository.dart';

class ProductsScreen extends StatefulWidget {
  const ProductsScreen({super.key});

  @override
  State<ProductsScreen> createState() => _ProductsScreenState();
}

class _ProductsScreenState extends State<ProductsScreen> {
  final ProductRepository _repository=ProductRepository();

  @override
  void initState(){
    _fetchProducts();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Shopping App"),
        centerTitle: true,
        actions: [IconButton(onPressed: () {}, icon: Icon(CupertinoIcons.bag))],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        child: Column(
          children: [
            CupertinoSearchTextField(
              prefixIcon: Icon(CupertinoIcons.search),
              padding: EdgeInsets.all(12),
              style: GoogleFonts.poppins(),
            ),
            Expanded(
              child: GridView.count(
                shrinkWrap: true,
                padding: EdgeInsets.only(top: 15),
                crossAxisCount: 2,
                crossAxisSpacing: 15,
                mainAxisSpacing: 15,
                children: [
                  for (int i = 0; i < 20; i++)
                    Placeholder()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
  void _fetchProducts(){
    final result = _repository.fetchProducts();
    }

}