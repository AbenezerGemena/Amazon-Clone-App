import 'package:amazon/layouts/screen_layout.dart';
import 'package:amazon/model/user_detail_model.dart';
import 'package:amazon/utils/constants.dart';
import 'package:amazon/widget/banner_add.dart';
import 'package:amazon/widget/horizontal_list_catagories.dart';
import 'package:amazon/widget/product_show_list.dart';
import 'package:amazon/widget/search_bar_widget.dart';
import 'package:amazon/widget/simple_product.dart';
import 'package:amazon/widget/user_detail.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
 final ScrollController _scrollController =ScrollController();
  double offset = 0;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener((){
      setState(() {
        offset = _scrollController.position.pixels;
      });
    

    });
  }
  @override
  void dispose() {
    super.dispose();
    _scrollController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SearchBarWidget(
        isReadOnly: true,
        hasBackButton: false,
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            controller: _scrollController,
            child: Column(
              children: [
                SizedBox(height: kAppBarHeight/3,),
                
                HorizontalListCatagories(),
                BannerAdd(),
                ProductShowList(title: "Upto 70% off", children: testChildren),
                ProductShowList(title: "Upto 60% off", children: testChildren),
                ProductShowList(title: "Upto 50% off", children: testChildren),
                ProductShowList(title: "Explore", children: testChildren),



          
               
          
                  
                  
              ],
            ),
          ),
          UserDetail(offset: offset,userdetails: UserDetailModel(name: "Abenezer", address: "Adama"),)
        ],
      )
      
    );
  }
}