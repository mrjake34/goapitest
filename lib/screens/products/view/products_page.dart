import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../viewmodels/product_view_model.dart';

class ProductsPage extends StatefulWidget {
  const ProductsPage({super.key});

  @override
  State<ProductsPage> createState() => _ProductsPageState();
}

class _ProductsPageState extends State<ProductsPage> {
  @override
  void initState() {
    Provider.of<ProductProvider>(context, listen: false).setProductModel();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Products'),
      ),
      body: Consumer<ProductProvider>(
        builder: (BuildContext context, value, Widget? child) {
          if (value.getProductModel.isEmpty) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          return ListView.builder(
            itemBuilder: (context, index) {
              final products = value.getProductModel;
              return GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/product', arguments: products[index]);
                },
                child: ListTile(
                  title: Text(products[index].name ?? ''),
                  subtitle: Text(products[index].desc ?? ''),
                  trailing: Text('${products[index].price ?? 0}'),
                ),
              );
            },
            itemCount: value.getProductModel.length,
          );
        },
      ),
    );
  }
}
