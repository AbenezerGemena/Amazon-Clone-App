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
          Padding(
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
            )
        ],
      ),
    );
  }
}