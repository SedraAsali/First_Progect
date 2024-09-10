import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_advanced_avatar/flutter_advanced_avatar.dart';
import 'package:untitled1/prodact.dart';
import 'familier.dart';
class ice extends StatelessWidget {

  var userNamecontroller=TextEditingController();
  var passWordcontroller=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      body:
      Container(
        height: double.infinity,
        decoration:
        BoxDecoration(gradient: LinearGradient(
            begin: Alignment.topRight,
            end:Alignment.bottomLeft,
            colors: [
              Colors.pink.shade500,
              Colors.pink.shade100,
            ]
        )),
        width: double.infinity,
        padding: EdgeInsets.only(
          top: 30.0,
        ),
        child:
        SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                AdvancedAvatar(
                  size: 300.0,
                  image: NetworkImage('https://inspirationseek.com/wp-content/uploads/2016/02/Pink-Ice-Cream-with-Strawberry.jpg'),

                ),
                SizedBox(height:30.0 ,),
                Center(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Text('>>> ICE CREAM <<<',
                          style: TextStyle(fontSize: 30.0,
                              color:Colors.white ,
                              fontStyle: FontStyle.italic),),
                        SizedBox(height:30.0 ,),
                        box(

                          prefix:Icons.person_pin ,
                          hintText: 'User Name',
                          typeInput: TextInputType.text,
                          controller: userNamecontroller,

                        ),
                      ],
                    ),
                  ),
                ),

                SizedBox(height:10.0 ,),
                box(

                  prefix: Icons.lock,
                  suffix: Icons.remove_red_eye_rounded,
                  hintText: 'PassWord',
                  isPassWord: true,
                  typeInput: TextInputType.visiblePassword,
                  controller: passWordcontroller,
                ),
                SizedBox(height: 25.0,),
              Container(
                height:50.0,
                decoration:  BoxDecoration(
                  color: Colors.pink.shade400,
                  borderRadius: BorderRadius.circular((25.0),),),
                width: 250.0,
                child:
                MaterialButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder:
                        (context)=>product(name: 'Sedra',)));
                  },
                  child: Text(
                    'get ice cream'.toUpperCase() ,
                    style: TextStyle(color: Colors.white,
                      fontWeight:FontWeight.bold,),),),

              ),
                SizedBox(height: 15.0,),
                Row(
                  children: [
                    Expanded(
                      child: TextButton(onPressed: (){}, child:
                      Text('Forget PassWord ?',
                        style: TextStyle(color: Colors.white),),),
                    ),
                    Expanded(
                      child: TextButton(onPressed: (){}, child:
                      Text('Sign Up ',
                        style: TextStyle(color: Colors.white),),

                      ),),
                  ],
                ),
              ], ),
          ),
        ),

      ),
    );
  }
}
