// import 'package:flutter/widgets.dart';
// import 'package:flutter/material.dart';
// import 'package:udmy1/modules/Login/Login_screen.dart';
// import 'package:udmy1/shared/components/components.dart';
//
// class HomePage extends StatefulWidget {
//   @override
//   _HomePageState createState() => _HomePageState();
// }
//
// class _HomePageState extends State<HomePage> {
//   @override
//   Widget build(BuildContext context) {
//      final height=MediaQuery.of(context).size.height;
//      final width=MediaQuery.of(context).size.width;
//     return Scaffold(
//       backgroundColor:Colors.white  ,
//       body: Stack(
//         children: [
//             Container(
//               height: height,
//               width: width,
//               color: Colors.black,
//               child:Image(image:AssetImage
//                 ('asstes/images/mo.jpg',),
//              height: height,
//                   fit: BoxFit.cover, ),
//             ),
//           Align(
//             alignment: Alignment.bottomRight,
//             child: Container(
//               height: height/3,
//                width: double.infinity,
//               decoration: BoxDecoration(
//                 gradient: LinearGradient(
//                   colors:[Colors.grey,Colors.white10],
//                   begin: Alignment.bottomCenter,
//                   end: Alignment.centerLeft,
//
//                 ),
//               ),
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.end ,
//                 children: [
//                   RichText(text: TextSpan(
//                     children: [
//                       TextSpan(
//                         text: 'abda',
//
//                           style:TextStyle(
//                         fontWeight: FontWeight.bold)),
//                       TextSpan(
//                           text: '.',
//
//                           style:TextStyle(
//
//
//                               fontWeight: FontWeight.bold)),
//                     ],
//                   ),
//                   ),
//                   SizedBox(height: 20.0 ,),
//
//                   Text(
//                     'welcome Our application is designed to empower you, offering a wide range of tools and resources to assist you in achieving your goals. From organizing your tasks to enhancing your productivity, were here to support you every step of the way',
//                     textAlign: TextAlign.center,
//                       style:TextStyle(
//                         color: Colors.white,
//                           fontWeight: FontWeight.normal)),
//                   SizedBox(height: 20.0 ,),
//                   defaultButton(
//                     text: 'Get Started',
//                     width:500.0,
//                     background: Colors.blue,
//                     radius: 155.0  ,
//                     function: (){
//                       Navigator.push(context, MaterialPageRoute(builder: (builder)=>LoginScreen()));
//
//
//                     },
//                   ),
//
//                 ],
//               ),
//             ),
//           ),
//         ],),
//     );
//
//
//   }
// }