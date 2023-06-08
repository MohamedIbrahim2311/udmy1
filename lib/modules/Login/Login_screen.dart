// import 'package:flutter/material.dart';
// import 'package:udmy1/modules/Login/sing_up.dart';
//
// import '../../shared/components/components.dart';
// import 'package:a_colors/a_colors.dart';
// import 'package:flutter_svg/flutter_svg.dart';
//
// class LoginScreen extends StatefulWidget {
//   const LoginScreen({super.key});
//
//
//   @override
//       State<LoginScreen> createState() => _LoginScreenState();
// }
//
// class _LoginScreenState extends State<LoginScreen> {
//      // double height = MediaQuery.of(context).size.height;
//      // double width = MediaQuery.of(context).size.width;
//
//    final _formKey = GlobalKey<FormState>();
//
//    TextEditingController userName=TextEditingController();
//
//    TextEditingController userPassword =TextEditingController();
//    bool isPassword=true;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//
//     backgroundColor: Colors.black,
//       body:Padding(
//             padding:  EdgeInsets.only(top: 20.0),
//             child: SingleChildScrollView(
//
//               child:Column(
//
//               children:[
//                 SizedBox(height: 50.0,),
//
//                 Text(
//                   'Welcome Back!',
//                   style: TextStyle(
//                     color: Colors.white,
//                     fontSize: 40.0,
//                     fontWeight:FontWeight.bold,
//                   ),
//                 ),
//                 SizedBox(
//                   height: 20.0,
//
//                 ),
//                 Text(
//                   'Please Sing in to your account',
//                   style: TextStyle(
//                     color: Colors.white,
//                     fontSize: 20.0,
//                     fontWeight:FontWeight.normal,
//                   ),
//                 ),
//
//                 TextFild(
//                   lable: 'Username',
//                   keyBordType: TextInputType.emailAddress,
//                   controller: userName,
//                   prefixIcon: Icons.email,
//
//                     validate: ( String ?value){
//                       if(value!.isEmpty){
//                         return 'Email must be enter';
//                       }}),
//
//
//                 SizedBox(
//                   height: 20.0,
//
//                 ),
//                 TextFild(
//                   lable: 'Userpssword',
//                     keyBordType: TextInputType.visiblePassword,
//                   controller: userPassword,
//                   prefixIcon: Icons.lock,
//
//                 validate: ( String ?value){
//                   if(value!.isEmpty){
//                   return 'Password';
//                   }}),
//
//                 SizedBox(
//                   height: 20.0,
//
//                 ),
//                 Align(
//                   alignment: Alignment.center,
//                   child: Padding(
//                     padding:  EdgeInsets.only(right: 20.0),
//                     child: TextButton(
//                       onPressed: (){},
//                       child: Text('Forget Pssword?',style:TextStyle(
//                       color: Colors.blue,
//                       fontSize: 20.0,
//                       fontWeight:FontWeight.normal ,),),
//                 ),
//                   ),),
//                 SizedBox(
//                   height: 20.0,
//
//                 ),
//
//                 defaultButton(
//                   text: 'LOGIN',
//                   width: 300.0,
//                   background: Colors.red,
//                   radius: 155.0  ,
//                   function: (){
//                     if(_formKey.currentState!.validate()) {
//                       print(userName.text);
//                       print(userPassword.text);
//                     }
//
//                   },
//                 ),
//
//                 SizedBox(
//                   height: 40.0,
//
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.center  ,
//                   children: [
//
//                     Text(
//                       'Dont have account ?',
//                       style: TextStyle(
//                         color: Colors.cyan,
//                         fontSize: 15.0,
//                         fontWeight:FontWeight.normal,
//                       ),
//                     ),
//                     TextButton(onPressed:(){
//                       Navigator.push(context, MaterialPageRoute(builder: (builder)=>SingUpPage()));
//                     },
//                       child:
//                       Text(
//                         'Sing UP',
//                         style: TextStyle(
//                           fontSize: 20.0,
//                         ),
//                       ),),
//
//                   ],
//                 ),
//               ],
//             ),
//           ),
//
//
//
//
//     ),
//     );
//   }
// }
