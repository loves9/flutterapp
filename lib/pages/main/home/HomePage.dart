import 'package:flutter/material.dart';

import '../../component/BusinessItem.dart';

import '../../ListPage.dart';
import '../../AboutPage.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(title: Text('Home')),
      body: createGrid(),
    );
  }

  void _onTap() {
    print('00000');
    Navigator.of(context).push(new MaterialPageRoute(builder: (context) => new AboutPage()));
  }

  Widget createContainer() {
    return new Container(
      width: MediaQuery.of(context).size.width,
      decoration: new BoxDecoration(color: Colors.grey[400]),
      child: Column(
        children: <Widget>[],
      ),
    );
  }

  Widget createGrid() {
    return new GridView.count(
      primary: true,
      padding: const EdgeInsets.all(0.0),
      crossAxisSpacing: 1.0,
      mainAxisSpacing: 1.0,
      crossAxisCount: 4,
      children: <Widget>[
        BusinessItem(
          title: '费用报销',
          icon: Icon(
            Icons.account_box,
          ),
          onTap: _onTap,
        ),
        BusinessItem(
          title: '公文阅览',
          icon: Icon(
            Icons.access_alarm,
          ),
          onTap: _onTap,
        ),
        BusinessItem(
          title: '会议室预定',
          icon: Icon(
            Icons.access_alarm,
          ),
          onTap: _onTap,
        ),
        BusinessItem(
          title: '会议审议',
          icon: Icon(
            Icons.access_alarm,
          ),
          onTap: _onTap,
        ),
        BusinessItem(
          title: '数据驾驶舱',
          icon: Icon(
            Icons.access_alarm,
          ),
          onTap: _onTap,
        ),
        BusinessItem(
          title: '数据驾驶舱',
          icon: Icon(
            Icons.access_alarm,
          ),
          onTap: _onTap,
        ),
        BusinessItem(
          title: '数据驾驶舱',
          icon: Icon(
            Icons.access_alarm,
          ),
          onTap: _onTap,
        ),
        BusinessItem(
          title: '数据驾驶舱',
          icon: Icon(
            Icons.access_alarm,
          ),
          onTap: _onTap,
        ),
      ],
    );
  }
}
