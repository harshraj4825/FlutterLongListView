import 'package:flutter/material.dart';

import '../main.dart';
Widget getListView(List<String> list){
  var listItems=list;
  var listView=ListView.builder(itemBuilder: (context,intex){
    return ListTile(
      leading: Icon(Icons.arrow_right),
      title: Text(listItems[intex]),
      onTap: (){
        showSnackBar(context, listItems[intex]);
      },
    );
  });
  return listView;
}