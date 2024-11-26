import 'package:amazon/utils/color_themes.dart';
import 'package:amazon/utils/constants.dart';
import 'package:amazon/widget/category_widget.dart';
import 'package:amazon/widget/search_bar_widget.dart';
import 'package:flutter/material.dart';

class MoreScreen extends StatelessWidget {
  const MoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: SearchBarWidget(isReadOnly: true, hasBackButton: false),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 6),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            childAspectRatio: 2.2/3.5,
            mainAxisSpacing: 20,
            crossAxisSpacing: 15,
            ), 
            itemCount: categoriesList.length,
          itemBuilder: (context, index)=>CategoryWidget(index: index)
          ),
      ),

    );
  }
}