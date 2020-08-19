import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20.0),
      width: 200.0,
      child: RaisedButton(
        color: Colors.deepOrange,
        child: Text(
          'Login',
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 20.0, color: Colors.white),
        ),
        elevation: 9.0,
        onPressed: () {
          Login_page(context);
        },
      ),
    );
  }
}

void Login_page(BuildContext context) {
  var popup = AlertDialog(
    title: Text('Login Successfuly'),
    content: Text('Enjoy our app'),
    actions: <Widget>[
      FlatButton(
        child: Text('okay'),
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
    ],
  );
  showDialog(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext) {
        return Dialog(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
          child: Container(
            height: 350.0,
            width: 200.0,
            decoration:
                BoxDecoration(borderRadius: BorderRadius.circular(20.0)),
            child: Column(
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    Container(
                      height: 150.0,
                    ),
                    Container(
                      height: 100.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10.0),
                          topRight: Radius.circular(10),
                        ),
                        color: Colors.red,
                      ),
                    ),
                    Positioned(
                      top: 50.0,
                      left: 94.0,
                      child: Container(
                        height: 90.0,
                        width: 90.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(45.0),
                          border: Border.all(
                              color: Colors.white,
                              style: BorderStyle.solid,
                              width: 2.0),
                          image: DecorationImage(
                            image: NetworkImage(
                                'https://fcw.com/-/media/GIG/FCWNow/Topics/Concepts/smiley.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.0,
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    'Succesfully Logined',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),
                FlatButton(
                  child: Center(
                    child: Text(
                      'Okay',
                      style: TextStyle(fontSize: 14.0, color: Colors.teal),
                    ),
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  color: Colors.transparent,
                ),
              ],
            ),
          ),
        );
      });
}
