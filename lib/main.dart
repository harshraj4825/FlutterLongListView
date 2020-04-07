
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    title: "Long List View",
    home: Scaffold(
      appBar: AppBar(title: Text("Long List View"),),
      body: getListView(),
      floatingActionButton: FloatingActionButton(
        onPressed: (){

        },
        child: Icon(Icons.add),
        tooltip: "Add one more item",
      ),
    ),
  ));
}
void showSnackBar(BuildContext context, String item){
  var snackBar=SnackBar(
    content: Text("You just tapped the $item"),
    action: SnackBarAction(
      label: "UNDO",
      onPressed: (){
        debugPrint("Performing dummy undo action");
      },
    ),
  );
  Scaffold.of(context).showSnackBar(snackBar);
}
List<String> getListElement(){
  var items =List<String>.generate(1000, (counter)=>"Item no. $counter");
  return items;
}
Widget getListView(){
  var listItems=getListElement();
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