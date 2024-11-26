

import 'package:amazon/utils/color_themes.dart';
import 'package:amazon/utils/utils.dart';
import 'package:amazon/widget/cost_widget.dart';
import 'package:flutter/material.dart';

class ProductInformation extends StatelessWidget {
  final String productName;
  final double cost;
  final String sellerName;
  
  const ProductInformation({
    super.key,
    required this.productName,
    required this.cost,
    required this.sellerName,
    });

  @override
  Widget build(BuildContext context) {
    Size screenSize = Utils().getScreenSize(context);
    return SizedBox(
      width: screenSize.width/2,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
         Align(
            alignment: Alignment.centerLeft,
            child: Text(
              productName,
              maxLines: 2,
              style: const TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 16,
                letterSpacing: 0.9,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
          SizedBox(
            height: screenSize.height*0.07,
          ),
            Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 7),
              child: CostWidget(color: Colors.black, cost: cost),
            ),
          ),
        SizedBox(
            height: screenSize.height*0.07,
          ),
                Align(
            alignment: Alignment.centerLeft,
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                      text: "Sold by ",
                      style: TextStyle(color: Colors.grey[700], fontSize: 14)),
                  TextSpan(
                      text: sellerName,
                      style: const TextStyle(
                          color: activeCyanColor, fontSize: 14)),
                ],
              ),
            ),
            )
          
          
          
       
      
        ],
      
      ),
    );
  }
}