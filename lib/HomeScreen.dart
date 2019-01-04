import 'package:flutter/material.dart';
import 'package:flutter_lets_begin/DashBoardScreen.dart';
import 'package:flutter_lets_begin/DetailsPageView.dart';
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
          DetailsPageView(),
        ],
        controller: tabController,
      ),
      bottomNavigationBar: TabBar(
        tabs: <Tab>[
          Tab(
            icon: Icon(Icons.home),
            text: Strings.dashboard,
          ),
          Tab(
            icon: Icon(Icons.details),
            text: Strings.details,
          )
        ],
        controller: tabController,
        labelColor: Colors.purple,
        unselectedLabelColor: Colors.black45,
      ),
    );
  }

  void setPage(int currentIndex) {
    setState(() {
      index = currentIndex;
    });
  }

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 2, vsync: this);
  }
}
