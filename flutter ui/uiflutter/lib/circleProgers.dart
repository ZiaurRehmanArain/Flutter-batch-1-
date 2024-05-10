// import 'package:flutter/material.dart';

// class circle extends StatelessWidget {
//   const circle({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 100,
//       height: 100,
//       child:LinearProgressIndicator()
//     );
//   }
// }

import 'package:circle_progress_bar/circle_progress_bar.dart';
import 'package:flutter/material.dart';

class circle extends StatelessWidget {
  const circle({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: 100,
      height: 100,
      child: CircleProgressBar(
              foregroundColor: Colors.blue,
              backgroundColor: Colors.black12,
              value: 0.3,
              child: AnimatedCount(
                count: 0.3,
                unit: '%',
                duration: Duration(milliseconds: 500),
              ),
            ),
    );
  }
}