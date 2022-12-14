import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:myflutter_ecommerce/controllers/cart_controller.dart';
import 'package:myflutter_ecommerce/controllers/popular_product_controller.dart';
import 'package:myflutter_ecommerce/controllers/recommended_product_controller.dart';
import 'package:myflutter_ecommerce/pages/auth/sign_in_page.dart';
import 'package:myflutter_ecommerce/pages/auth/sign_up_page.dart';
import 'package:myflutter_ecommerce/pages/cart/cart_page.dart';
import 'package:myflutter_ecommerce/pages/food/popular_food_detail.dart';
import 'package:myflutter_ecommerce/pages/food/recommended_food_detail.dart';
import 'package:myflutter_ecommerce/pages/home/food_page_body.dart';
import 'package:myflutter_ecommerce/pages/home/main_food_page.dart';
import 'package:myflutter_ecommerce/pages/splash/splash_page.dart';
import 'package:myflutter_ecommerce/routes/route_helper.dart';
import 'helper/dependencies.dart' as dep;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dep.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Get.find<CartController>().getCartData();
    return GetBuilder<PopularProductController>(builder: (_) {
      return GetBuilder<RecommendedProductController>(builder: (_) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: SignInPage(),
          // home: SplashScreen(),
          // initialRoute: RouteHelper.getSplashScreen(),
          // getPages: RouteHelper.routes,
        );
      });
    });
  }
}
