
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_advanced_avatar/flutter_advanced_avatar.dart';

import 'familier.dart';

class product extends StatelessWidget {

  String name;
  product({
    required this.name,
  });
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
appBar: AppBar(
  backgroundColor:   Colors.pink.shade400,
  leading: IconButton(onPressed:(){
    Navigator.pop(context);
  },
    icon:Icon(Icons.keyboard_arrow_left ,color: Colors.white,),),
  //titleSpacing: 2.0,
  leadingWidth: 33.0,
  title: Text('🍦FLAVORS OF LOVE🍦',
    style:  TextStyle(color:Colors.pink.shade50,
        fontStyle: FontStyle.italic,
        fontSize: 25.0),),
),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Colors.pink.shade100,
              Colors.pink.shade300,
            ],
          )
        ),
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    left:16.0,
                top:16.0,
                bottom: 8.0,
                ),
                child: Row(
                  children: [
                    Icon(Icons.person_pin,color: Colors.pink.shade600,),
                    Text('$name',
                      style: TextStyle(color:Colors.pink.shade600,),),

                  ],
                ),
              ),
              Expanded(
                child:
                SingleChildScrollView(
                  child:
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(17.0),
                        child: Container(width: 300.0,

                         height: 40.0,
                         decoration: BoxDecoration(borderRadius: BorderRadius.circular(17.0),
                           color: Colors.pink.shade50,

                         ),
                          child:
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Icon(Icons.search,color: Colors.pink.shade400,),
                                Text('Enter name or price',
                                style: TextStyle(color:Colors.pink.shade400,),),

                              ],
                            ),
                          ),
                        ),
                      ),
                     Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Row(
                                  children: [
                                    Expanded(
                                      child:
                                      contain(image: 'https://th.bing.com/th/id/R.4d630bc975241834d86e3a72bee79904?rik=x%2bEjBgfB3FUq2g&pid=ImgRaw&r=0',
                                      text: 'Chocolate',
                                      price: '12000'),
                                    ),
                                    SizedBox(width: 20.0,),
                                    Expanded(
                                      child:
                                      contain(image: 'https://th.bing.com/th/id/OIP.FTeQyRKuRzg9KUuIqT1aIwHaHa?pid=ImgDet&w=208&h=208&c=7&dpr=1.5',
                                          text: 'Cherry',
                                          price: '10000'),

                                    ),
                                  ],
                                ),
                              ),
                              Divider(),
                              Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Row(
                                  children: [
                                    Expanded(
                                      child:
                                      contain(image: 'https://cdn3.tmbi.com/secure/RMS/attachments/37/1200x1200/exps8708_C2640C49B_RMS.jpg',
                                          text: 'Strarwberry',
                                          price: '10000'),


                                    ),
                                    SizedBox(width: 20.0,),
                                    Expanded(
                                      child:
                                      contain(image: 'https://th.bing.com/th/id/OIP.3v_AvUm0PpmYtb-9bwz5qgHaHa?w=500&h=500&rs=1&pid=ImgDetMain',
                                          text: 'Vanilla',
                                          price: '10000'),



                                    ),

                                  ],
                                ),
                              ),
                              Divider(),
                              Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Row(
                                  children: [
                                    Expanded(
                                      child:
                                      contain(image: 'https://th.bing.com/th/id/R.539706c855572b6689d59dafa1c5f696?rik=5LXgYmMxTTI7%2fA&pid=ImgRaw&r=0',
                                          text: 'Nuts',
                                          price: '12000'),


                                    ),
                                    SizedBox(width: 20.0,),
                                    Expanded(
                                      child:
                                      contain(image: 'https://th.bing.com/th/id/OIP.VL7b99QfQ0pDM67ivwhrvQHaE8?rs=1&pid=ImgDetMain',
                                          text: 'Lemon',
                                          price: '9000'),



                                    ),
                                  ],
                                ),
                              ),
                              Divider(),
                              Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Row(
                                  children: [
                                    Expanded(
                                      child:
                                      contain(image: 'https://th.bing.com/th/id/OIP.obYCLM63vUVtCRcRw7K0ZwHaJ4?rs=1&pid=ImgDetMain',
                                          text: 'Orang',
                                          price: '9000'),


                                    ),
                                    SizedBox(width: 20.0,),
                                    Expanded(
                                      child:
                                      contain(image: 'https://th.bing.com/th/id/OIP.1dshvizXUUlkkkwtt03LTgHaJl?rs=1&pid=ImgDetMain',
                                          text: 'Berry',
                                          price: '10000'),



                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),

                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
