import 'package:amazon/model/product_model.dart';
import 'package:amazon/utils/utils.dart';
import 'package:amazon/widget/cost_widget.dart';
import 'package:amazon/widget/rating_star.dart';
import 'package:flutter/material.dart';

class ResultWidget extends StatelessWidget {
  final ProductModel productModel;
  const ResultWidget({super.key, required this.productModel});

  @override
  Widget build(BuildContext context) {
    Size screanSize = Utils().getScreenSize(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 2,vertical: 5),
      child: Column(
        children: [
          SizedBox(
              width: screanSize.width/2,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  border: Border(
                    
                  )
 
                
                ),
                child: Column(
                  children: [
                    Image.network(
                  productModel.url,
                  ),
                 Text(productModel.productName),
                 CostWidget(color: const Color.fromARGB(255, 92, 9, 3), cost: productModel.cost),
                     const RatingStar(),
                  ],
                ),
              )
            ),
          
         
          
          
          
        ],
      
      ),
    );
  }
}