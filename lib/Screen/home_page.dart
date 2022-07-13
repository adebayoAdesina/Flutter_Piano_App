import 'package:flutter/material.dart';
import 'package:piano/Utils/colors.dart';

import '../Widegts/Majorkeys.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: blackColor,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: size.height * 0.1,
              color: blackColor,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              physics: const ScrollPhysics(),
              child: Container(
                child: Row(
                  children: const [
                    MajorKey(number: 1, text: 'D'),
                    MajorKey(number: 2, text: 'R'),
                    MajorKey(number: 3, text: 'M'),
                    MajorKey(number: 4, text: 'F'),
                    MajorKey(number: 5, text: 'S'),
                    MajorKey(number: 6, text: 'L'),
                    MajorKey(number: 7, text: 'T'),
                    MajorKey(number: 8, text: 'D'),
                    MajorKey(number: 9, text: 'R'),
                    MajorKey(number: 10, text: 'M'),
                    MajorKey(number: 11, text: 'F'),
                    MajorKey(number: 12, text: 'S'),
                    MajorKey(number: 13, text: 'L'),
                    MajorKey(number: 14, text: 'T'),
                    MajorKey(number: 15, text: 'D'),
                    MajorKey(number: 16, text: 'R'),
                    MajorKey(number: 17, text: 'M'),
                    MajorKey(number: 18, text: 'F'),
                    MajorKey(number: 19, text: 'S'),
                    MajorKey(number: 20, text: 'L'),
                    MajorKey(number: 21, text: 'T'),
                    MajorKey(number: 22, text: 'D'),
                    MajorKey(number: 23, text: 'R'),
                    MajorKey(number: 24, text: 'M'),
                  ],
                ),
              ),
            ),
            Container(
              height: size.height * 0.1,
              color: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }
}
