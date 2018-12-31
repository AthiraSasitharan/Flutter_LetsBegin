import 'package:flutter_lets_begin/models.dart';

List getMainItemsList() {
  var list = List<MainItems>();
  MainItems message = MainItems(
    name: "South Indian",
  );
  list.add(message);
  list.add(MainItems(name: "Chinese"));
  list.add(MainItems(name: "Ice Cream"));
  list.add(MainItems(name: "Juice"));
  list.add(MainItems(name: "Starters"));
  return list;
}