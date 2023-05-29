import 'package:flutter/material.dart';
import 'package:udmy1/shared/components/components.dart';

class DashbordScreen extends StatefulWidget {
  const DashbordScreen({Key? key}) : super(key: key);

  @override
  State<DashbordScreen> createState() => _DashbordScreenState();
}
TextEditingController userName=TextEditingController();

TextEditingController userPassword =TextEditingController();
TextEditingController userEmail=TextEditingController();

TextEditingController userPhone =TextEditingController();
TextEditingController useraddress =TextEditingController();

class _DashbordScreenState extends State<DashbordScreen> {

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return  Scaffold(
      body: Row(
        children: [
          Expanded(
            flex: 3,
            child: LayoutBuilder(
              builder: (context, constraints) => Container(
                color:Colors.cyan,

                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(

                    children: [
                      SizedBox(height: 30.0,),
                      Text(
                        'الرجاء ادخال الاسم رباعي ',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontWeight:FontWeight.normal,
                        ),
                      ),
                      TextFild(
                          keyBordType: TextInputType.name,
                          controller: userName,
                          prefixIcon: Icons.account_circle_outlined,
                          lable: 'Username',

                          validate: ( String ?value){
                            if(value!.isEmpty){
                              return ' must be enter Full name';
                            }}),
                      SizedBox(height: 20.0,),
                      Text(
                        'رقم الهاتف',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontWeight:FontWeight.normal,
                        ),
                      ),
                      TextFild(
                          keyBordType: TextInputType.phone,
                          controller: userPhone,
                          prefixIcon: Icons.phone,
                          lable: 'Username',
                          validate: ( String ?value){
                            if(value!.isEmpty){
                              return 'must be enter your phone';
                            }}),
                      SizedBox(height: 20.0,),
                      Text(
                        ' العنوان ',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontWeight:FontWeight.normal,
                        ),
                      ),
                      TextFild(
                          keyBordType: TextInputType.streetAddress,
                          controller: useraddress,
                          prefixIcon: Icons.account_balance_rounded,
                          lable: 'Username',
                          validate: ( String ?value){
                            if(value!.isEmpty){
                              return 'must be enter your phone';
                            }}),



                    ],
                  ),
                ),
              ),
            ),


          ),
          Expanded(
            flex: 3,
            child: LayoutBuilder(
              builder: (context, constraints) => Container(
                color: Colors.blueGrey,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(

                    children: [
                      SizedBox(height: 30.0,),
                      Text(
                        ' ',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontWeight:FontWeight.normal,
                        ),
                      ),
                      TextFild(
                          keyBordType: TextInputType.name,
                          controller: userName,
                          prefixIcon: Icons.account_circle_outlined,
                          lable: 'Username',

                          validate: ( String ?value){
                            if(value!.isEmpty){
                              return ' must be enter Full name';
                            }}),
                      SizedBox(height: 20.0,),
                      Text(
                        'Please Fill in the form to continue ',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontWeight:FontWeight.normal,
                        ),
                      ),
                      TextFild(
                          keyBordType: TextInputType.phone,
                          controller: userPhone,
                          prefixIcon: Icons.phone,
                          lable: 'Username',
                          validate: ( String ?value){
                            if(value!.isEmpty){
                              return 'must be enter your phone';
                            }}),
                      SizedBox(height: 20.0,),
                      Text(
                        'Please Fill in the form to continue ',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontWeight:FontWeight.normal,
                        ),
                      ),
                      TextFild(
                          keyBordType: TextInputType.streetAddress,
                          controller: useraddress,
                          prefixIcon: Icons.account_balance_rounded,
                          lable: 'Username',
                          validate: ( String ?value){
                            if(value!.isEmpty){
                              return 'must be enter your phone';
                            }}),



                    ],
                  ),
                ),

              ),
            ),
          ),
        ],
      ),
    );
  }
}




