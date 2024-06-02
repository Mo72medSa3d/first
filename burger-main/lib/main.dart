import 'package:burger/controller/product_controller.dart';
import 'package:burger/service/data_source.dart';
import 'package:burger/view/app_router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ProductController(ProductDataSource()),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: AppRouter.getRoutes(),
        initialRoute: RoutesNames.home,
      ),
    );
  }
}
