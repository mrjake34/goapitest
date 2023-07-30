import 'package:flutter/material.dart';

final class CustomBottomSheet {
  CustomBottomSheet._();
  static Future<T?> showBottomSheet<T>({
    required BuildContext context,
    required Widget widget,
  }) async {
    return await showModalBottomSheet(
      context: context,
      showDragHandle: true,
      builder: (context) {
        return SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: widget,
          ),
        );
      },
    );
  }
}
