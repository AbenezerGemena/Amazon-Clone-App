import 'package:amazon/model/user_detail_model.dart';
import 'package:amazon/utils/color_themes.dart';
import 'package:amazon/utils/constants.dart';
import 'package:amazon/utils/utils.dart';
import 'package:flutter/material.dart';

class UserDetail extends StatelessWidget {
  final double offset;
  final UserDetailModel userdetails;

  const UserDetail({
    super.key,
    required this.offset,
    required this.userdetails,
    });

  @override
  Widget build(BuildContext context) {
    Size screenSize = Utils().getScreenSize(context);
    return Positioned(
      top: -offset/5,
      child: Container(
        height: kAppBarHeight/3,
        width: screenSize.width,
      
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: lightBackgroundaGradient
          )
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 3,horizontal: 20),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right:8 ),
                child: Icon(Icons.location_on_outlined,color: Colors.grey[900],),
              ),
              SizedBox(
                width: screenSize.width*0.7,
                child: Text(
                  "${userdetails.name} - ${userdetails.address}",
                  style: TextStyle(
                    color: Colors.grey[900],
                  ),
                ),
              )
      
            ],
          ),
          ),
      ),
    );
  }
}