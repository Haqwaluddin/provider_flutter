import 'dart:math';

import 'package:flutter/material.dart';
import 'package:provider_flutter/models/product.dart';

class Products with ChangeNotifier{

  // List<Product> _allproduct = [];
  final List<Product> _allproduct = List.generate(
    25,
        (index) {
      return Product(
        id: "id_${index + 1}",
        title: "Product ${index + 1}",
        description: 'Ini adalah deskripsi produk ${index + 1}',
        price: 10 + Random().nextInt(100).toDouble(),
        imageUrl: 'https://picsum.photos/id/$index/200/300',
      );
    },
  );

  List<Product> get allproduct{
    return [..._allproduct];
  }

  Product findById (productId){
    return _allproduct.firstWhere((prod_id) => prod_id.id == productId);
  }
  // void addProduct(){
  //   _allproduct.add(value);
  //   notifyListeners();
  // }
}