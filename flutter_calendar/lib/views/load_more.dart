import 'package:flutter/material.dart';
import 'package:rect_getter/rect_getter.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Visible Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(title: 'Visible Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var _keys = {};

  @override
  Widget build(BuildContext context) {
    /// Make the entire ListView have the ability to get rect.
    var listViewKey = RectGetter.createGlobalKey();

    var listView = RectGetter(
      key: listViewKey,
      child: ListView.builder(
        itemCount: 1000,
        itemBuilder: (BuildContext context, int index) {
          /// Make every item have the ability to get rect,
          /// and save keys for RectGetter and its index into _keys.
          _keys[index] = RectGetter.createGlobalKey();
          return RectGetter(
            key: _keys[index],
            child: Container(
              color: Colors.primaries[index % Colors.primaries.length],
              child: SizedBox(
                width: 100.0,
                /// random height
                height: 50.0 + ((27 * index) % 15) * 3.14,
                child: Center(
                  child: Text('$index'),
                ),
              ),
            ),
          );
        },
      ),
    );

    List<int> getVisible() {
      /// First, get the rect of ListView, and then traver the _keys
      /// get rect of each item by keys in _keys, and if this rect in the range of ListView's rect,
      /// add the index into result list.
      var rect = RectGetter.getRectFromKey(listViewKey);
      var _items = <int>[];
      _keys.forEach((index, key) {
        var itemRect = RectGetter.getRectFromKey(key);
        if (itemRect != null && !(itemRect.top > rect.bottom || itemRect.bottom < rect.top))
          {
            _items.add(index);

          }
      });

      /// so all visible item's index are in this _items.
      return _items;
    }

    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: NotificationListener<ScrollUpdateNotification>(
        onNotification: (notification) {
          /// print all visible item's index when scroll updated.
          print(getVisible());
          return true;
        },
        child: listView,
      ),
    );
  }
}