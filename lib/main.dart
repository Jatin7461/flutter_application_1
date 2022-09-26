// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.
// import 'dart:html';

import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
// ignore_for_file: prefer_const_constructors

void main() {
  runApp(const MyApp());
}

Widget titleSection() {
  return Container(
    padding: const EdgeInsets.all(32),
    child: Row(
      children: [
        Expanded(
          /*1*/
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /*2*/
              Container(
                padding: const EdgeInsets.only(bottom: 8),
                child: const Text(
                  'Oeschinen Lake Campground',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Text(
                'Kandersteg, Switzerland',
                style: TextStyle(
                  color: Colors.grey[500],
                ),
              ),
            ],
          ),
        ),
        /*3*/
        Icon(
          Icons.star,
          color: Colors.red[500],
        ),
        const Text('41'),
      ],
    ),
  );
}

Widget topContainer() {
  return Container(
      // color: Color.fromRGBO(4, 19, 52, 1),

      margin: const EdgeInsets.all(5),
      padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(4)),
          border: Border.all(color: Color.fromRGBO(200, 200, 200, 1)),
          gradient: LinearGradient(colors: [
            Color.fromRGBO(4, 19, 52, 1),
            Color.fromRGBO(19, 37, 77, 1)
          ])),
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            width: 30,
            alignment: Alignment.centerLeft,
            child: Icon(
              Icons.circle,
              color: Colors.yellow,
            ),
          ),
          Container(
            width: 270,
            // alignment: Alignment(0, 0),
            // color: Color.fromRGBO(0, 0, 100, 1),
            child: Text(
              'Play and earn coins',
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
          ),
          Container(
            child: Icon(
              Icons.double_arrow,
              color: Colors.white,
            ),
          )
          // Icon(Icons.arrow_right)
        ],
      ));
}

Widget slideImages() {
  return Container(
    margin: EdgeInsets.all(5),
    // padding: EdgeInsets.fromLTRB(0, 75, 0, 75),
    height: 200,
    color: Colors.blue,
    child: Row(
      children: const [
        Text(
          'yes',
          textAlign: TextAlign.center,
        ),
      ],
    ),
  );
}

Widget ImageStack() {
  return Stack(
    children: [
      Image(image: AssetImage('assets/images/spotify.png')),
      Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                // margin: EdgeInsets.fromLTRB(4, 4, 0, 0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(4),
                        bottomRight: Radius.circular(4)),
                    color: Colors.blue),
                padding: EdgeInsets.fromLTRB(6, 2, 0, 0),
                height: 55,
                alignment: Alignment.topRight,
                width: 40,
                child: Text('Upto 30% Off'),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, 0, 4, 0),
                height: 30,
                color: Colors.blue,
                width: 30,
                child: Image(image: AssetImage('assets/images/spotify.png')),
              ),
            ],
          ),
          Row()
        ],
      )
    ],
  );
}

Widget HorizontalListImages() {
  return Container(
      margin: EdgeInsets.all(1),
      width: 200.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(4),
          bottomRight: Radius.circular(4),
          bottomLeft: Radius.circular(4),
          topRight: Radius.circular(4),
        ),
        color: Colors.red,
      ),
      child: ImageStack());
}

Widget HorizontalList() {
  return new Container(
      margin: EdgeInsets.all(5),
      height: 200.0,
      // ignore: unnecessary_new
      child: new ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          HorizontalListImages(),
          Container(
            margin: EdgeInsets.all(1),
            width: 200.0,
            color: Colors.orange,
          ),
          Container(
            margin: EdgeInsets.all(1),
            width: 200.0,
            color: Colors.pink,
          ),
          Container(
            margin: EdgeInsets.all(1),
            width: 200.0,
            color: Colors.yellow,
          ),
        ],
      ));
}

Widget allSubsriptions() {
  return Container(
    color: Colors.red,
    margin: EdgeInsets.all(5),
    child: Row(children: [
      Container(
        padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
        width: 250,
        // color: Colors.black,
        child: Text(
          'All Subscriptions',
          style: TextStyle(
            fontSize: 20,
          ),
        ),
      ),
      ElevatedButton(
        onPressed: () {},
        child: Text('See more'),
      ),
    ]),
  );
}

Widget publicGroups(String data) {
  return Container(
    // color: Colors.red,
    margin: EdgeInsets.all(5),
    child: Row(children: [
      Container(
        padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
        width: 250,
        // color: Colors.black,
        child: Text(
          data,
          style:
              TextStyle(fontSize: 20, color: Color.fromRGBO(140, 140, 140, 1)),
        ),
      ),
      ElevatedButton(
        onPressed: () {},
        child: Text(
          'See more',
          style: TextStyle(color: Colors.yellow),
        ),
        style: ButtonStyle(
            backgroundColor:
                MaterialStateProperty.all(Color.fromRGBO(70, 70, 70, 1))),
      ),
    ]),
  );
}

Widget publicGroupList() {
  return Column(
    children: [
      publicGroups1(),
      publicGroups1(),
      publicGroups1(),
      publicGroups1(),
      publicGroups1(),
      publicGroups1(),
    ],
  );
}

Widget publicGroups1() {
  return Container(
    decoration: BoxDecoration(
      borderRadius: const BorderRadius.all(Radius.circular(4.0)),
      boxShadow: const <BoxShadow>[
        BoxShadow(
          color: Color.fromRGBO(60, 60, 60, 1),
        ),
      ],
    ),
    margin: EdgeInsets.all(5),
    height: 90,
    child: Row(
      // padding: EdgeInsets.fromLTRB(0, 2, 0, 2),
      // crossAxisAlignment: CrossAxisAlignment.start,
      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [StackImage(), MiddleColumn(), joinGroup()],
    ),
  );
}

