import 'package:flutter/material.dart';
  void main() {
    runApp(new MyApp (
      title: new Text("HNG Stage 2 Task"),
    ));
  }

  class MyApp extends StatefulWidget {
    MyApp({ required this.title });
    final Widget title;
    @override
    MyAppState createState() => new MyAppState();
  }

  class MyAppState extends State<MyApp> {
    TextEditingController eCtrl = new TextEditingController();
    String value = '';
    @override
    Widget build(BuildContext context) {
      return new MaterialApp (
        home: new Scaffold(
          appBar: new AppBar(title: widget.title),
          body: new Column (
            children: <Widget>[
              new TextField (
                controller: eCtrl,
                decoration: new InputDecoration.collapsed(hintText: 'Add Something'),

                onChanged: (String text) {
                  setState(() {
                    //value = text;
                  });
                },
                onSubmitted: (String text) {
                  setState(() {
                    value = text;
                  });
                  eCtrl.clear();
                },

              ),
              new Text("\n\n $value"),
              Image.asset(
                'assets/Zuri Team.png'),
            ],
            ),
          ),
        );
  }
}