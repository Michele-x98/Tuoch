import 'package:flutter/material.dart';
import 'package:tuoch/net.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
  body: CustomScrollView(
      
  slivers: <Widget>[
    SliverAppBar(
      //title: Text("My Wallet"),
      centerTitle: true,
      
      backgroundColor: Colors.blueAccent,
      pinned: true,
      floating: true,
      expandedHeight: 200.0,
      leading: GestureDetector(
        child: Icon(Icons.add_circle_outline),
      ),
      automaticallyImplyLeading: true,
      flexibleSpace: FlexibleSpaceBar(
        title: Text('My Wallet'),
        centerTitle: true,
        background: Image.network("https://blog.spoongraphics.co.uk/wp-content/uploads/2013/10/Untitled-11.jpg", fit: BoxFit.fill,),
      ),
    ),
  
    SliverFixedExtentList(
      itemExtent: 50.0,
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          return Card(
            child: Text('list'),
          );
        },
      ),
    ),
  ],
)
    );
  }
}

Widget myDetailsContainer1() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Container(child: Text("Candy Bliss",
            style: TextStyle(color: Color(0xffe6020a), fontSize: 24.0,fontWeight: FontWeight.bold),)),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(child: Text("4.3",
                    style: TextStyle(color: Colors.black54, fontSize: 18.0,),)),
                  Container(child: Icon(
                    FontAwesomeIcons.solidStar, color: Colors.amber,
                    size: 15.0,),),
                  Container(child: Icon(
                    FontAwesomeIcons.solidStar, color: Colors.amber,
                    size: 15.0,),),
                  Container(child: Icon(
                    FontAwesomeIcons.solidStar, color: Colors.amber,
                    size: 15.0,),),
                  Container(child: Icon(
                    FontAwesomeIcons.solidStar, color: Colors.amber,
                    size: 15.0,),),
                  Container(child: Icon(
                    FontAwesomeIcons.solidStarHalf, color: Colors.amber,
                    size: 15.0,),),
                  Container(child: Text("(321) \u00B7 0.9 mi",
                    style: TextStyle(color: Colors.black54, fontSize: 18.0,),)),
                ],)),
        ),
        Container(child: Text("Pastries \u00B7 Phoenix,AZ",
          style: TextStyle(color: Colors.black54, fontSize: 18.0,fontWeight: FontWeight.bold),)),
      ],
    );
  }

  Widget myDetailsContainer2() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Container(child: Text("Chocolate Haven",
            style: TextStyle(color: Color(0xffe6020a), fontSize: 24.0,fontWeight: FontWeight.bold),)),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Container(child: Row(children: <Widget>[
            Container(child: Text("4.3",
              style: TextStyle(color: Colors.black54, fontSize: 18.0,),)),
            Container(child: Icon(
              FontAwesomeIcons.solidStar, color: Colors.amber, size: 15.0,),),
            Container(child: Icon(
              FontAwesomeIcons.solidStar, color: Colors.amber, size: 15.0,),),
            Container(child: Icon(
              FontAwesomeIcons.solidStar, color: Colors.amber, size: 15.0,),),
            Container(child: Icon(
              FontAwesomeIcons.solidStar, color: Colors.amber, size: 15.0,),),
            Container(child: Icon(
              FontAwesomeIcons.solidStarHalf, color: Colors.amber,
              size: 15.0,),),
            Container(child: Text("(75) \u00B7 1.2 mi",
              style: TextStyle(color: Colors.black54, fontSize: 18.0,),)),
          ],)),
        ),
        Container(child: Text("Pastries \u00B7 Phoenix,AZ",
          style: TextStyle(color: Colors.black54, fontSize: 18.0,),)),
      ],
    );
  }

  Widget myDetailsContainer3() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Container(child: Text("Cake Walk",
            style: TextStyle(color: Color(0xffe6020a), fontSize: 24.0,fontWeight: FontWeight.bold),)),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Container(child: Row(children: <Widget>[
            Container(child: Text("4.0",
              style: TextStyle(color: Colors.black54, fontSize: 18.0,),)),
            Container(child: Icon(
              FontAwesomeIcons.solidStar, color: Colors.amber, size: 15.0,),),
            Container(child: Icon(
              FontAwesomeIcons.solidStar, color: Colors.amber, size: 15.0,),),
            Container(child: Icon(
              FontAwesomeIcons.solidStar, color: Colors.amber, size: 15.0,),),
            Container(child: Icon(
              FontAwesomeIcons.solidStar, color: Colors.amber, size: 15.0,),),
            Container(child: Text("(100) \u00B7 2.0 mi",
              style: TextStyle(color: Colors.black54, fontSize: 18.0,),)),
          ],)),
        ),
        Container(child: Text("Pastries \u00B7 Phoenix,AZ",
          style: TextStyle(color: Colors.black54, fontSize: 18.0,),)),
      ],
    );
  }

  Widget myDetailsContainer4() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Container(child: Text("Chocolate Bar",
            style: TextStyle(color: Color(0xffe6020a), fontSize: 24.0,fontWeight: FontWeight.bold),)),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Container(child: Row(children: <Widget>[
            Container(child: Text("3.5", style: TextStyle(
              color: Colors.black54, fontSize: 18.0,),)),
            Container(child: Icon(
              FontAwesomeIcons.solidStar, color: Colors.amber, size: 15.0,),),
            Container(child: Icon(
              FontAwesomeIcons.solidStar, color: Colors.amber, size: 15.0,),),
            Container(child: Icon(
              FontAwesomeIcons.solidStar, color: Colors.amber, size: 15.0,),),
            Container(child: Icon(
              FontAwesomeIcons.solidStarHalf, color: Colors.amber,
              size: 15.0,),),
            Container(child: Text("(50) \u00B7 2.5 mi",
              style: TextStyle(color: Colors.black54, fontSize: 18.0,),)),
          ],)),
        ),
        Container(child: Text("Pastries \u00B7 Phoenix,AZ",
          style: TextStyle(color: Colors.black54, fontSize: 18.0,),)),
      ],
    );
  }
