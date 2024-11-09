import 'package:amazon/utils/color_themes.dart';
import 'package:amazon/utils/constants.dart';
import 'package:flutter/material.dart';

class ScreenLayout extends StatefulWidget {
  const ScreenLayout({super.key});

  @override
  State<ScreenLayout> createState() => _ScreenLayoutState();
}

class _ScreenLayoutState extends State<ScreenLayout> {
 final PageController _pageController = PageController();
  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }
  int _selectedPage = 0;
  _changePage(int page){
   _pageController.jumpToPage(page);
            setState(() {
              _selectedPage = page;
            });
  }
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      
      length: 4,
      child: Scaffold(
        backgroundColor:backgroundColor,
        body: PageView(
          controller: _pageController,
          children:screens,
        ),
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            border: Border(
              top: BorderSide(
                 color: Colors.grey[400]!,
                 width: 1,
              )
            )
          ),
          child: TabBar(
            indicator: const BoxDecoration(
              border: Border(
                top: BorderSide(color: activeCyanColor,width: 4)
              )
            ),
            onTap: _changePage,
            indicatorSize: TabBarIndicatorSize.label,
            tabs: [
              Tab(
                child: Icon(
                  Icons.home_outlined,
                  color: _selectedPage ==0? activeCyanColor : Colors.black,
                  ),
              ),
             Tab(
                child: Icon(
                  Icons.account_circle_outlined,
                  color: _selectedPage ==1? activeCyanColor : Colors.black,
                  ),
              ),
             Tab(
                child: Icon(
                  Icons.shopping_cart_outlined,
                  color: _selectedPage == 2 ? activeCyanColor : Colors.black,
                  ),
              ),
             Tab(
                child: Icon(
                  Icons.menu,
                  color: _selectedPage == 3 ? activeCyanColor :Colors.black,
                  ),
              ),
            ]
            ),
        ),
      ),
    );
}
}