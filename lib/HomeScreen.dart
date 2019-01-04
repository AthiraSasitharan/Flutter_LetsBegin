import 'package:flutter/material.dart';
import 'package:flutter_lets_begin/utils/Res.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomePage();
  }
}

class HomePage extends State<HomeScreen> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
}
