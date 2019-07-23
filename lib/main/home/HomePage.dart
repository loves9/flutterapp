import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
        appBar: AppBar(title: Text('Home')),
        body: createGrid());
  }

  void _onTap() {
    print('00000');
  }

  Widget createContainer() {
    return new Container(
      width: MediaQuery.of(context).size.width,
      decoration: new BoxDecoration(color: Colors.grey[200]),
      child: Column(
        children: <Widget>[
          Text('00'),
          Text('data'),
        ],
      ),
    );
  }

  Widget createGrid() {
    return new GridView.count(
      primary: true,
      padding: const EdgeInsets.all(10.0),
      crossAxisSpacing: 10.0,
      crossAxisCount: 4,
      children: <Widget>[
        const Text('费用报销'),
        const Text('会议室预定'),
        const Text('会议审议'),
        const Text('公文阅览'),
        const Text('数据驾驶舱'),
        const Text('融慧查'),
        IconButton(
            icon: new Icon(Icons.list), onPressed: _onTap, color: Colors.blue),
        Column(
          children: <Widget>[
            IconButton(
                icon: new Icon(Icons.list),
                onPressed: _onTap,
                color: Colors.blue),
            Text('测试'),
          ],
        ),
      ],
    );
  }
}
