import 'package:amazon/utils/color_themes.dart';
import 'package:amazon/utils/constants.dart';
import 'package:amazon/utils/utils.dart';
import 'package:flutter/material.dart';

class BannerAdd extends StatefulWidget {
  const BannerAdd({super.key});

  @override
  State<BannerAdd> createState() => _BannerAddState();
}

class _BannerAddState extends State<BannerAdd> {
  int currentAd = 0;
  @override
  Widget build(BuildContext context) {
     Size screenSize = Utils().getScreenSize(context);
     double smallAdDimension = screenSize.width/5;
    return GestureDetector(
      onHorizontalDragEnd: (_){
        if (currentAd == (largeAds.length - 1)){
          currentAd = -1;
        }else{
          setState(() {
            currentAd++;
          });
        }
       
      },
      child: Column(
        children: [
          Stack(
          children: [
          Image.network(
            largeAds[currentAd], 
            width: double.infinity,
            errorBuilder: (context, error, stackTrace) => const Icon(Icons.error),
            ),
          Positioned(
            bottom: 0,
            child: Container(
              height: 100,
              width: screenSize.width,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [
                    backgroundColor,
                    backgroundColor.withOpacity(0)
                  ]
                  )
              ),
            ),
          )
        ],
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
        child: Container(
            color: backgroundColor,
            height: screenSize.height*0.1,
            width: screenSize.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _getSmallAdsFromIndex(0,smallAdDimension),
                _getSmallAdsFromIndex(1,smallAdDimension),
                _getSmallAdsFromIndex(2,smallAdDimension),
                _getSmallAdsFromIndex(3,smallAdDimension),
            
        
              
        
              ],
            ),
        ),
      )
  

        ],
      ),
    );
  }
  Widget _getSmallAdsFromIndex(int index, double height){
    return Container(
     
      decoration: ShapeDecoration(
        color: backgroundColor,
        shadows: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            blurRadius: 5,
            spreadRadius: 1,
          )
        ],
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10)
        )
        ),
        child: Column(
          children: [
            Image.network(smallAds[index]),
            Padding(
              padding: const EdgeInsets.only(top: 1.5),
              child: Text(adItemNames[index]),
            )
          ],
        ),
    
      
    );
  }
}