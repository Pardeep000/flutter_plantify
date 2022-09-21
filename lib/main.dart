import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

import 'package:pkapp2/detail_of_plant.dart';
import 'package:pkapp2/featured_plants.dart';
import 'package:pkapp2/one_line.dart';
import 'package:pkapp2/recommended_plants.dart';
import 'package:pkapp2/top_side.dart';

void main() {
  runApp(MaterialApp(
    title: "Plant App",
    home: homeapp(),
    theme: ThemeData(
        primarySwatch: Colors.amber,
        scaffoldBackgroundColor: Color(0XFF9F8FD),
        visualDensity: VisualDensity.adaptivePlatformDensity),
    debugShowCheckedModeBanner: false,
  ));
}

class homeapp extends StatelessWidget {
  const homeapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(title: Center(child: Text('Plant! you grow'))),
      appBar: PreferredSize(
          child: nav_bar(),
          preferredSize: Size(MediaQuery.of(context).size.width, 80)),
      body: main_body(),
      bottomNavigationBar: bottom_bar(),
    );
  }
}

class bottom_bar extends StatelessWidget {
  const bottom_bar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [Colors.purple, Colors.amber]),
          boxShadow: [
            BoxShadow(
                offset: Offset(0, -10),
                blurRadius: 35,
                color: Colors.blue.withOpacity(0.5))
          ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
          IconButton(onPressed: () {}, icon: Icon(Icons.home)),
          IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
        ],
      ),
    );
  }
}

class nav_bar extends StatelessWidget {
  const nav_bar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [Colors.brown, Colors.white, Colors.green])),
      child: Row(
        children: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.menu),
          ),
          SizedBox(
            width: 70,
          ),
          Text(
            'Plant!!! You Grow',
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 20, color: Colors.red),
          )
        ],
      ),
    );
  }
}

class main_body extends StatelessWidget {
  const main_body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          top_side(),
          SizedBox(
            height: 12,
          ),
          one_line(
            label: 'Recommended',
          ),
          SizedBox(
            height: 0,
          ),
          show_of_recommended_plants(),
          SizedBox(
            height: 12,
          ),
          one_line(
            label: 'Featured-Plants',
          ),
          SizedBox(
            height: 10,
          ),
          show_of_featured_plants(),
        ],
      ),
    );
  }
}
