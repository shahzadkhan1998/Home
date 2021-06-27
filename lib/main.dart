import 'dart:core';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  // ignore: non_constant_identifier_names

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String netimage = "https://picsum.photos/200/300";
  String netimage1 = "https://picsum.photos/200/300";
  Container functionSearch() {
    return Container(
      child: TextFormField(
        textAlign: TextAlign.start,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.all(10.0),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          hintText: "Search",
          filled: true,
          prefixIcon: Icon(
            Icons.search_rounded,
            size: 20.0,
          ),
          suffixIcon: IconButton(
            icon: Icon(
              Icons.clear,
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(left: 30.0),
                  width: 300.0,
                  height: 80.0,
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 20.0, horizontal: 10.0),
                    child: functionSearch(),
                  ),
                ),
                SizedBox(
                  width: 30.0,
                ),
                Icon(
                  Icons.camera_alt_outlined,
                  size: 30.0,
                ),
              ],
            ),
            Container(
              height: 50.0,
              margin: EdgeInsets.only(left: 5.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                // This next line does the trick.
                child: Row(
                  children: <Widget>[
                    CircleAvatar(
                      radius: 50,
                      backgroundColor: Colors.red,
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(
                            "https://homepages.cae.wisc.edu/~ece533/images/airplane.png"),
                        radius: 35,
                      ),
                    ),
                    CircleAvatar(
                      radius: 50,
                      backgroundColor: Colors.red,
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(
                            "https://homepages.cae.wisc.edu/~ece533/images/arctichare.png"),
                        radius: 35,
                      ),
                    ),
                    CircleAvatar(
                      radius: 50,
                      backgroundColor: Colors.red,
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(
                            "https://homepages.cae.wisc.edu/~ece533/images/boat.png"),
                        radius: 35,
                      ),
                    ),
                    CircleAvatar(
                      radius: 50,
                      backgroundColor: Colors.red,
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(
                            "https://homepages.cae.wisc.edu/~ece533/images/barbara.png"),
                        radius: 35,
                      ),
                    ),
                    CircleAvatar(
                      radius: 50,
                      backgroundColor: Colors.red,
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(
                            "https://homepages.cae.wisc.edu/~ece533/images/cat.png"),
                        radius: 35,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Divider(),
            Column(
              children: [
                SizedBox(
                  height: 550.0,
                  child: ListView(
                    scrollDirection: Axis.vertical,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 350.0,
                            height: 400.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                fit: BoxFit.fill,
                                image: NetworkImage(
                                    "https://homepages.cae.wisc.edu/~ece533/images/fruits.png"),
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                  offset: Offset(
                                      0, 3), // changes position of shadow
                                ),
                              ],
                            ),
                            child: Stack(
                              children: [
                                Positioned(
                                  top: 190,
                                  left: 80,
                                  right: 0,
                                  child: Text(
                                    "Dummy Khan",
                                    style: TextStyle(
                                      color: Colors.pink,
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: 180,
                                  left: 10,
                                  child: CircleAvatar(
                                    backgroundColor: Colors.red[
                                        300], //if there's no background image provided
                                    backgroundImage: NetworkImage(
                                        'https://picsum.photos/250?image=9'), //add URL to netimage
                                    radius: 30.0, //radius of the circle avatar
                                  ),
                                ),
                                Positioned(
                                  top: 210,
                                  left: 80,
                                  right: 0,
                                  child: Text(
                                    "2 hour ago",
                                    style: TextStyle(
                                      color: Colors.blueAccent,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: 250,
                                  left: 0,
                                  right: 0,
                                  child: Container(
                                    width: 100,
                                    height: 150,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(0),
                                          topRight: Radius.circular(0),
                                          bottomLeft: Radius.circular(10),
                                          bottomRight: Radius.circular(10)),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.5),
                                          spreadRadius: 5,
                                          blurRadius: 7,
                                          offset: Offset(0,
                                              3), // changes position of shadow
                                        ),
                                      ],
                                    ),
                                    child: Card(
                                      child: Text(
                                        "Travel  goto river"
                                        "Travel  goto river"
                                        "Travel  goto river"
                                        "Travel  goto river",
                                        style: TextStyle(
                                          color: Colors.black,
                                        ),
                                        textAlign: TextAlign.justify,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Divider(),
                          Container(
                            width: 350.0,
                            height: 400.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                fit: BoxFit.fill,
                                image: NetworkImage(
                                    "https://homepages.cae.wisc.edu/~ece533/images/frymire.png"),
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                  offset: Offset(
                                      0, 3), // changes position of shadow
                                ),
                              ],
                            ),
                            child: Stack(
                              children: [
                                Positioned(
                                  top: 190,
                                  left: 80,
                                  right: 0,
                                  child: Text(
                                    "Dummy Khan",
                                    style: TextStyle(
                                      color: Colors.pink,
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: 180,
                                  left: 10,
                                  child: CircleAvatar(
                                    backgroundColor: Colors.red[
                                        300], //if there's no background image provided
                                    backgroundImage: NetworkImage(
                                        'https://picsum.photos/250?image=9'), //add URL to netimage
                                    radius: 30.0, //radius of the circle avatar
                                  ),
                                ),
                                Positioned(
                                  top: 210,
                                  left: 80,
                                  right: 0,
                                  child: Text(
                                    "2 hour ago",
                                    style: TextStyle(
                                      color: Colors.blueAccent,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: 250,
                                  left: 0,
                                  right: 0,
                                  child: Container(
                                    width: 100,
                                    height: 150,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(0),
                                          topRight: Radius.circular(0),
                                          bottomLeft: Radius.circular(10),
                                          bottomRight: Radius.circular(10)),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.5),
                                          spreadRadius: 5,
                                          blurRadius: 7,
                                          offset: Offset(0,
                                              3), // changes position of shadow
                                        ),
                                      ],
                                    ),
                                    child: Text(
                                      "Travel  goto river"
                                      "Travel  goto river"
                                      "Travel  goto river"
                                      "Travel  goto river",
                                      style: TextStyle(
                                        color: Colors.black,
                                      ),
                                      textAlign: TextAlign.justify,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Divider(),
                          Container(
                            width: 350.0,
                            height: 400.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                fit: BoxFit.fill,
                                image: NetworkImage(
                                    "https://homepages.cae.wisc.edu/~ece533/images/lena.png"),
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                  offset: Offset(
                                      0, 3), // changes position of shadow
                                ),
                              ],
                            ),
                            child: Stack(
                              children: [
                                Positioned(
                                  top: 190,
                                  left: 80,
                                  right: 0,
                                  child: Text(
                                    "Dummy Khan",
                                    style: TextStyle(
                                      color: Colors.pink,
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: 180,
                                  left: 10,
                                  child: CircleAvatar(
                                    backgroundColor: Colors.red[
                                        300], //if there's no background image provided
                                    backgroundImage: NetworkImage(
                                        'https://picsum.photos/250?image=9'), //add URL to netimage
                                    radius: 30.0, //radius of the circle avatar
                                  ),
                                ),
                                Positioned(
                                  top: 210,
                                  left: 80,
                                  right: 0,
                                  child: Text(
                                    "2 hour ago",
                                    style: TextStyle(
                                      color: Colors.blueAccent,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: 250,
                                  left: 0,
                                  right: 0,
                                  child: Container(
                                    width: 100,
                                    height: 150,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(0),
                                          topRight: Radius.circular(0),
                                          bottomLeft: Radius.circular(10),
                                          bottomRight: Radius.circular(10)),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.5),
                                          spreadRadius: 5,
                                          blurRadius: 7,
                                          offset: Offset(0,
                                              3), // changes position of shadow
                                        ),
                                      ],
                                    ),
                                    child: Card(
                                      child: Text(
                                        "Travel  goto river"
                                        "Travel  goto river"
                                        "Travel  goto river"
                                        "Travel  goto river",
                                        style: TextStyle(
                                          color: Colors.black,
                                        ),
                                        textAlign: TextAlign.justify,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
