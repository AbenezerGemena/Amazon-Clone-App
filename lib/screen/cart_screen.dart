import 'package:amazon/model/product_model.dart';
import 'package:amazon/model/user_detail_model.dart';
import 'package:amazon/utils/color_themes.dart';
import 'package:amazon/widget/cart_item_widget.dart';
import 'package:amazon/widget/custom_main_button.dart';
import 'package:amazon/widget/search_bar_widget.dart';
import 'package:amazon/widget/user_detail.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SearchBarWidget(
        hasBackButton: false,
        isReadOnly: true,
        ),
      body: Center(
        child: Column(
          children: [
            UserDetail(
              offset: 0, 
              userdetails: UserDetailModel(
                name: "Abenezer", 
                address: "Ethiopia, Adama city",
                )
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: CustomMainButton(
                color: yellowColor, 
                isLoading: false, 
                onPressed: (){}, 
                child:  Text(
                  "Proceed to by (n) items",
                  style: TextStyle(color:Colors.black),
                  )
                ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 5, 
                itemBuilder: (context,index){
                  return CartItemWidget(
                    productModel: ProductModel(
                      url: "https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/99486859-0ff3-46b4-949b-2d16af2ad421/custom-nike-dunk-high-by-you-shoes.png", 
                      productName: "Jordan Shoes", 
                      cost: 130000.3,
                      discount: 0,
                      uid: "uid", 
                      sellerName: "Ugulu Bangala", 
                      sellerUid: "sellerUid", 
                      rating: 5, 
                      noOfRating: 1));
                }
                ),
            )
          ],
        ),
      ),
    );
  }
}