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


  required  String? Function(String?) validate,

  required  IconData prefixIcon ,
  required TextEditingController controller,
  IconData? suffix,
  required String lable,

  TextInputType? keyBordType,
}){
  return Container(
    height:70.0 ,
    width: 1000.0,
    padding: EdgeInsets.symmetric(horizontal: 30.0),
    margin: EdgeInsets.symmetric(horizontal: 20.0,vertical: 10),
    decoration: BoxDecoration(
        color: Colors.blueGrey,
        borderRadius:BorderRadius.circular(20.0)

    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 20.0,
          child: TextFormField(


            keyboardType: keyBordType,
            // textAlignVertical: TextAlignVertical.bottom,
            decoration: InputDecoration(
              labelText: lable,
              border: InputBorder.none,
              prefixIcon: Icon(
                prefixIcon,
              ) ,
            ),
            style:  TextStyle(
              color: Colors.red,
              fontSize: 20.0,
              fontWeight:FontWeight.bold,
            ),
          ),
        ),

      ],
    ),

  );

}





     Widget TextFildInput(
    context,{
      required TextEditingController controller,
      required TextInputType type,
      required  IconData prefixIcon ,
      required String lable,
      String? Function (String)? onchanged ,
      String? Function (String?)? validator  ,
      double width=200.0,
      double height=60.0,
      String? hinttext,
      bool isPassword=false,
      Function? onTap,
      IconData? suffix,
      Function? suffixonpresed ()?,
    }){
  return SizedBox(
    width: width,
    height: height,
    child: TextFormField(
      validator: validator,
      controller: controller,

      decoration: InputDecoration(
          prefixIcon: Icon(
            prefixIcon,
          ) ,
          hintText: hinttext,
          labelText: lable,
          border: const OutlineInputBorder(),
        suffixIcon: suffix!= null?IconButton(
          onPressed:suffixonpresed,
          icon:Icon(
            suffix,
          ),
        ) :null,
      ),
      onChanged: onchanged,
    ),
  );
  String? validate(String? value) {

  }
}
