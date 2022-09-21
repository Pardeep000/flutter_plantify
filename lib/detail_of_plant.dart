import 'dart:html';

import 'package:flutter/material.dart';

class detail_of_plant extends StatelessWidget {
  const detail_of_plant({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: body_of_detail_page(),
    );
  }
}

class body_of_detail_page extends StatelessWidget {
  const body_of_detail_page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      color: Color.fromARGB(255, 224, 183, 59),
      child: SingleChildScrollView(
        child: Column(children: [
          top_part_of_detail_page(),
          SizedBox(
            height: 15,
          ),
          second_part(),
          SizedBox(
            height: 15,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            width: MediaQuery.of(context).size.width * 0.80,
            height: MediaQuery.of(context).size.height * 0.5,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color.fromARGB(255, 139, 183, 219)),
            child: Text(
              'The "Red Valentine" Chinese evergreen (Aglaonema x "Red Valentine") is one such plant. The plant offers showy, variegated foliage with large splashes of rosy pink on a dark-green background. The leaf petiole, midrib and margin are red and pink that contrast nicely with the dark-green leaf.',
              style: TextStyle(fontSize: 20),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          ElevatedButton.icon(
              onPressed: () {},
              icon: Icon(Icons.shopping_cart_outlined),
              label: Text('Add to Cart'),
              style: ElevatedButton.styleFrom(
                minimumSize: Size(MediaQuery.of(context).size.width * 0.80, 40),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25)),
                primary: Colors.blue,
                textStyle: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              )),
          SizedBox(
            height: 15,
          ),
        ]),
      ),
    );
  }
}

class top_part_of_detail_page extends StatelessWidget {
  const top_part_of_detail_page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              onPressed: () {
                //Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back),
            ),
            SizedBox(
              height: 100,
            ),
            column_icon(
              image: 'assets/images/s1.png',
            ),
            column_icon(
              image: 'assets/images/s2.png',
            ),
            column_icon(
              image: 'assets/images/s3.png',
            ),
          ],
        )),
        Container(
          alignment: Alignment.centerLeft,
          width: MediaQuery.of(context).size.width * 0.75,
          height: MediaQuery.of(context).size.height * 0.7,
          decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                    offset: Offset(0, 10), blurRadius: 60, color: Colors.blue)
              ],
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25),
                  bottomLeft: Radius.circular(25)),
              image: DecorationImage(
                  image: AssetImage('assets/images/plant1.jpg'),
                  fit: BoxFit.cover)),
        )
      ],
    );
  }
}

class column_icon extends StatelessWidget {
  const column_icon({Key? key, required this.image}) : super(key: key);
  final String image;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30),
      child: Container(
        height: 55,
        width: 55,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                  offset: Offset(0, 10), blurRadius: 45, color: Colors.red),
              BoxShadow(
                  offset: Offset(0, -10), blurRadius: 45, color: Colors.black)
            ]),
        child: CircleAvatar(
          radius: 250,
          backgroundImage: AssetImage(image),
        ),
      ),
    );
  }
}

class second_part extends StatelessWidget {
  const second_part({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          RichText(
              text: TextSpan(children: [
            TextSpan(
                text: 'AGLAONEMA\n',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20)),
            TextSpan(
                text: 'Valentine Chinese',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20))
          ])),
          SizedBox(
            width: 25,
          ),
          Text('Rs:2,450',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20))
        ],
      ),
    );
  }
}
