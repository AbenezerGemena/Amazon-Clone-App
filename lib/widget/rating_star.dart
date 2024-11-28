import 'package:flutter/material.dart';

class RatingStar extends StatefulWidget {
  const RatingStar({super.key});

  @override
  State<RatingStar> createState() => _RatingStarState();
}

class _RatingStarState extends State<RatingStar> {
  int _rating =0;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(5, (index){
        return IconButton(
          onPressed: (){
            setState(() {
              _rating = index + 1;
            });

        }, icon: Icon(
          index < _rating ? Icons.star : Icons.star_border,
          color: Colors.amber,
        ));
      }),
    );
  }
}