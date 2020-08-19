import 'package:flutter/material.dart';
import 'package:flutter_complete_guide2/screens/popup.dart';

class cont extends StatelessWidget {
  cont(Login login);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
            margin: EdgeInsets.only(
                top: 100.0, bottom: 100.0, left: 80.0, right: 80),
            padding: EdgeInsets.only(top: 40.0, left: 20.0),
            alignment: Alignment.center,
            color: Colors.brown,
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Text(
                        "User id",
                        textDirection: TextDirection.ltr,
                        style: TextStyle(
                          decoration: TextDecoration.none,
                          color: Colors.red,
                          fontSize: 40.0,
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Text(
                        "Password",
                        textDirection: TextDirection.ltr,
                        style: TextStyle(
                          decoration: TextDecoration.none,
                          color: Colors.white,
                          fontSize: 40.0,
                        ),
                      ),
                    ),
                  ],
                ),
                Login()
                //Images(),
              ],
            )));
  }
}

/*class Images extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage('images/ss.jpg');
    Image image = Image(image: assetImage);
    return Container(
      child: image,
    );
  }
}*/
