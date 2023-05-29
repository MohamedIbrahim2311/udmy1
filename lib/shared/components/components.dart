import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


Widget defaultButton({
  double radius =0.0,
  required double width,
  required Color background,
  required Function function,
  required String text,



})=> Container(
  width: width,

  height:50.0,
  decoration: BoxDecoration(
    borderRadius:BorderRadius.circular(radius),
    color:background ,
  ),
  child: MaterialButton(
    onPressed: (){function();},

    child: Text(
      text.toUpperCase(),

        style: TextStyle(
          color: Colors.white,
          fontSize: 20.0,
          fontWeight:FontWeight.bold,
        )

    ),),
);




Widget defaultFormField({

  required TextEditingController controller,
  Function? onTap,
  required TextInputType type,
   Function? onSubmit,
   required String? Function(String?)? validate,
   required String lable,
  required  IconData prefixIcon ,
  bool isPassword=false,
  IconData? suffix,
   Function? suffixonpresed ()?,



})=>TextFormField(
controller: controller,
keyboardType: type,
obscureText:isPassword ,

validator:validate,
decoration: InputDecoration(
labelText: lable,
prefixIcon: Icon(
  prefixIcon,
) ,
border: OutlineInputBorder(),
suffixIcon: suffix!= null?IconButton(
  onPressed:suffixonpresed,
  icon:Icon(
    suffix,
 ),
) :null,
),
);

String? validate(String? value) {
}





Widget TextFild({
  required String? Function(String?)? validate,
 
  required  IconData prefixIcon ,
  required TextEditingController controller,
  IconData? suffix,
  required String lable,

  bool isObs=false,
  TextInputType? keyBordType,
}){
  return Container(
    height:70.0 ,
    width: 1000.0,
    padding: EdgeInsets.symmetric(horizontal: 30.0),
    margin: EdgeInsets.symmetric(horizontal: 20.0,vertical: 10),
    decoration: BoxDecoration(

      color: Colors.white,
      borderRadius:BorderRadius.circular(20.0)

    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 20.0,
          child: TextField(

            obscureText: isObs,
            keyboardType: keyBordType,
            textAlignVertical: TextAlignVertical.center,
          decoration: InputDecoration(
            labelText: lable,

            border: InputBorder.none,
            
            prefixIcon: Icon(
              prefixIcon,
            ) ,


          ),
            style:  TextStyle(
            color: Colors.white,
            fontSize: 20.0,
            fontWeight:FontWeight.bold,
          ),
          ),
        ),

      ],
    ),

  );

}
