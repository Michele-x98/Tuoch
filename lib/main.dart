import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:local_auth/local_auth.dart';
import 'package:tuoch/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
    // When navigating to the "/" route, build the FirstScreen widget.
    '/login': (context) => LoginPage(),
    // When navigating to the "/second" route, build the SecondScreen widget.
    '/home': (context) => HomePage(),
  },
      initialRoute: '/login',
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  bool _authorized;
  LocalAuthentication localAuthentication = LocalAuthentication();

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Colors.greenAccent, Colors.cyanAccent])),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            
            children: <Widget>[
              Card(
                margin: EdgeInsets.all(120),
                shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),),
                elevation: 5,
                color: Colors.white,
                child: Image.network("https://blocktribune.com/wp-content/uploads/2019/04/zengo.png", scale: 5,),
              ),
              GestureDetector(
                onTap: () => {
                  _autenticate(),
                },
                  child: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Icon(Icons.lock_open, size: 25, color: Colors.greenAccent,),
                ),
              ),
              Divider(color: Colors.transparent),
              Text("Open with Touch ID",
               style: TextStyle(color: Colors.white,), textAlign: TextAlign.center, ),
            ],
          ),
        ),
      ), 
    );
  }

  Future<void> _autenticate() async {
    bool autenticated = false;

    try {
      autenticated = await localAuthentication.authenticateWithBiometrics(
        localizedReason: "Scan your finger",
        useErrorDialogs: false,
        stickyAuth: false,
        );
    } on PlatformException catch (e) {
      print(e);
    }

    if(!mounted) return;

    setState(() {
      _authorized = autenticated ? true : false;
    });

    if(_authorized == true){
      Navigator.popAndPushNamed(context, '/home');
    }

  }

}

