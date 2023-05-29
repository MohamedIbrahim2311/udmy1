import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:udmy1/layout/home_layout.dart';
import 'package:udmy1/modules/Login/Login_screen.dart';
import 'package:udmy1/modules/Login/dashbord_scren.dart';
import 'package:udmy1/modules/Login/sing_up.dart';
import 'package:udmy1/modules/Login/splash.dart';
import 'package:udmy1/modules/bmi_result/bmi_result.dart';
import 'package:udmy1/modules/massanger/massanger_screen.dart';
import 'package:udmy1/shared/bloc_odserver.dart';
import 'package:google_fonts/google_fonts.dart';


import 'modules/bmi/Bmi_screen.dart';
import 'modules/counter/Counter_Screen.dart';
import 'modules/home/home_screen.dart';
import 'modules/users/users_screen.dart';
void main() {
  Bloc.observer = MyBlocObserver();
  runApp(const MyApp());

  // Use cubits...

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner:false,

        home:DashbordScreen(),

    );
  }
}