Widget joinButton() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Container(
        // alignment: Alignment(0, -2),
        alignment: Alignment(0.5, -0.2),
        height: 20,
        // color: Colors.blue,
        child: Text(
          "Rs 80/User/Month",
          style: TextStyle(fontSize: 10, color: Colors.white),
        ),
      ),
      SizedBox(
          height: 35, //height of button
          width: 110, //width of button
          child: ElevatedButton(
            onPressed: () {}, child: Text("Join"), //parameters of Button class
          )),
    ],
  );
}

Widget joinGroup() {
  return Expanded(
    // color: Colors.red,
    child: Container(
      // color: Colors.red,
      child: joinButton(),
    ),
  );
}

Widget PlanInformation() {
  return Column(
    // crossAxisAlignment: CrossAxisAlignment.center,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Container(
        alignment: Alignment(-0.6, 0.7),
        height: 35,
        // color: Colors.blue,
        child: Text(
          'Spotify Duo Plan - 1 Month',
          style: TextStyle(
              fontSize: 11, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      Container(
        height: 20,
        alignment: Alignment(-0.95, 0),
        child: Text(
          'By Tarun',
          style: TextStyle(
              fontSize: 11, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      Container(
          height: 35,
          // color: Colors.green,
          // margin: EdgeInsets.only(bottom: 10),
          alignment: Alignment(-.9, -0.5),
          child: Text(
            '1/2 friends sharing',
            style: TextStyle(
                fontSize: 11,
                fontWeight: FontWeight.bold,
                color: Colors.lightBlue),
          ))
    ],
  );
}

Widget MiddleColumn() {
  return Container(
    // color: Colors.red,
    width: 140,
    height: 90,
    child: Column(
      children: [PlanInformation()],
    ),
  );
}

Widget StackImage() {
  return Stack(
    children: [
      Image(
        image: AssetImage('assets/images/spotify.png'),
        // width: 50,
      ),
      Container(
        decoration: BoxDecoration(
            boxShadow: const <BoxShadow>[
              BoxShadow(
                color: Color.fromRGBO(0, 150, 100, 1),
              ),
            ],
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(4),
              bottomRight: Radius.circular(4),
            )),
        // color: Colors.green,
        padding: EdgeInsets.all(4),
        // color: Colors.green,

        child: Text(
          '2+ groups',
          style: TextStyle(color: Colors.white),
        ),
      )
    ],
  );
}

Widget AllPublicGroups() {
  return Container(
    alignment: Alignment.center,
    // color: Colors.red,
    margin: EdgeInsets.all(5),
    padding: EdgeInsets.all(15),
    decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(4.0)),
        border: Border.all(color: Colors.white)),

    child: Text(
      'Show All Public Groups',
      style: TextStyle(fontSize: 15, color: Color.fromRGBO(200, 200, 200, 1)),
    ),
  );
}

Widget Suggestion() {
  return Container(
    height: 150,
    margin: EdgeInsets.all(5),
    // color: Colors.red,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(4)),
        color: Color.fromRGBO(60, 60, 60, 1)),
    child: Column(
      children: [
        Container(
          height: 50,
          alignment: Alignment.centerLeft,
          margin: EdgeInsets.fromLTRB(15, 0, 0, 0),
          child: Text(
            'What do want us to list next?',
            style: TextStyle(fontSize: 17.5, color: Colors.white),
          ),
        ),
        Container(
          height: 30,
          alignment: Alignment.topLeft,
          margin: EdgeInsets.fromLTRB(15, 0, 0, 0),
          child: Text(
            'Suggest us a subscription',
            style: TextStyle(color: Colors.white),
          ),
        ),
        Container(
          margin: EdgeInsets.fromLTRB(15, 0, 5, 5),
          height: 50,
          // color: Colors.grey,

          // decoration: BoxDecoration(
          //     color: Colors.grey,
          //     borderRadius: BorderRadius.all(Radius.circular(4))),
          child: Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 275,
                  // color: Colors.blue,
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(90, 90, 90, 1),
                      borderRadius: BorderRadius.all(Radius.circular(4))),
                  child: TextField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                        hintText: 'Give your suggestion',
                        hintStyle:
                            TextStyle(color: Color.fromRGBO(200, 200, 200, 1))
                        // fillColor: Colors.white
                        ),
                  ),
                ),
                Expanded(
                  // alignment: Alignment(1, 0),
                  // color: Colors.green,
                  child: Icon(
                    Icons.send,
                    color: Colors.white,
                  ),
                )
              ]),
        ),
      ],
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final wordPair = WordPair.random();
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        backgroundColor: Color.fromRGBO(44, 44, 44, 1),
        appBar: AppBar(
          // title: const Text('Welcome to Flutter'),
          backgroundColor: Color.fromRGBO(44, 44, 44, 1),

          title: Text("hello"),
        ),
        body: ListView(
          children: [
            topContainer(),
            slideImages(),
            publicGroups('All Subsrciptions'),
            HorizontalList(),
            publicGroups('Public Groups'),
            publicGroupList(),
            AllPublicGroups(),
            Suggestion()
          ],
        ),
      ),
    );
  }
}
