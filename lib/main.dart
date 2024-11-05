import 'package:amazon/screen/home_page.dart';
import 'package:amazon/screen/sign_in_screen.dart';
import 'package:amazon/screen/sign_up_screen.dart';
import 'package:amazon/utils/color_themes.dart';
import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';

void main(){
  runApp(
    
    DevicePreview(
      enabled: true,
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
        scaffoldBackgroundColor: backgroundColor
      ),
      debugShowCheckedModeBanner: false,
      home: const HomePage()
    );
  }
}