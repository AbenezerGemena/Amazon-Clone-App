import 'package:flutter/material.dart';

class SimpleProduct extends StatelessWidget {
  final String url;
  
  const SimpleProduct({
    super.key,
    required this.url,
    });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        
      },
      child: AspectRatio(
        aspectRatio: 1/1,
        child: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Image.network(url),
            ),
        ),
      ),
    );
  }
}