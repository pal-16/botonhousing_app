
  import 'package:flutter/material.dart';
import 'package:housing_app/screens/home_page.dart';
import 'package:provider/provider.dart';

//import './screens/cart_screen.dart';
import './screens/products_overview.dart';
import './screens/products_detail_screen.dart';
import './providers/products.dart';
import './screens/user_products_screen.dart';
import './screens/edit_product_screen.dart';
import './screens/home_page.dart';
import './widgets/products_grid.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
          value: Products(),
        ),
      //  ChangeNotifierProvider.value(
        //  value: Cart(),
        //),
        //ChangeNotifierProvider.value(
         // value: Orders(),
        //),
      ],
      child: MaterialApp(
          title: 'MyShop',
          theme: ThemeData(
            primarySwatch: Colors.purple,
            accentColor: Colors.deepOrange,
            fontFamily: 'Lato',
          ),
        home: MyHome(),
          routes: {
            ProductDetailScreen.routeName: (ctx) => ProductDetailScreen(),
           // CartScreen.routeName: (ctx) => CartScreen(),
          //  OrdersScreen.routeName: (ctx) => OrdersScreen(),
            UserProductsScreen.routeName: (ctx) => UserProductsScreen(),
            EditProductScreen.routeName: (ctx) => EditProductScreen(),
            UserProductsScreen.routeName:(ctx)=> UserProductsScreen(),
           // ProductsGrid.routeName:(ctx)=> ProductsGrid(),
          //  ProductsOverviewScreen.routeName:(ctx)=>ProductsOverviewScreen(),
           
                     }),
    );
  }
}
