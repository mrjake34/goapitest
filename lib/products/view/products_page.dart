import 'package:flutter/material.dart';
import 'package:goapitest/products/viewmodels/product_view_model.dart';
import 'package:provider/provider.dart';

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
          return ListView.builder(
            itemBuilder: (context, index) {
              final products = value.getProductModel;
              if (products.isNotEmpty) {
                return ListTile(
                  title: Text(products[index].name ?? ''),
                  subtitle: Text(products[index].description ?? ''),
                  trailing: Text('${products[index].price ?? 0}'),
                );
              }
              return null;
            },
            itemCount: value.getProductModel.length,
          );
        },
      ),
    );
  }
}
