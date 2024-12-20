import 'package:amazon/screen/result_screen.dart';
import 'package:amazon/screen/search_page.dart';
import 'package:amazon/utils/color_themes.dart';
import 'package:amazon/utils/constants.dart';
import 'package:amazon/utils/utils.dart';
import 'package:flutter/material.dart';

class SearchBarWidget extends StatelessWidget   implements PreferredSizeWidget{
  final bool isReadOnly;
  final bool hasBackButton;
  SearchBarWidget({super.key,required this.isReadOnly, required this.hasBackButton}) : preferredSize = const Size.fromHeight(kAppBarHeight);

  @override
  final Size preferredSize;

final  OutlineInputBorder border = OutlineInputBorder(
    borderRadius: BorderRadius.circular(7),
    borderSide: const BorderSide(
      color: Colors.grey,
      width: 1
    )

  );

  @override
  Widget build(BuildContext context) {
    Size screenSize = Utils().getScreenSize(context);
    return Container(
      padding: const EdgeInsets.only(top: 20),
      height: kAppBarHeight,
    
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: backgroundGradient,
          begin: Alignment.centerLeft,
          end: Alignment.centerRight
          )
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          hasBackButton
                ? IconButton(
                  onPressed: (){
                    Navigator.pop(context);
                  },
                   icon: const Icon(Icons.arrow_back)
                   )
                : Container(),
          SizedBox(
            width: screenSize.width*0.7,
            child: Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    blurRadius: 8,
                    spreadRadius: 1,
                    offset:  const Offset(0, 5)
                  )
                ]
              ),
              child: TextField(
                
                onSubmitted: (String query){
                  if(query.isNotEmpty){
                    Navigator.push(
                      context,MaterialPageRoute(builder: (context)=>ResultScreen(query: query ))
                       );
                  }
                 

                },
                readOnly: isReadOnly,
                onTap: (){
                  if(isReadOnly){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context)=> const SearchPage())
                      );
                  }
                },
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  hintText: "Search for something in amazon",
                  prefixIcon: const Icon(Icons.search),
                  suffixIcon: const Icon(Icons.camera_alt_outlined ),
                  fillColor: Colors.white,
                  filled: true,
                  border: border,
                  focusedBorder: border,
                
              
                ),
              ),
            )
            ),
          IconButton(
            onPressed: (){}, 
            icon: const Icon(Icons.mic_none_outlined)
            )

        ],
      ),
    
      
    );
  }
  

 
}