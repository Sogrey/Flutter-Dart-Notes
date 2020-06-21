import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Start',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Widgets'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class Item {
  String text;
  Color color;
  IconData icon;

  Item(this.icon, this.text, this.color);

  IconData getIcon() {
    return this.icon;
  }

  String getText() {
    return this.text;
  }

  Color getColor() {
    return this.color;
  }
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Container(
          child: CustomListView(),
        ));
  }
}

class CustomListView extends StatelessWidget {
  final data = <Item>[
    Item(Icons.text_format, 'Text', Colors.purple[300]),
    Item(Icons.insert_emoticon, 'Icon', Colors.purple[400]),
    Item(Icons.image, 'Image', Colors.purple[500]),
    Item(Icons.format_paint, 'Button', Colors.purple[600]),
    Item(Icons.flag, 'FlutterLogo', Colors.purple[700]),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        shrinkWrap: true,
        padding: const EdgeInsets.all(0.0),
        children: data.map((item) {
          return Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
            height: 50,
            width: 80,
            color: item.getColor(),
            child: Row(
              children: <Widget>[
                Icon(
                  item.getIcon(),
                  color: Colors.white,
                ),
                Spacer(),
                Text(
                  item.getText(),
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          );
        }).toList(),
      ),
    );
  }
}
