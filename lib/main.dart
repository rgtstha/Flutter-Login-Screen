import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

void main() => runApp(MaterialApp(
      title: 'Login Screen',
      home: MyApp(),
  debugShowCheckedModeBanner: false,
    ));

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController usernameController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Login UI'),
        centerTitle: true,
      ),
      body: Center(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15.0),
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                      color: Colors.black54,
                      offset: Offset(1.0, 1.0),
                      spreadRadius: 0.2,
                      blurRadius: 5.0,
                    )
                  ]),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    FlutterLogo(
                      size: 60.0,
                    ),
                    SizedBox(height: 30.0),
                    TextField(
                      controller: usernameController,
                      decoration: InputDecoration(
                          icon: Icon(Icons.person_pin),
                          hintText: 'Enter your name',
                          labelText: 'Username'),
                    ),
                    TextField(
                      controller: passwordController,
                      decoration: InputDecoration(
                          icon: Icon(Icons.lock),
                          hintText: 'Enter your password',
                          labelText: 'Password'),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: RaisedButton(
                              onPressed: () {},
                              padding: EdgeInsets.fromLTRB(0, 15, 0, 15),
                              child: Text(
                                'Login',
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 20.0,
                          ),
                          Expanded(
                            child: RaisedButton(
                              padding: EdgeInsets.fromLTRB(0, 15, 0, 15),
                              onPressed: () {},
                              child: Text('Clear'),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              )),
        ),
      )),
    );
  }
}
