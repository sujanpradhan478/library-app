import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MainApp());

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Library App',
        debugShowCheckedModeBanner: false,
        home: _MainAppState());
  }
}

class _MainAppState extends StatefulWidget {
  @override
  __MainAppStateState createState() => __MainAppStateState();
}

class __MainAppStateState extends State<_MainAppState> {
  bool obscure = true;
  bool visibleb = false;

  void visiblepressed() {
    setState(() {
      visibleb = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Stack(
        fit: StackFit.expand,
        children: <Widget>[
          new Image(
            image: new AssetImage("assets/softwarica_back.jpg"),
            fit: BoxFit.cover,
            color: Colors.black87,
            colorBlendMode: BlendMode.darken,
          ),
          SingleChildScrollView(
              child: new Center(
            child: new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Padding(
                    padding: new EdgeInsets.fromLTRB(30, 100, 30, 100),
                    child: new Image.asset("assets/softwarica-conventry.png")),
                Visibility(
                  visible: !visibleb,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 200, 0, 10),
                    child: RawMaterialButton(
                      onPressed: () {
                        setState(() => visibleb = !visibleb);
                      },
                      child: Text("Login"),
                      textStyle: TextStyle(fontSize: 20),
                      shape: StadiumBorder(),
                      padding: const EdgeInsets.fromLTRB(80, 8, 80, 8),
                      fillColor: Colors.blue,
                    ),
                  ),
                ),
                Visibility(
                  visible: visibleb,
                  child: new Card(
                    elevation: 10,
                    child: new Container(
                      width: 300,
                      child: Column(
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(12, 12, 0, 20),
                                child: new Text("Login",
                                    style: TextStyle(
                                        fontSize: 28,
                                        fontWeight: FontWeight.bold),
                                    textAlign: TextAlign.left),
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                height: 50,
                                width: 260,
                                child: new TextFormField(
                                  decoration: new InputDecoration(
                                    hintText: "Username",
                                    hintStyle: TextStyle(
                                        fontSize: 16,
                                        height: 3.3,
                                        color: Colors.black87),
                                    icon: Icon(Icons.account_circle,
                                        size: 28, color: Colors.black87),
                                    filled: true,
                                    fillColor: Colors.transparent,
                                    hoverColor: Colors.deepPurpleAccent,
                                    enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Colors.black87,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(10.0)),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                height: 50,
                                width: 260,
                                child: new TextFormField(
                                  decoration: new InputDecoration(
                                    hintText: "Password",
                                    suffixIcon: new GestureDetector(
                                      behavior: HitTestBehavior.deferToChild,
                                      onTap: () {
                                        setState(() {
                                          obscure = !obscure;
                                        });
                                      },
                                      child: new Icon(obscure
                                          ? Icons.visibility_off
                                          : Icons.visibility),
                                    ),
                                    hintStyle: TextStyle(
                                        fontSize: 16,
                                        height: 3.3,
                                        color: Colors.black87),
                                    icon: Icon(
                                      Icons.lock,
                                      size: 28,
                                      color: Colors.black87,
                                    ),
                                    filled: true,
                                    fillColor: Colors.transparent,
                                    hoverColor: Colors.deepPurpleAccent,
                                    enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Colors.black87,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(10.0)),
                                  ),
                                  obscureText: obscure,
                                ),
                              ),
                              SizedBox(height: 10),
                              RawMaterialButton(
                                onPressed: () {},
                                child: Text("Login"),
                                textStyle: TextStyle(fontSize: 20),
                                shape: StadiumBorder(),
                                padding:
                                    const EdgeInsets.fromLTRB(80, 8, 80, 8),
                                fillColor: Colors.black87,
                              ),
                              SizedBox(height: 10)
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ))
        ],
      ),
    );
  }
}
