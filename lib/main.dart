import 'package:amazon/firebase_options.dart';
import 'package:amazon/layouts/screen_layout.dart';
import 'package:amazon/screen/home_page.dart';
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
      home: const HomePage(),
    );
  }
}
