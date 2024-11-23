

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
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            productName,
            style: const TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 20,
              overflow:TextOverflow.ellipsis, 
            ),
            
          ),
          CostWidget(color: Colors.black, cost: 7654.097)
          
       
      
        ],
      
      ),
    );
  }
}