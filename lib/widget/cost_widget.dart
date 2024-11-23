import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CostWidget extends StatelessWidget {
  final Color color;
  final double cost;

  const CostWidget({
    super.key,
    required this.color,
    required this.cost
    });

  @override
  Widget build(BuildContext context) {
    final formatter = NumberFormat.currency(locale: 'en_US',symbol: '\$');
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          formatter.format(cost),
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w800,
            
          ),
         
        )
      
      

      ],

    );
  }
}