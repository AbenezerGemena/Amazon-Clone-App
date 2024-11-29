import 'package:amazon/firebase_options.dart';
import 'package:amazon/layouts/screen_layout.dart';
import 'package:amazon/model/product_model.dart';
import 'package:amazon/screen/home_page.dart';
import 'package:amazon/screen/product_screen.dart';
import 'package:amazon/screen/result_screen.dart';
import 'package:amazon/screen/sign_in_screen.dart';
import 'package:amazon/screen/sign_up_screen.dart';
import 'package:amazon/utils/color_themes.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';

void main()async{
  WidgetsFlutterBinding.ensureInitialized();

  try {
    await Firebase.initializeApp();
  } catch (e) {
    print("Firebase initialization error: $e");
  }
  runApp(
    
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context)=> const AmazonClone()
      )
  
    );
}

class AmazonClone extends StatelessWidget {
  const AmazonClone({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Amazon Clone',
      theme: ThemeData.light().copyWith(
        scaffoldBackgroundColor: backgroundColor,
      ),
      debugShowCheckedModeBanner: false,
      home: ProductScreen(
        productModel:  ProductModel(
                      url: "https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/99486859-0ff3-46b4-949b-2d16af2ad421/custom-nike-dunk-high-by-you-shoes.png", 
                      productName: "Jordan Shoes", 
                      cost: 130000.3,
                      discount: 0,
                      uid: "uid", 
                      sellerName: "Ugulu Bangala", 
                      sellerUid: "sellerUid", 
                      rating: 5, 
                      noOfRating: 1),
                      ),
    );
  }
}
