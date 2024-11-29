import 'package:amazon/model/product_model.dart';
import 'package:amazon/model/user_detail_model.dart';
import 'package:amazon/utils/color_themes.dart';
import 'package:amazon/utils/constants.dart';
import 'package:amazon/utils/utils.dart';
import 'package:amazon/widget/rating_star.dart';
import 'package:amazon/widget/search_bar_widget.dart';
import 'package:amazon/widget/user_detail.dart';
import 'package:flutter/material.dart';


class ProductScreen extends StatefulWidget {
 final ProductModel productModel;
  const ProductScreen({super.key,required this.productModel});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = Utils().getScreenSize(context);
    return SafeArea(
      child: Scaffold(
        appBar: SearchBarWidget(isReadOnly: true, hasBackButton: true),
        body: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
              
                children: [
                 
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    
                    children: [
                      SizedBox(
                        height: screenSize.height*0.15,
                      
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            widget.productModel.sellerName,
                            style: const TextStyle(
                              color: activeCyanColor,
                              fontSize: 16,
                            ),
                          ),
                          Text(
                            widget.productModel.productName,
                            
                          )
                        ],
                      ),
                      SizedBox(
                        width: screenSize.width/2.5,

                        child: FittedBox(child: RatingStar(widget.productModel.rating)),
                        )
                    ],
                  )

                ],
              ),
            ),
            UserDetail(
              offset: 0,
              userdetails: UserDetailModel(
                name: "Abenezer",
                address: "Adama city, Ethiopia",
                )
              )
          ],
        ),

    )
    );
  }
}