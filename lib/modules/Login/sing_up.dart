import 'package:flutter/material.dart';
import 'package:udmy1/shared/components/components.dart';

class SingUpPage extends StatefulWidget {
  const SingUpPage({Key? key}) : super(key: key);

  @override
  State<SingUpPage> createState() => _SingUpPageState();
}

class _SingUpPageState extends State<SingUpPage> {
  TextEditingController userName=TextEditingController();

  TextEditingController userPassword =TextEditingController();
  TextEditingController userEmail=TextEditingController();

  TextEditingController userPhone =TextEditingController();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.black,
      body:Padding(
        padding:  EdgeInsets.only(top: 20.0),
        child: SingleChildScrollView(

          child:Column(

            children:[
              SizedBox(height: 50.0,),

              Text(
                'Create New Account',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30.0,
                  fontWeight:FontWeight.bold,
                ),
              ),
              Text(
                'Create New Account',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 20.0,
                  fontWeight:FontWeight.normal,
                ),
              ),

              SizedBox(
                height: 20.0,


              ),
              Text(
                'Please Fill in the form to continue ',
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


              SizedBox(
                height: 20.0,

              ),
              TextFild(

                  keyBordType: TextInputType.emailAddress,
                  controller: userEmail,
                  prefixIcon: Icons.email,
                  lable:'Userpssword',
                  validate: ( String ?value){
                    if(value!.isEmpty){
                      return 'must be enter email';
                    }}),

              SizedBox(
                height: 20.0,

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


              SizedBox(
                height: 20.0,

              ),
              TextFild(
                lable: 'Userpssword',
                  keyBordType: TextInputType.visiblePassword,
                  controller: userPassword,
                  prefixIcon: Icons.remove_red_eye,

                  validate: ( String ?value){
                    if(value!.isEmpty){
                      return ' Enter your Password';
                    }}),

              SizedBox(
                height: 20.0,

              ),

              SizedBox(
                height: 20.0,

              ),

              defaultButton(

                text: 'Sing Up',
                width: 300.0,
                background: Colors.red,
                radius: 155.0  ,
                function: (){
                  Navigator.pop(context);

                  }


              ),

              SizedBox(
                height: 40.0,

              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center  ,
                children: [




                ],
              ),
            ],
          ),
        ),




      ),
    );
  }
}


