import 'package:flutter/material.dart';

class show_of_featured_plants extends StatelessWidget {
  const show_of_featured_plants({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          featured_plants(
              image: 'assets/images/fp1.jpg',
              label: 'Schotia Brachypetala',
              desc: 'Drunken Parrot Tree',
              price: '₨3,000.00'),
          featured_plants(
              image: 'assets/images/fp2.jpg',
              label: 'Eucalyptus Deglupta',
              desc: 'Rainbow Tree',
              price: '₨8,000.00'),
          featured_plants(
              image: 'assets/images/fp3.jpg',
              label: 'Cassia Leptophylla',
              desc: 'Gold Medallion Tree',
              price: '₨6,000.00'),
          featured_plants(
              image: 'assets/images/fp4.jpg',
              label: 'Sansevieria cylindrica',
              desc: 'Cylindrical Snake Plant',
              price: '₨1,899.00'),
          featured_plants(
              image: 'assets/images/fp5.jpg',
              label: 'Sansevieria trifasciata',
              desc: 'Snake Plant',
              price: '₨1,499.00'),
        ],
      ),
    );
  }
}

class featured_plants extends StatelessWidget {
  const featured_plants(
      {Key? key,
      required this.label,
      required this.desc,
      required this.image,
      required this.price})
      : super(key: key);
  final String image, label, desc, price;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10,vertical:10),
      child: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.70,
            height: MediaQuery.of(context).size.height * 0.3,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                image: DecorationImage(
                    image: AssetImage(image), fit: BoxFit.cover)),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.60,
            height: 80,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(25),
                  bottomRight: Radius.circular(25)),
              color: Color.fromARGB(255, 61, 53, 53).withOpacity(0.5),
            ),
            child: Column(
              children: [
                Text(
                  label,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.white),
                ),
                Text(
                  desc,
                  style: TextStyle(fontSize: 18, color: Colors.red),
                ),
                Text(
                  price,
                  style: TextStyle(fontSize: 18, color: Colors.amber),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
