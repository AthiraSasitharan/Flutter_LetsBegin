import 'package:flutter/material.dart';
import 'package:flutter_lets_begin/DataProvider.dart';
import 'package:flutter_lets_begin/DetailsPageView.dart';
import 'package:flutter_lets_begin/Res.dart';
import 'package:flutter_lets_begin/models.dart';

var list = List<MainItems>();

class DashBoardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          Strings.titleDashboard,
        ),
      ),
      body: createView(),
    );
  }
}

class createView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    list = getMainItemsList();
    return Container(
      padding: EdgeInsets.all(4),
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemBuilder: (context, index) => PlanentItem(list[index], index),
        itemCount: list.length,
      ),
    );
  }
}

class PlanentItem extends StatelessWidget {
  final MainItems item;
  final int selectedItemIndex;

  PlanentItem(this.item, this.selectedItemIndex);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        loadNext(context, selectedItemIndex);
      },
      child: Card(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(item.image),
              fit: BoxFit.cover,
            ),
          ),
          alignment: Alignment.bottomCenter,
          child: Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.5),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    item.name,
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              )),
        ),
      ),
    );
  }
}

void loadNext(BuildContext context, int index) {
  Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) => DetailsPageView(selectedItemIndex: index, fetchedList: list)));
}
