import 'package:amazon/utils/color_themes.dart';
import 'package:amazon/utils/constants.dart';
import 'package:amazon/utils/utils.dart';
import 'package:amazon/widget/account_screen_app_bar.dart';
import 'package:amazon/widget/custom_main_button.dart';
import 'package:amazon/widget/product_show_list.dart';
import 'package:flutter/material.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({super.key});

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = Utils().getScreenSize(context);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const AccountScreenAppBar(),
      body: SingleChildScrollView(
        child: SizedBox(
          height: screenSize.height,
          width: screenSize.width,
          child:Column(
            children: [
              const IntroductionScreenWidget(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CustomMainButton(
                  color: Colors.orange, 
                  isLoading: false, 
                  onPressed: (){},
                  child: const Text("Sign Out", style: TextStyle(color: Colors.black),)
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CustomMainButton(
                  color: yellowColor, 
                  isLoading: false, 
                  onPressed: (){},
                  child: const Text("Sell", style: TextStyle(color: Colors.black),)
                ),
              ),
              ProductShowList(title: "Your", children: testChildren),
              const Padding(
                padding:  EdgeInsets.all(15.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Order Requests",
                    style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: 5,
                  itemBuilder: (context,index){
                    return ListTile(
                      title: const Text(
                        "Order: Black Shoes",
                        style: TextStyle(
                          fontWeight: FontWeight.w600
                        ),
                      ),
                      subtitle: const Text("Address: Ethiopia, Adama City"),
                      trailing: IconButton(
                        onPressed: (){}, 
                        icon: const Icon(Icons.check)
                        ),
                    );

                  }
                  )
                )
            ],
          ) ,
        ),
      )
    );
  

  
         
  }
}

class IntroductionScreenWidget extends StatelessWidget {
  const IntroductionScreenWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: kAppBarHeight/2,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: backgroundGradient,
          )
      ),
      child: Container(
            height: kAppBarHeight/2,
            decoration:  BoxDecoration(
              gradient: LinearGradient( 
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [
                  Colors.white,
                  Colors.white.withOpacity(0.0000000000000001)
                  
                ],
          )
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 17.0),
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "Hello, ",
                    style: TextStyle(color: Colors.grey[800],fontSize: 27)
                    ),
                  TextSpan(
                    text: "Abenezer",
                    style: TextStyle(color: Colors.grey[800],fontSize: 27,fontWeight: FontWeight.bold)
                    ),
                ]
              )
              ),
          ),
          const Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage("https://m.media-amazon.com/images/I/11M0jYc-tRL._SX90_SY90_.png")
              
            ),
          ),

          
        ],
      ),
                
     )
    );
  }
}