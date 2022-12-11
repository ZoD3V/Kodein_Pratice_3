// ignore_for_file: unnecessary_const, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Card",
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: Center(
              child: Container(
        width: 350,
        height: 165,
        decoration: BoxDecoration(
            boxShadow: const [
              BoxShadow(color: Colors.grey, spreadRadius: 2, blurRadius: 10)
            ],
            borderRadius: const BorderRadius.all(
              Radius.circular(25),
            ),
            color: Color.fromARGB(255, 20, 141, 239)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              margin: EdgeInsets.only(top: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                      margin: EdgeInsets.only(left: 20),
                      height: 57,
                      width: 57,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage('../assets/PPNFT.png')))),
                  SizedBox(width: 13),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Muhammad AdhiNugroho",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 17),
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          Text(
                            "Fullstack Developer",
                            style:
                                TextStyle(color: Colors.white.withOpacity(0.5)),
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  TextNum(
                    desc: 'Collect',
                    title: "846",
                  ),
                  TextNum(
                    desc: 'Attention',
                    title: "56",
                  ),
                  TextNum(
                    desc: 'Track',
                    title: "267",
                  ),
                  TextNum(
                    desc: 'Coupons',
                    title: "26",
                  ),
                ],
              ),
            )
          ],
        ),
      ))),
    );
  }
}

class TextNum extends StatelessWidget {
  final String title;
  final String desc;
  const TextNum({
    Key? key,
    required this.title,
    required this.desc,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(
          title,
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          desc,
          style: TextStyle(color: Colors.white.withOpacity(0.5), fontSize: 12),
        ),
      ],
    );
  }
}
