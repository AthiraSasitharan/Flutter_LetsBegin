import 'package:flutter/material.dart';
import 'package:flutter_lets_begin/DataProvider.dart';
import 'package:flutter_lets_begin/Res.dart';
import 'package:flutter_lets_begin/models.dart';

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
  var list = List<MainItems>();

  @override
  Widget build(BuildContext context) {
    list = getMainItemsList();
    return Container(
      padding: EdgeInsets.all(4),
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemBuilder: (context, index) => PlanentItem(list[index]),
        itemCount: list.length,
      ),
    );
  }
}

class PlanentItem extends StatelessWidget {
  final MainItems item;

  PlanentItem(this.item);

  @override
  Widget build(BuildContext context) {
    return ListTile(
        leading: CircleAvatar(child: Text(item.name[0])),
        title: Text(item.name),
        subtitle: Text(item.name));
  }
}
