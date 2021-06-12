import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './screen/products_overview_screen.dart';
import './screen/product_detail_screen.dart';
import './providers/products.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (ctx) => Products(),
      child: MaterialApp(
          title: 'MyShop',
          theme: ThemeData(
            primarySwatch: Colors.purple,
            colorScheme: ColorScheme(
              onSecondary: Colors.deepOrange,
              onBackground: Colors.blue,
              onError: Colors.amber,
              background: Colors.brown,
              brightness: Brightness.dark,
              error: Colors.cyan,
              onPrimary: Colors.deepPurple,
              onSurface: Colors.deepPurpleAccent,
              primary: Colors.indigo,
              primaryVariant: Colors.lime,
              secondary: Colors.redAccent,
              secondaryVariant: Colors.teal,
              surface: Colors.white,
            ),
            fontFamily: 'Lato',
          ),
          home: ProductsOverviewScreen(),
          routes: {
            ProductDetailScreen.routeName: (ctx) => ProductDetailScreen(),
          }),
    );
  }
}
