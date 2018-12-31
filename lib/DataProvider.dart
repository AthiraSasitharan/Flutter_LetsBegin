import 'package:flutter_lets_begin/models.dart';

List getMainItemsList() {
  var list = List<MainItems>();
  MainItems message = MainItems(
    name: "South Indian",
    image: "assets/images/south_indian.png",
  );
  list.add(message);
  list.add(MainItems(name: "Chinese", image: "assets/images/chinese.png"));
  list.add(MainItems(name: "Ice Cream", image: "assets/images/icecream.png"));
  list.add(MainItems(name: "Juice", image: "assets/images/juice.png"));
  list.add(MainItems(name: "Starters", image: "assets/images/starters.png"));
  list.add(MainItems(name: "Salads", image: "assets/images/salad.png"));
  list.add(MainItems(name: "Sweets", image: "assets/images/sweets.png"));
  return list;
}
