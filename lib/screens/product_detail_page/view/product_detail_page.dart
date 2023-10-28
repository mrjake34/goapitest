import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:goapitest/src/bottom_sheet/custom_bottom_sheet.dart';
import 'package:kartal/kartal.dart';
import '../../../core/utils/navigation/navigation_service.dart';
import '../../products/models/product_model.dart';

part 'image_slider.dart';

class ProductDetailPage extends StatelessWidget {
  const ProductDetailPage({
    super.key,
    required this.productModel,
  });
  final ProductModel productModel;

  @override
  Widget build(BuildContext context) {
    final labelLarge = Theme.of(context).textTheme.labelLarge;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            NavigationService.instance.navigateToBack();
          },
          icon: Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              color: Colors.blueGrey[50],
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Icon(
              Icons.arrow_back_sharp,
            ),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                color: Colors.blueGrey[50],
                borderRadius: BorderRadius.circular(10),
              ),
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  CupertinoIcons.share,
                ),
              ),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                color: Colors.blueGrey[50],
                borderRadius: BorderRadius.circular(10),
              ),
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  CupertinoIcons.bag,
                ),
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(flex: 2, child: _ImageSlider(productModel: productModel)),
          Expanded(
            flex: 3,
            child: Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 10,
                    offset: const Offset(0, -5),
                  ),
                ],
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 40,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: OutlinedButton.icon(
                                onPressed: () => CustomBottomSheet.showBottomSheet(context: context, widget: const Text('Price History')),
                                icon: const Icon(CupertinoIcons.chart_bar_alt_fill),
                                style: OutlinedButton.styleFrom(
                                  backgroundColor: context.general.colorScheme.background,
                                  side: BorderSide(
                                    color: context.general.colorScheme.outline,
                                  ),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                ),
                                label: const Text(
                                  'Price History',
                                ),
                              ),
                            ),
                            const Spacer(),
                            IconButton(
                              onPressed: () {},
                              icon: Container(
                                decoration: BoxDecoration(
                                  border: Border.all(color: context.general.colorScheme.outline),
                                ),
                                child: const Icon(
                                  Icons.remove,
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 30,
                              child: Center(
                                child: Text('1'),
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: Container(
                                decoration: BoxDecoration(
                                  border: Border.all(color: context.general.colorScheme.outline),
                                ),
                                child: const Icon(
                                  Icons.add,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(productModel.name ?? '', style: context.general.textTheme.titleLarge),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Description',
                        style: context.general.textTheme.titleMedium,
                      ),
                      Text(
                        productModel.desc ?? '',
                        style: context.general.textTheme.bodyMedium,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: context.general.colorScheme.primary,
                          foregroundColor: context.general.colorScheme.onPrimary,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        onPressed: () {},
                        child: const Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text('Read More'),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(CupertinoIcons.arrow_right),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      ExpansionTile(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        collapsedShape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        collapsedBackgroundColor: context.general.colorScheme.surfaceVariant.withOpacity(0.4),
                        backgroundColor: context.general.colorScheme.surfaceVariant.withOpacity(0.4),
                        title: Text('Specifications', style: labelLarge),
                        children: [
                          ListView.builder(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemBuilder: (context, index) {
                              return ListTile(
                                  title: Text(
                                    productModel.specification?[index].name ?? '',
                                    style: context.general.textTheme.bodyMedium,
                                  ),
                                  trailing: SizedBox(
                                    width: context.general.mediaQuery.size.width * 0.4,
                                    child: DropdownButton(
                                      value: productModel.specification?[index].values?[0] ?? '',
                                      style: context.general.textTheme.bodySmall,
                                      isExpanded: true,
                                      onChanged: (value) {},
                                      items: productModel.specification?[index].values?.map((e) {
                                            return DropdownMenuItem(
                                              value: e,
                                              child: Text(e),
                                            );
                                          }).toList() ??
                                          [],
                                    ),
                                  ));
                            },
                            itemCount: productModel.specification?.length ?? 0,
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 3),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              '\$${productModel.price?.toStringAsFixed(2) ?? 0.0}',
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                foregroundColor: context.general.colorScheme.onPrimary,
                backgroundColor: context.general.colorScheme.primary,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              onPressed: () {},
              child: const Text('Add to Cart'),
            ),
          ],
        ),
      ),
    );
  }
}
