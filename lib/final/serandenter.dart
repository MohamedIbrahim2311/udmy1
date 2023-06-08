import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:udmy1/final/Login_screen.dart';
import 'package:udmy1/final/sing_up.dart';
import 'package:udmy1/shared/components/components.dart';

class SerandEnter extends StatefulWidget {
  @override
  _SerandEnterState createState() => _SerandEnterState();
}

class _SerandEnterState extends State<SerandEnter> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Stack(
          children: [
            Container(
              height: height,
              width: width,
              color: Colors.black,
              child:Image(image:AssetImage
                ('asstes/images/mo.jpg',),
                height: height,
                fit: BoxFit.cover, ),
            ),
            Center(
              child: Container(
                width: 500,
                height: 500,
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(20.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 50.0,
                  ),
                  Text(
                    'شركة الحمد',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 80.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 7.0,
                  ),
                  Text(
                    'للمقاولت والتطوير العقاري',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 40.0,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        defaultButton(
                          text: 'ادخال البيانات',
                          width: 200.0,
                          background: Colors.blue,
                          radius: 155.0,
                          function: () {
                            // Navigator.push(context, MaterialPageRoute(builder: (builder)=>LoginScreen()));
                          },
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        defaultButton(
                          text: 'البحث',
                          width: 200.0,
                          background: Colors.blue,
                          radius: 155.0,
                          function: () {
                            // Navigator.push(context, MaterialPageRoute(builder: (builder)=>SingUpPage()));
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
