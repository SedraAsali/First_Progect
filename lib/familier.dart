
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_advanced_avatar/flutter_advanced_avatar.dart';

Widget input({

  required double width,
  required double height,
  required Color background,
  required String text,
  required TextEditingController namecontroller,
  required TextEditingController passcontroller,
  required Function function,
  bool isUpperCase=true,
})=>
    Container(
  height:height,
  decoration:  BoxDecoration(
    color:background,
    borderRadius: BorderRadius.circular((25.0),),),
  width: width,
  child:
  MaterialButton(
    onPressed: (){},
    child: Text(
      isUpperCase? text.toUpperCase(): text ,
      style: TextStyle(color: Colors.white,

        fontWeight:FontWeight.bold,),),),

);

Widget box ({
  required TextEditingController controller,
  required TextInputType typeInput,
  required String hintText,
  required IconData prefix,
  var isPassWord=false,
  IconData? suffix ,

})=>
    Padding(
  padding: const EdgeInsets.only(
    left: 50.0,
    right: 50.0,
  ),

  child: Container(
    decoration:
    BoxDecoration(
      color: Colors.white,

      borderRadius: BorderRadius.circular(14.0),),
// color: Colors.white.withOpacity(0.2),
    child:
    TextFormField(
      onFieldSubmitted: (value){
        print(value);


      },
      obscureText: isPassWord,
      keyboardType: typeInput,
      decoration:
      InputDecoration(

//   ),
        hintText: hintText,

        hintStyle: TextStyle(color:Colors.pink.shade200,
        fontSize: 15.0),
        suffixIcon: suffix!=null? IconButton(onPressed:() {},
         icon: Icon(suffix,
           color: Colors.pink.shade200,)):null,
         prefixIcon: Icon(prefix,color: Colors.pink.shade200,),
        border:  OutlineInputBorder(
          borderSide: BorderSide.none,

),
        ),
      ),
    ),
);




Widget contain({
  required String image,
  required String text,
  required String price,
})=>   Container(width: 150.0,
  height: 250.0,
  decoration: BoxDecoration(borderRadius: BorderRadius.circular(20.0),
    color: Colors.pink.shade50,
  ),
  child:
  Column(
    children: [
      Text(''),
      AdvancedAvatar(
        size:150.0,
        child: Image(image:
        NetworkImage
          (image),),
      ),
      SizedBox(height: 12.0,),
      Text(text,
        style: TextStyle(color: Colors.brown.shade800,
            fontSize: 20.0),),
      Text('price: $price',
        style: TextStyle(color: Colors.brown.shade500),),
    ],
  ),

);