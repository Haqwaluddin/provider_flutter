import 'package:flutter/material.dart';
import 'package:provider_flutter/widgets/product_grid.dart';

import '../widgets/product_grid.dart';

class ProductsOverviewScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MyShop'),
      ),
      body: Product_Grid(),
    );
  }
}


