import 'package:flutter/material.dart';

String title = "Init";
PageController pageController;
int index = 0;

class DetailsPageView extends StatefulWidget {
  DetailsPageView({Key key, this.selectedItemIndex});
  int selectedItemIndex;

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
      body: PageView(
        controller: pageController,
        onPageChanged: onPageSelected,
        children: <Widget>[
          Container(
            child: Center(child: CircleAvatar(child: Text("1"))),
          ),
          Container(
            child: Center(child: Text("2")),
          ),
          Container(
            child: Center(child: Text("Stats")),
          ),
        ],
      ),
    );
  }

  void onPageSelected(int page) {
    setState(() {
      title = page.toString();
    });
  }

  @override
  void initState() {
    super.initState();
    index = widget.selectedItemIndex;
    title = index.toString();
    pageController = PageController(initialPage: index);
  }
}
