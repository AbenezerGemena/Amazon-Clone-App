import 'package:amazon/utils/constants.dart';
import 'package:flutter/material.dart';

class HorizontalListCatagories extends StatelessWidget {
  const HorizontalListCatagories({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: kAppBarHeight,
      width: double.infinity,
      color: Colors.white,
      child: ListView.builder(
        itemCount: categoriesList.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context , index){
          return GestureDetector(
            onTap: (){},
            child: Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 5 , 
                horizontal: 10)
                ,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CircleAvatar(
                    backgroundImage: NetworkImage(
                      categoryLogos[index],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Text(categoriesList[index]),
                  )
                ],
              
              ),
            ),
          );

        }
        ),
       
    );
  }
}