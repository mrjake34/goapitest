import 'package:flutter/material.dart';
import '../../products/models/product_model.dart';
import '../../src/bottom_sheet/custom_bottom_sheet.dart';
import 'edit_product_name.dart';

class ProductDetailPage extends StatelessWidget {
  const ProductDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    final ProductModel productModel = ModalRoute.of(context)!.settings.arguments as ProductModel;
    final labelLarge = Theme.of(context).textTheme.labelLarge;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product Detail'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Expanded(
                  flex: 5,
                  child: Text(
                    'Name: ${productModel.name}',
                    style: labelLarge,
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: IconButton(
                    onPressed: () async => await CustomBottomSheet.showBottomSheet(
                      context: context,
                      widget: EditProductName(
                        id: productModel.productID,
                      ),
                    ),
                    icon: const Icon(
                      Icons.edit,
                    ),
                  ),
                ),
              ],
            ),
            Text(
              'Description: ${productModel.desc}',
              style: labelLarge,
            ),
            Text(
              'Price: ${productModel.price}',
              style: labelLarge,
            ),
            Text(
              'Count in Stock: ${productModel.count}',
              style: labelLarge,
            ),
          ],
        ),
      ),
    );
  }
}
