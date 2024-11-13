import 'package:amazon/utils/color_themes.dart';
import 'package:amazon/utils/constants.dart';
import 'package:amazon/utils/utils.dart';
import 'package:flutter/material.dart';

class AccountScreenAppBar extends StatelessWidget implements PreferredSize {
  const AccountScreenAppBar({super.key}):preferredSize = const Size.fromHeight(kAppBarHeight);
    @override
  // TODO: implement child
  Widget get child => throw UnimplementedError();
  
  @override
   final Size  preferredSize ;


  @override
  Widget build(BuildContext context) {
    Size screenSize = Utils().getScreenSize(context);
    return Container(
      height: kAppBarHeight,
      width: screenSize.width,
      decoration:const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: backgroundGradient
          )
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child:  Image.network(
              amazonLogoUrl,
              height: kAppBarHeight*0.7,

            ),
          ),
          Row(
            children: [
              IconButton(
                onPressed: (){}, 
                icon: const Icon(Icons.notifications_outlined,color: Colors.black,)
              ),
              IconButton(
                onPressed: (){}, 
                icon: const Icon(Icons.search_outlined,color: Colors.black,)
                )
            ],
          )
         
        


        ],
      ),

    );
  }

}
  
