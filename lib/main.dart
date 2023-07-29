import 'package:flutter/material.dart';
import 'package:goapitest/main_page.dart';
import 'package:goapitest/screens/product_detail_page/view/product_detail_page.dart';
import 'package:goapitest/screens/products/viewmodels/product_view_model.dart';
import 'package:provider/provider.dart';
import 'screens/product_detail_page/viewmodel/product_detail_viewmodel.dart';
import 'screens/products/view/products_page.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => ProductProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => ProductDetailProvider(),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Go API Test',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routes: {
        '/products': (context) => const ProductsPage(),
        '/product': (context) => const ProductDetailPage(),
      },
      home: const MainPage(),
    );
  }
}
