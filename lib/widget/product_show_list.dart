import 'package:amazon/utils/color_themes.dart';
import 'package:amazon/utils/utils.dart';
import 'package:flutter/material.dart';

class ProductShowList extends StatelessWidget {
  final String title;
  final List<Widget> children;
  const ProductShowList({
    super.key,
    required this.title,
    required this.children
    });

  @override
  Widget build(BuildContext context) {
    Size screenSize = Utils().getScreenSize(context);
    double height = screenSize.height/4;
    double titleHeight = screenSize.height*0.025;

    return Container(
      padding: const EdgeInsets.all(8),
      margin: const  EdgeInsets.all(8),
      height: height,
      width: screenSize.width,
      color: Colors.white,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: titleHeight,
            child: Row(
              children: [
                Text(
              title,
              style: const TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Padding(
              padding:  EdgeInsets.only(left: 14),
              child: Text(
                "Show more",
                style: TextStyle(
                  color: activeCyanColor
                ),
              ),
            )
              ],
            
            ),
          ),
          SizedBox(
            height: height - (titleHeight+16),
            width: screenSize.width,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: children,
            ),
          )

        ],
      ),

    );
  }
}