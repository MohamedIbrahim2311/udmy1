import 'dart:math';

import 'package:flutter/material.dart';

import 'package:udmy1/modules/bmi_result/bmi_result.dart';

class BmiScreen extends StatefulWidget
{


  @override
  State<BmiScreen> createState() => _BmiScreenState();
}

class _BmiScreenState extends State<BmiScreen> {
   bool isMale = true;
  double height=120.0;
  int weight=40;
  int age=20;





  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
      centerTitle: true,
        backgroundColor: Colors.black,
        title:Text(
          'BMI Calculat',

        ),

      ),
      body: Column(
        
        children: [
          Expanded(
              child:
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(

                    onTap: (){

                      setState((
                          ) {
                        isMale=true;

                      });
                    },


                    child: Container(
                    child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Container(


                    decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0, ),
                      color:isMale ? Colors.blue  : Colors.grey,

                    ),
                    child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    Image(image:AssetImage
                    ('asstes/images/male.png',),

                    width: 100.0,

                    ),
                    SizedBox(height: 10,
                    ),
                    Text(
                    'MAlE',
                    style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,

    ),

    ),
    ],
    ),
    ),
    ),
    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(

                    onTap: (){

                      setState(() {
                        isMale=false;

                      });
                    },
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Container(

                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0, ),
                            color: isMale ? Colors.grey: Colors.blue,

                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image(image:AssetImage
                                ('asstes/images/female.png',),

                                width: 100.0,

                              ),
                              SizedBox(height: 10,
                              ),
                              Text(
                                'Femail',
                                style: TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,

                                ),

                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),


              ],
            ),
          ),


          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0,),
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [


                    Text(
                      'HIGHT',
                      style: TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,

                      ),

                    ),
                    SizedBox(
                      height: 7,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,

                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '${height.round()}',
                          style: TextStyle(
                            fontSize: 40.0,
                            fontWeight: FontWeight.w900,

                          ),

                        ),
                        SizedBox(
                          width: 5.0 ,
                        ),
                        Text (
                          'CM',
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,

                          ),

                        ),
                      ],
                    ),
                  Slider(
                      value:height ,
                      max: 220.0,
                      min: 80.0,
                      onChanged: (value){
                        setState(() {
                          height=value;
                        });

                      },
                  ),
                  ],
                ),

                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0, ),
                  color: Colors.grey,

                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                 Expanded(
                   child: Container(
                     child: Column(
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: [
                         Text (
                          'WEIGHT',
                style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,

                ),

              ),
                         Text(
                           '${weight}',
                           style: TextStyle(
                             fontSize: 40.0,
                             fontWeight: FontWeight.w900,

                           ),

                         ),
                         Row(
                           mainAxisAlignment: MainAxisAlignment.center,
                           children: [
                             FloatingActionButton(onPressed: (){
                               setState(() {
                                 weight--;
                               });
                             },
                               heroTag: 'weight--',
                               mini: true,
                               child: Icon(
                                 Icons.remove,),
                             ),
                             FloatingActionButton(onPressed: (){
                               setState(() {
                                 weight++;
                               });
                             },
                               heroTag: 'weight++',
                               mini: true,
                               child: Icon(
                                 Icons.add,),
                             ),
                           ],
                         ),

                       ],
                     ),
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(10.0, ),
                       color: Colors.grey,
                     ),


                     ),
                 ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Expanded(
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text (
                            'AGE',
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,

                            ),

                          ),
                          Text(
                            '${age}',
                            style: TextStyle(
                              fontSize: 40.0,
                              fontWeight: FontWeight.w900,

                            ),

                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(onPressed: (){
                                setState(() {
                                  age--;
                                });
                              },
                                heroTag: 'age--',
                                mini: true,
                                child: Icon(
                                  Icons.remove,),
                              ),
                              FloatingActionButton(onPressed: (){
                                setState(() {
                                  age++;
                                });
                              },
                                heroTag: 'age++',
                                mini: true,
                                child: Icon(
                                  Icons.add,),
                              ),
                            ],
                          ),

                        ],
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0, ),
                        color: Colors.grey,
                      ),


                    ),
                  ),




                ],
              ),
            ),
          ),


         Container(
           width:double.infinity ,
           color: Colors.red,
           height: 50,
           child: MaterialButton(onPressed: (){
            double result=weight  / pow(height/ 100,2);
             print(result.round());
             Navigator.push(context, MaterialPageRoute(
               builder:(context)=>BmiResultScreen(
                 result: result.roundToDouble(),
                 age: age,
                 isMale: isMale,
               )

               ,),);

           },
             child:
           Text(
    'CALCULAT',
    style: TextStyle(
    fontSize: 15.0,
    color: Colors.white,

    ),

    ),),
         ),

        ],



      ),





    );
  }
}

