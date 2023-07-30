import 'package:flutter/material.dart';
import 'package:goapitest/base/utils/navigation/navigation_service.dart';
import 'package:goapitest/base/utils/navigation/routers.dart';
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
            padding: const EdgeInsets.only(bottom: 15),
            itemBuilder: (context, index) {
              final products = value.getProductModel;
              return GestureDetector(
                onTap: () {
                  NavigationService.instance.navigateToPage(path: RoutersConstants.productDetail, data: products[index]);
                },
                child: ListTile(
                  leading: SizedBox(
                    height: 50,
                    width: 50,
                    child: Image.network(
                      products[index].image ?? '',
                      fit: BoxFit.contain,
                      errorBuilder: (context, error, stackTrace) {
                        return const Icon(Icons.image_not_supported);
                      },
                    ),
                  ),
                  title: Text(
                    products[index].name ?? '',
                    softWrap: true,
                    overflow: TextOverflow.ellipsis,
                  ),
                  subtitle: Text(
                    products[index].desc ?? '',
                    maxLines: 2,
                    softWrap: true,
                    overflow: TextOverflow.ellipsis,
                  ),
                  trailing: Text(
                    '${products[index].price?.toStringAsFixed(2) ?? 0}',
                  ),
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
