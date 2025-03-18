//Buoc 1: Import thu vien
import 'package:flutter/material.dart';

//Buoc 2: Ham main
void main() {
  runApp(MaterialApp(
    home: Scaffold(
      body: SafeArea(
        child: MultiScreenWidget()
      ),
    ),
    debugShowCheckedModeBanner: false,
  ));
}

//Buoc 3: Tao widget cho rieng minh
//LAYOUTBUILDER
// class MultiScreenWidget extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return LayoutBuilder(
//         builder: (BuildContext context, BoxConstraints constraints){
//           if(constraints.maxWidth >= 1440){
//             return Container(
//               color: Colors.green,
//               alignment: Alignment.center,
//               child: Text('Desktop Screen', style: TextStyle(
//                 fontWeight: FontWeight.w800,
//                 fontSize: 35,
//               ),),
//             );
//           } else if (constraints.maxWidth < 1440 && constraints.maxWidth > 480){
//             return Container(
//               color: Colors.red,
//               alignment: Alignment.center,
//               child: Text('Tablet Screen', style: TextStyle(
//                 fontWeight: FontWeight.w800,
//                 fontSize: 35,
//               ),),
//             );
//           } else {
//             return Container(
//               color: Colors.blue,
//               alignment: Alignment.center,
//               child: Text('Mobile Screen', style: TextStyle(
//                 fontWeight: FontWeight.w800,
//                 fontSize: 35,
//               ),),
//             );
//           }
//         },
//     );
//   }
// }

//MEDIAQUERY
class MultiScreenWidget extends StatelessWidget{

  bool isDesktop(BuildContext context) {
    return MediaQuery.of(context).size.width >= 600;
  }

  bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 600;


  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if(isDesktop(context))
          Container(
            color: Colors.blue,
            width: 200,
            child: const Center(
              child: Text(
                'Screen 1',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 28,
                ),
              ),
            ),
          ),

        if(isMobile(context))
          Container(
            color: Colors.red,
            child: const Center(
              child: Text(
                'Screen 2',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 28,
                ),
              ),
            ),
          ),
        Expanded(
          child: Container(
            color: Colors.green,
            child: const Center(
              child: Text(
                'Screen 3',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 28,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}