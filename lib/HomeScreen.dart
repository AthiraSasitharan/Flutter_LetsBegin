import 'package:flutter/material.dart';
import 'package:flutter_lets_begin/DashBoardScreen.dart';
import 'package:flutter_lets_begin/DetailsPageView.dart';
import 'package:flutter_lets_begin/LoginScreen.dart';
import 'package:flutter_lets_begin/utils/BottomBar.dart';
import 'package:flutter_lets_begin/utils/Res.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomePage();
  }
}

class HomePage extends State<HomeScreen> with SingleTickerProviderStateMixin {
  int index = 0;
  TabController tabController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        children: <Widget>[
          DashBoardScreen(),
          LoginScreen(),
          DashBoardScreen(),
          LoginScreen(),
        ],
        controller: tabController,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomBar(
        selectedColor: Colors.white,
        color: Colors.white54,
        backgroundColor: Colors.purple,
        onTabSelected: setPage,
        items: [
          FABBottomAppBarItem(iconData: Icons.menu, text: 'This'),
          FABBottomAppBarItem(iconData: Icons.layers, text: 'Is'),
          FABBottomAppBarItem(iconData: Icons.dashboard, text: 'Bottom'),
          FABBottomAppBarItem(iconData: Icons.info, text: 'Bar'),
        ],
      ),
    );
  }

  void setPage(int currentIndex) {
    setState(() {
      index = currentIndex;
      tabController.animateTo(index);
    });
  }

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 2, vsync: this);
  }
}
