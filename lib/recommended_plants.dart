import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:pkapp2/detail_of_plant.dart';

class show_of_recommended_plants extends StatelessWidget {
  const show_of_recommended_plants({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          plant_image(
            image: 'assets/images/plant1.jpg',
            label: 'aglaonema',
            desc: 'Valentine Chinese',
            off_percent: 50,
            off_price: '4,900',
            current_price: '2,450',
          ),
          plant_image(
            image: 'assets/images/plant2.jpg',
            label: 'Peace Lily',
            desc: 'Air Purifiers Russia',
            off_percent: 50,
            off_price: '12,400',
            current_price: '5,800',
          ),
          plant_image(
            image: 'assets/images/plant3.jpg',
            label: 'Parodia Leninghausii',
            desc: 'Yellow Tower Cactus',
            off_percent: 13,
            off_price: '3,750',
            current_price: '3,262.5',
          ),
          plant_image(
            image: 'assets/images/plant4.jpg',
            label: 'Thai Pomegranate',
            desc: 'Anar Fruits',
            off_percent: 14,
            off_price: '1,800',
            current_price: '1,550',
          ),
        ],
      ),
    );
  }
}

class plant_image extends StatelessWidget {
  const plant_image({
    Key? key,
    required this.image,
    required this.label,
    required this.desc,
    required this.off_price,
    required this.current_price,
    required this.off_percent,
  }) : super(key: key);

  final String image, label, desc, current_price, off_price;
  final int off_percent;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      height: MediaQuery.of(context).size.height * 0.5,
      width: MediaQuery.of(context).size.width * 0.55,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(
            children: [
              Image.asset(image),
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.red,
                  ),
                  shape: BoxShape.circle,
                  color: Colors.red,
                ),
                child: Center(
                    child: Text(
                  '$off_percent' + '%\nOFF',
                  style: TextStyle(fontWeight: FontWeight.bold),
                )),
              ),
            ],
          ),
          ////
          Container(
            width: MediaQuery.of(context).size.width * 0.55,
            decoration: BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(25),
                    bottomRight: Radius.circular(25)),
                boxShadow: [
                  BoxShadow(offset: Offset(0, 10), blurRadius: 50),
                ]),
            child: Center(
              child: Column(
                children: [
                  Text('$label'.toUpperCase(),
                      style: TextStyle(
                          color: Color.fromARGB(255, 70, 68, 68),
                          fontWeight: FontWeight.bold)),
                  Text('$desc', style: TextStyle(color: Colors.red)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Rs' + '$off_price' + '.00',
                          style: TextStyle(
                              decoration: TextDecoration.lineThrough,
                              color: Colors.grey)),
                      Text(' Rs' + '$current_price' + '.00',
                          style: TextStyle(color: Colors.black)),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
