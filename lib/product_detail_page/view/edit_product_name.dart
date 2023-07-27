import 'package:flutter/material.dart';
import 'package:goapitest/product_detail_page/viewmodel/product_detail_viewmodel.dart';
import 'package:provider/provider.dart';

class EditProductName extends StatefulWidget {
  const EditProductName({required this.id, super.key});
  final int? id;

  @override
  State<EditProductName> createState() => _EditProductNameState();
}

class _EditProductNameState extends State<EditProductName> {
  final TextEditingController _controller = TextEditingController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text('Edit Product Name'),
        const SizedBox(height: 8),
        TextField(
          controller: _controller,
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'Product Name',
          ),
        ),
        const SizedBox(height: 8),
        ElevatedButton(
          onPressed: () {
            if (widget.id != null) {
              context.read<ProductDetailProvider>().setName(_controller.text, widget.id!);
            }
          },
          child: const Text('Save'),
        ),
      ],
    );
  }
}
