import 'package:amazon/model/product_model.dart';
import 'package:amazon/utils/color_themes.dart';
import 'package:amazon/utils/utils.dart';
import 'package:amazon/widget/custom_square_button.dart';
import 'package:amazon/widget/product_information.dart';
import 'package:flutter/material.dart';

class CartItemWidget extends StatelessWidget {
  final ProductModel productModel ;
 const CartItemWidget({
    super.key,
    required this.productModel,
    });

  @override
  Widget build(BuildContext context) {
    Size screenSize = Utils().getScreenSize(context);
    return Container(
      padding: const EdgeInsets.all(25),
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
            flex: 3,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: screenSize.width/3,
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: Center(
                      child: Image.network(
                        productModel.url
                        )
                      )
                    ),
                ),
               ProductInformation(
                  productName: productModel.productName ,
                   cost: productModel.cost, 
                   sellerName: productModel.sellerName,
                   )
              ],
            ),
            ),
          Expanded(
            flex: 1,
            child: Row(
              children: [
                CustomSquareButton(
                    onPressed: () {},
                    color: backgroundColor,
                    dimension: 40,
                    child: const Icon(Icons.remove)),
                CustomSquareButton(
                    onPressed: () {},
                    color: backgroundColor,
                    dimension: 40,
                    child: const Text(
                      "0",
                      style: TextStyle(
                        color: activeCyanColor,
                      ),
                    )),
                CustomSquareButton(
                    onPressed: () {
                      
                    },
                    color: backgroundColor,
                    dimension: 40,
                    child: const Icon(Icons.add)),
              ],
            ),
          ),
        
          Expanded(
            flex: 1,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  children: [
                    CustomRoundedButton(onPressed: (){}, text: "Delete"),
                   const  SizedBox(width: 10,),
                    CustomRoundedButton(onPressed: (){}, text: "Save for later")
                  ],
                  
                ),
               const Padding(
                  padding: EdgeInsets.only(top: 5),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "See more like this",
                      style: TextStyle(
                        color: activeCyanColor
                      ),
                    ),
                  ),
                )


              ],
            )
            )
        ],
      ),

    );
  }
}