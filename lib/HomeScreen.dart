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
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      /*bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        child: new Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
            ),
          ],
        ),
      ),*/
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text(Strings.dashboard),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.details),
            title: Text(Strings.dashboard),
          )
        ],
        onTap: setPage,
        currentIndex: index,
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
