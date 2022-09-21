import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class top_side extends StatelessWidget {
  const top_side({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: (MediaQuery.of(context).size.height) * 0.3,
          width: MediaQuery.of(context).size.width,
          // child: Image.asset(
          //   'assets/images/night_street.jpg',
          //   fit: BoxFit.cover,
          // ),
          child: ClipRRect(
              child: Image.asset(
                'assets/images/tree2.jpg',
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(45),
                bottomRight: Radius.circular(45),
              )),
        ),
        Container(
          height: (MediaQuery.of(context).size.height) * 0.3,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              color: Color(0XFF191910).withOpacity(0.5),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(45),
                bottomRight: Radius.circular(45),
              )),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'PLANTify',
                    style: TextStyle(
                        color: Colors.amber,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                        fontSize: 25),
                  ),
                  CircleAvatar(
                    radius: 35,
                    backgroundImage: AssetImage('assets/images/plant.jpg'),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 25,
                ),
                child: DefaultTextStyle(
                    style: TextStyle(color: Colors.red, fontSize: 15),
                    child: Row(
                      children: [
                        RichText(
                            text: TextSpan(children: [
                          TextSpan(
                              text: '<', style: TextStyle(color: Colors.amber)),
                          TextSpan(
                              text: 'Flutter',
                              style: TextStyle(color: Colors.amber)),
                          TextSpan(
                              text: '>', style: TextStyle(color: Colors.amber))
                        ])),
                        Text(" We "),
                        AnimatedTextKit(animatedTexts: [
                          TyperAnimatedText(
                              'are delivering Plants with Flutter',
                              speed: Duration(milliseconds: 30)),
                          TyperAnimatedText('are preserving Green Earth',
                              speed: Duration(milliseconds: 30)),
                          TyperAnimatedText(' do this because',
                              speed: Duration(milliseconds: 30)),
                          TyperAnimatedText('Grow when Plants grow...',
                              speed: Duration(milliseconds: 30)),
                        ]),
                      ],
                    )),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 30,
                  ),
                  child: TextFormField(
                      decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(horizontal: 15),
                    fillColor: Colors.white.withOpacity(0.5),
                    filled: true,
                    hintText: 'Search',
                    hintStyle: TextStyle(color: Colors.black),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25)),
                    suffixIcon: Padding(
                      padding: const EdgeInsets.only(right: 8, top: 3),
                      child: Icon(Icons.search),
                    ),
                  ))),
            ],
          ),
        ),
      ],
    );
  }
}
