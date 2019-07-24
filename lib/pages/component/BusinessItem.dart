import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BusinessItem extends StatefulWidget {
  BusinessItem({Key key, this.title, this.icon, this.onTap}) : super(key: key);

  final String title;
  final Icon icon;
  final Function onTap;
  @override
  BusinessItemState createState() => BusinessItemState();
}

class BusinessItemState extends State<BusinessItem> {
  var isDown = false;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(body: createItem(context));
  }

  Widget createItem(BuildContext context) {
    return new GestureDetector(
        onTap: widget.onTap,
        onTapDown: (d) => setState(() => this.isDown = true),
        onTapUp: (d) => setState(() => this.isDown = false),
        onTapCancel: () => setState(() => this.isDown = false),
        child: AnimatedContainer(
          duration: Duration(milliseconds: 500),
          alignment: Alignment.center,
          decoration: new BoxDecoration(color: Colors.white),
          foregroundDecoration: BoxDecoration(
            color: isDown ? Colors.white.withOpacity(0.5) : Colors.transparent,
          ),
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              widget.icon,
              Text(widget.title),
            ],
          ),
        ));
  }
}
