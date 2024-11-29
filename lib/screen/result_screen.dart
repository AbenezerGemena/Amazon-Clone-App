import 'package:amazon/model/product_model.dart';
import 'package:amazon/widget/result_widget.dart';
import 'package:amazon/widget/search_bar_widget.dart';
import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  final String query;
  const ResultScreen({super.key, required this.query});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SearchBarWidget(isReadOnly: false, hasBackButton: true),
      body: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: RichText(
                text: TextSpan(
                  children: [
                   const TextSpan(
                      text: "showing results for ",
                      style: TextStyle(
                        fontSize: 17,
                        color: Colors.black
                      ),
                    ),
                   TextSpan(
                      text:query,
                      style: const TextStyle(
                        fontSize: 17,
                        fontStyle: FontStyle.italic,
                        color: Colors.black
                      ) 
                    )
                  ]
                )
                ),
              ),
          ),
            Expanded(
              child: GridView.builder(
                itemCount: 100,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  childAspectRatio: 2/3,
                  ), 
                itemBuilder: (context, index) {
                  return ResultWidget(
                    productModel: ProductModel(
                      url: "https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/99486859-0ff3-46b4-949b-2d16af2ad421/custom-nike-dunk-high-by-you-shoes.png", 
                      productName: "Jordan Shoes", 
                      cost: 908,
                      discount: 0,
                      uid: "uid", 
                      sellerName: "Ugulu Bangala", 
                      sellerUid: "sellerUid", 
                      rating: 5, 
                      noOfRating: 1)
                      );
                },
                ),
              )
          
        ],
      ),
    );
  }
}