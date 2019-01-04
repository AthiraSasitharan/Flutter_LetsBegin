import 'package:flutter/material.dart';
import 'package:flutter_lets_begin/models.dart';
import 'package:flutter_lets_begin/utils/StarRatingBar.dart';

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
        itemBuilder: (context, index) => planetItem(list[index]),
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

  Widget planetItem(MainItems item) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Image.asset(
            item.image,
            height: 240,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Container(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Text(
                        "Price: ₹170",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                          color: Colors.black54,
                        ),
                      ),
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.favorite,
                        color: item.isFavourite ? Colors.red : Colors.black45,
                      ),
                      onPressed: () {
                        setState(() {
                          item.isFavourite = !item.isFavourite;
                        });
                      },
                    ),
                  ],
                ),
                StarRating(
                  rating: 3.5,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  item.name,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black54,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "I am trying to create a star bar for user ratings, the following image is from the play store to illustrate what I am trying to achieve: "
                      "I have been able to achieve the following, which is functional as you can see, but when I look at my code, "
                      "I feel like there must be a smarter way to do it, and the really bugging part is that IconButton hit area is being shifted up a little bit,"
                      "so when you touch the actual star it does not register as a touch event "
                      "(i.e: you have to aim higher than where the button is positioned in order for your touch to be registered, "
                      "which makes for a bad UX) you can check what I mean by keeping an eye on the splash effect when I click on any of the stars: "
                      "Too much repetition and padding! duh. Anyway, that's how I'd do it. Simple, reusable. You can use it both with and without clicks (no click disable the ripple effect)."
                      " Half stars too. And use primary color for filled stars if no color is specified.",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                    color: Colors.black54,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
