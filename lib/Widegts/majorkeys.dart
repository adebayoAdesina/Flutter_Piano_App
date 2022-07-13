// import 'package:audioplayers/audioplayers.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

import 'package:piano/Utils/colors.dart';

// class MajorKey extends StatefulWidget {
//   final int number;
//   MajorKey({Key? key, required this.number}) : super(key: key);

//   @override
//   _MajorKeyState createState() => _MajorKeyState();
// }

// class _MajorKeyState extends MajorKeysFunc {
//   @override
//   Widget build(BuildContext context) {
//     var size = MediaQuery.of(context).size;
//     return Container(
//       child: RawMaterialButton(
//         onPressed: () {
//           playTone(widget.number);
//         },
//         fillColor: whiteColor,
//         child: Container(
//           width: size.width,
//           height: size.height * 0.1,
//           decoration: const BoxDecoration(
//             color: whiteColor,
//             borderRadius: BorderRadius.only(
//               topLeft: Radius.circular(10),
//               bottomLeft: Radius.circular(10),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

class MajorKey extends StatelessWidget {
  final int number;
  final String text;
  const MajorKey({Key? key, required this.number, required this.text})
      : super(key: key);

  playTone(int number) async {
    AudioCache plays = AudioCache();
    await plays.play('24-piano-keys/key$number.mp3');
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(bottom: 8, right: 1),
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
          bottomRight: Radius.circular(10),
          bottomLeft: Radius.circular(10),
        ),
        child: RawMaterialButton(
          onPressed: () {
            playTone(number);
          },
          constraints: const BoxConstraints(minWidth: 60),
          fillColor: whiteColor,
          child: Container(
            // width: size.height * 0.01,
            height: size.height * 0.7,
            decoration: const BoxDecoration(
              color: whiteColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                bottomLeft: Radius.circular(10),
              ),
            ),
            child: const Text('.'),
          ),
        ),
      ),
    );
  }
}
