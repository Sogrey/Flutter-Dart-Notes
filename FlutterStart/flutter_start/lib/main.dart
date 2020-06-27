import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Start',
      theme: ThemeData(
        primarySwatch: Colors.purple,
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
  String title, subTitle, link;
  Color color;
  IconData icon;

  Item({this.icon, this.title, this.subTitle, this.link, this.color});

  IconData getIcon() {
    return this.icon;
  }

  String getTitle() {
    return this.title;
  }

  String getSubtitle() {
    return this.subTitle;
  }

  String getLink() {
    return this.link;
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
    Item(
        icon: Icons.text_format,
        title: 'Text',
        subTitle: 'This is Text widget.',
        link: 'TextLink',
        color: Colors.purple[300]),
    Item(
        icon: Icons.insert_emoticon,
        title: 'Icon',
        subTitle: 'This is Icon widget.',
        link: 'IconLink',
        color: Colors.purple[400]),
    Item(
        icon: Icons.image,
        title: 'Image',
        subTitle: 'This is Image widget.',
        link: 'ImageLink',
        color: Colors.purple[500]),
    Item(
        icon: Icons.format_paint,
        title: 'Button',
        subTitle: 'This is Button widget.',
        link: 'ButtonLink',
        color: Colors.purple[600]),
    Item(
        icon: Icons.flag,
        title: 'FlutterLogo',
        subTitle: 'This is FlutterLogo widget.',
        link: 'FlutterLogoLink',
        color: Colors.purple[700]),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        shrinkWrap: true,
        padding: const EdgeInsets.all(0.0),
        children: data.map((item) {
          return CustomListTile(item);
        }).toList(),
      ),
    );
  }
}



class CustomListTile extends StatelessWidget {
  final Item item;

  CustomListTile(this.item);
  _onTap(String link) {
//    print(link);
  }
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
          child: Icon(
            item.getIcon(),
            color: Colors.white,
          ),
          color: item.getColor(),
          width: 60,
          height: 60),
      trailing: Icon(Icons.chevron_right, color: item.getColor()),
      title: Text(
        item.getTitle(),
        style: TextStyle(color: Colors.black),
      ),
      subtitle: Text(
        item.getSubtitle(),
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
      ),
      onTap: _onTap(item.getLink()),
    );
  }
}
