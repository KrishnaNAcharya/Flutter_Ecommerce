import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductsScreen extends StatefulWidget {
  const ProductsScreen({super.key});

  @override
  State<ProductsScreen> createState() => _ProductsScreenState();
}

class _ProductsScreenState extends State<ProductsScreen> {
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
}