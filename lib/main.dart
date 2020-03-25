import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";


void main() {         //main function
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,    //removes debugging watermark
    home: Scaffold(
      appBar: AppBar(
        title: Text("Widget Screen"),
      ),
      drawer: Drawer(child: drawerWidget()),
      body: cardWidget(),
    ),
  ));
}
//for the card widget screen
class cardWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return cardWidgetState();
  }
}

class cardWidgetState extends State<cardWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("Images/nepal.jpg"),//for the background image
              fit: BoxFit.cover),
        ),
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,// place all the cards in the center
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,//creates space between rows
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0)),
                        color: Colors.grey[350],
                        child: Padding(
                            padding: EdgeInsets.all(20.0),
                            child: Text("this is box1",
                                style: TextStyle(
                                  fontSize: 20.0,
                                )))),
                  ),
                  Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0)),
                        color: Colors.grey[350],
                        child: Padding(
                            padding: EdgeInsets.all(20.0),
                            child: Text("this is box1",
                                style: TextStyle(
                                  fontSize: 20.0,
                                )))),
                  ),
                ],
              ),
              SizedBox(       //increase space between the columns
                height: 6.0,
              ),
              Padding(
                padding: EdgeInsets.all(20.0),
                child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0)),
                    color: Colors.grey[350],
                    child: Padding(
                        padding: EdgeInsets.all(20.0),
                        child: Text("this is box1",
                            style: TextStyle(
                              fontSize: 20.0,
                            )))),
              ),
              SizedBox(
                height: 6.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0)),
                        color: Colors.grey[350],
                        child: Padding(
                            padding: EdgeInsets.all(20.0),
                            child: Text("this is box1",
                                style: TextStyle(
                                  fontSize: 20.0,
                                )))),
                  ),
                  Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0)),
                        color: Colors.grey[350],
                        child: Padding(
                            padding: EdgeInsets.all(20.0),
                            child: Text("this is box1",
                                style: TextStyle(
                                  fontSize: 20.0,
                                )))),
                  ),
                ],
              ),
              SizedBox(
                height: 6.0,
              ),
              Padding(
                padding: EdgeInsets.all(20.0),
                child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0)),
                    color: Colors.grey[350],
                    child: Padding(
                        padding: EdgeInsets.all(20.0),
                        child: Text("this is box1",
                            style: TextStyle(
                              fontSize: 20.0,
                            )))),
              ),
              SizedBox(
                height: 6.0,
              ),
              Padding(
                padding: EdgeInsets.all(20.0),
                child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0)),
                    color: Colors.grey[350],
                    child: Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Text(
                        "this is a big box of textsa Dgsafg vzxvc\nahsdlfhlashflkasfasljdfklasjfl;saf\nhasljkhfjkahsfasdfj;lasjdf",
                        style: TextStyle(
                          fontSize: 20.0,
                        ),
                      ),
                    )),
              ),
            ],
          ),
        ));
  }
}

//for the text widget field
class textField extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return textFieldState();
  }
}

class textFieldState extends State<textField> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Row(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(15.0),
              child: CircleAvatar(    //
                  backgroundImage: AssetImage("Images/nepal.jpg"),
                  radius: 32.0),
            ),
            Expanded(
                child: Padding(
              padding: EdgeInsets.only(right: 10.0),
              child: TextField(       //text field to write something
                  maxLines: 2,
                  decoration: InputDecoration(
                    hintText: "Text feild",
                    border: OutlineInputBorder(), //create outer border lines
                  )),
            ))
          ],
        ),
        Row(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 12.0),
              child: RaisedButton(          //raised button or submit button
                color: Colors.grey[350],
                onPressed: () {},
                child: Text(
                  "Wish",
                  style: TextStyle(fontSize: 16, color: Colors.black),
                ),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0)),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20.0),
              child: Container(
                width: 145.0,
                height: 55.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0),
                  color: Colors.black,
                ),
              ),
            ),
            RaisedButton(
              color: Colors.grey[350],
              onPressed: () {},
              child: Text(
                "Submit",
                style: TextStyle(fontSize: 16, color: Colors.black),
              ),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0)),
            )
          ],
        ),
      ],
    );
  }
}

//  for the navigation drawer
class drawerWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return drawerWidgetState();
  }
}

class drawerWidgetState extends State<drawerWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(      //creates list on drawers
      children: <Widget>[
        Container(
          width: double.infinity,
          height: 120,
          padding: EdgeInsets.only(top: 25.0),
          color: Colors.blue,
          child: ListTile(
            leading: Container(
              width: 65,
              height: 100,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(     //loads image
                      image: AssetImage("Images/nepal.jpg"), fit: BoxFit.fill)),
            ),
            title: Text(
              "Sandip Puri",
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Text(
              "sandip.puri980@gmail.com",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        ListTile(
          leading: IconButton(
            icon: Icon(Icons.account_circle),
          ),
          title: Text("profile"),
          onTap: (){},
        ),
        ListTile(
          leading: Icon(Icons.share),
          onTap: (){},
          title: Text("page 2"),
          subtitle: Text("subtitiles"),
        ),
        ListTile(
          leading: Icon(Icons.font_download),
          onTap: () {},
          title: Text("page 3"),
        ),
        ListTile(
          leading: Icon(Icons.report_problem),
          onTap: () {},
          title: Text("page 4"),
        ),
        ListTile(
          leading: Icon(Icons.help),
          onTap: () {},
          title: Text("page 5"),
        ),
        ListTile(
          leading: Icon(Icons.info),
          onTap: () {},
          title: Text("page 6"),
        ),
        ListTile(
          leading: Icon(Icons.assignment),
          onTap: () {},
          title: Text("page 7"),
        ),
      ],
    );
  }
}
