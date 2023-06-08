import 'package:flutter/material.dart';
import 'package:udmy1/final/dashbord_scren.dart';
import 'package:udmy1/final/reset_ps.dart';
import 'package:udmy1/final/sing_up.dart';
import 'package:udmy1/modules/Login/sing_up.dart';

import '../../shared/components/components.dart';
import 'package:a_colors/a_colors.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});


  @override
      State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

   final _formKey = GlobalKey<FormState>();

   TextEditingController userName=TextEditingController();

   TextEditingController userPassword =TextEditingController();
   bool isPassword=false;
   @override
   void initState() {
     super.initState();
     userName = TextEditingController();
     userPassword = TextEditingController();
   }

   @override
   void dispose() {
     userName.dispose();
     userPassword.dispose();
     super.dispose();
   }
  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.of(context).size.height;
    final width=MediaQuery.of(context).size.width;
    return Form(
      key: _formKey,
      child: Scaffold(

        body:Center(
          child:Stack(
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
              width: 1200,
              height: 800,
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.5),
                borderRadius: BorderRadius.circular(20.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    spreadRadius: 6,
                    blurRadius: 5,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
            ),
          ),
             Padding(
                  padding:  EdgeInsets.only(top: 20.0),


                    child:Column(

                    children:[
                      SizedBox(height: 40.0,),


                      Text(
                        'شركة الحمد',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize:60.0,
                          fontWeight:FontWeight.bold,
                        ),
                      ),

                      Text(
                        'للمقاولت والتطوير العقاري',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 40.0,
                          fontWeight:FontWeight.normal,
                        ),
                      ),
                      SizedBox(height: 20.0,),
                      Text(
                        'تسجيل الدخول',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 40.0,
                          fontWeight:FontWeight.normal,
                        ),
                      ),
                    Container(
                        height: 70.0,
                        width: 1000.0,
                        padding: EdgeInsets.symmetric(horizontal: 30.0),
                        margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
                        decoration: BoxDecoration(
                        color: Colors.blueGrey,
                        borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: TextFormField(
                        decoration: InputDecoration(
                         labelText: 'اسم المستخدم',
                        prefixIcon: Icon(Icons.email),
                        ),

                          controller: userEmail,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your password';
                            }
                            return null;
                          },

                          ),
                   ),

                      SizedBox(
                        height: 20.0,

                      ),
                      Container(
                        height: 70.0,
                        width: 1000.0,
                        padding: EdgeInsets.symmetric(horizontal: 30.0),
                        margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
                        decoration: BoxDecoration(
                          color: Colors.blueGrey,
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: TextFormField(
                          decoration: InputDecoration(
                            labelText: 'كلمة المرور',
                            prefixIcon: Icon(Icons.lock),
                            suffixIcon: IconButton(
                              icon: Icon(Icons.visibility),
                              onPressed: () {
                                setState(() {
                                   isPassword = !isPassword;
                                });
                              },
                            ),
                          ),
                          obscureText: !isPassword,
                          controller: userPassword,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your password';
                            }
                            return null;
                          },
                        ),
                      ),



                      SizedBox(
                        height: 20.0,

                      ),


                      defaultButton(
                        text: 'تسجيل الدخول',
                        width: 1000.0,
                        background: Colors.blueAccent,
                        radius: 155.0  ,
                        function: (){
                          if(_formKey.currentState!.validate()) {
                            print(userName.text);
                            print(userPassword.text);
                          }

                        },
                      ),
                      SizedBox(
                        height: 20.0,

                      ),


                      SizedBox(
                        height: 40.0,

                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center  ,
                        children: [


                          TextButton(onPressed:(){


                            Navigator.push(context, MaterialPageRoute(builder: (builder)=>SingUpPage()));
                          },
                            child:
                            Text(
                              'سجل حساب جديد',
                              style: TextStyle(
                                fontSize: 30.0,
                                color: Colors.black
                              ),
                            ),
                          ),
                          SizedBox(width: 80.0,),
                          Align(
                            alignment: Alignment.center,
                            child: Padding(
                              padding:  EdgeInsets.only(right: 20.0),
                              child: TextButton(
                                onPressed: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (builder)=>ResetScreen()));
                                },
                                child: Text('نسيت كلمة السر?',style:TextStyle(
                                  color: Colors.black,
                                  fontSize: 30.0,
                                  fontWeight:FontWeight.normal ,),),
                              ),
                            ),),

                        ],
                      ),
                    ],
                  ),
                ),
          ],
          ),
        ),




      ),
      );

  }
}
