import 'package:flutter/material.dart';

import '../../core/utils/navigation/navigation_service.dart';
import '../../core/utils/navigation/routers.dart';

class NotFoundPage extends StatelessWidget {
  const NotFoundPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Not Found Page'),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              NavigationService.instance.navigateToPageAndRemoveUntil(path: RoutersConstants.home);
            },
            child: const Text('Go to Home')),
      ),
    );
  }
}
