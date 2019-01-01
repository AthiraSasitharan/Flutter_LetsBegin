import 'package:flutter/material.dart';
import 'package:flutter_lets_begin/models.dart';

String title = "Init";
PageController pageController;
int index = 0;
var list = List<MainItems>();

class DetailsPageView extends StatefulWidget {
  DetailsPageView({Key key, this.selectedItemIndex, this.fetchedList});

  int selectedItemIndex;
  List<MainItems> fetchedList;

  @override
  State<StatefulWidget> createState() {
    return CreateDetailsPage();
  }
}

class CreateDetailsPage extends State<DetailsPageView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: PageView.builder(
        itemBuilder: (context, index) => PlanentItem(list[index]),
        itemCount: list.length,
        onPageChanged: onPageSelected,
        controller: pageController,
      ),
    );
  }

  void onPageSelected(int page) {
    setState(() {
      var item = list[page];
      title = item.name;
    });
  }

  @override
  void initState() {
    super.initState();
    index = widget.selectedItemIndex;
    list = widget.fetchedList;
    title = list[index].name;
    pageController = PageController(initialPage: index);
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
