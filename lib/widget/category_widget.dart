import 'package:amazon/utils/constants.dart';
import 'package:flutter/material.dart';

class CategoryWidget extends StatelessWidget {
  final int index;
  const CategoryWidget({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
         color: Colors.white,
         boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            blurRadius: 8,
            spreadRadius: 1
          )
         ]
        

      ),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.network(
              categoryLogos[index]
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(categoriesList[index]),
            )

          ],
        ),
      ),
    );
  }
}