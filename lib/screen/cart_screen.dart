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
                  return CartItemWidget();
                }
                ),
            )
          ],
        ),
      ),
    );
  }
}