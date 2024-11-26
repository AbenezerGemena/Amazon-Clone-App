import 'package:amazon/model/product_model.dart';
import 'package:amazon/utils/utils.dart';
import 'package:amazon/widget/cost_widget.dart';
import 'package:flutter/material.dart';

class ResultWidget extends StatelessWidget {
  final ProductModel productModel;
  const ResultWidget({super.key, required this.productModel});

  @override
  Widget build(BuildContext context) {
    Size screanSize = Utils().getScreenSize(context);
    return Column(
      children: [
        SizedBox(
          width: screanSize.width/3,
          child: Image.network(
            productModel.url,
            ),
        ),
        Text(productModel.productName),
        CostWidget(color: const Color.fromARGB(255, 92, 9, 3), cost: productModel.cost)
        
      ],

    );
  }
}