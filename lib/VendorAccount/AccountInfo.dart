import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: new HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  HomePageState createState() => new HomePageState();
}

class HomePageState extends State<HomePage> {
  TextEditingController _controller = new TextEditingController();
  bool _enabled = false;

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Disabled Text'),
      ),
      floatingActionButton: new FloatingActionButton(
          child: new Icon(Icons.free_breakfast),
          onPressed: () {
            setState(() {
              _enabled = !_enabled;
            });
          }),
      body: new Card(
        child: new Container(
          margin: const EdgeInsets.all(10.0),
          child: _enabled
              ? new TextFormField(controller: _controller)
              : new FocusScope(
                  node: new FocusScopeNode(),
                  child: new TextFormField(
                    controller: _controller,
                    style: theme.textTheme.subhead!.copyWith(
                      color: theme.disabledColor,
                    ),
                    decoration: new InputDecoration(
                      hintText:
                          _enabled ? 'Type something' : 'You cannot focus me',
                    ),
                  ),
                ),
        ),
      ),
    );
  }
}
