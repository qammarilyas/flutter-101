import 'package:flutter/material.dart';

void main() => runApp(list());

class list extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ListView(
          children: <Widget>[
            ListTile(
              leading: Icon(
                Icons.network_wifi,
                color: Colors.blue,
              ),
              title: Text('Network & Setting'),
              subtitle: Text('wifi, mobile data, internet'),
              trailing: Icon(Icons.add),
            ),
          ],
        ),
      ),
    );
  }
}
