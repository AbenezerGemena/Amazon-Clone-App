
import 'package:amazon/widget/search_bar_widget.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: SearchBarWidget(
        isReadOnly: false,
         hasBackButton: true
         ),

    );
  }
}