import 'package:amazon/utils/color_themes.dart';
import 'package:amazon/utils/utils.dart';
import 'package:amazon/widget/product_information.dart';
import 'package:flutter/material.dart';

class CartItemWidget extends StatelessWidget {
  const CartItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = Utils().getScreenSize(context);
    return Container(
      height: screenSize.height/2,
      width: screenSize.width,
      decoration: const BoxDecoration(
        color: backgroundColor,
        border: Border(
          bottom: BorderSide(
            color: Colors.grey,
            width: 1
          )
        )

      ),
      child: Column(
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: screenSize.width/3,
                  child: Image.network("https://m.media-amazon.com/images/I/116KbsvwCRL._SX90_SY90_.png"),
                ),
              const  ProductInformation(
                  productName: "Black shoes",
                   cost: 700, sellerName: "amazon",
                   )
              ],
            )
            )
        ],
      ),

    );
  }
}