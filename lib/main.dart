import 'package:flutter/material.dart';

void main() {
  runApp(new application());
}

class application extends StatefulWidget {
  @override
  _applicationState createState() => new _applicationState();
}

class _applicationState extends State<application> {
  List<int> items = new List();
  
  @override
  void initState(){
    for(int i=0;i<50;i++){
      items.add(i);
    }
    super.initState();
  }
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      title: 'array list widget',
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('array list widget'),
        ),
        body: new ListView.builder(
          itemCount: items.length,
            itemBuilder: (BuildContext context, int index){
            return new ListTile(
              title: new Text('item no: $index'),
              trailing: new Icon(Icons.arrow_forward),
            );
            }),
      ),
    );
  }

}