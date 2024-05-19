import 'package:book_an_event/viwe/home2.dart';
import 'package:book_an_event/viwe/homepage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'logupScreen.dart';
class loginScreen extends StatefulWidget {
  const loginScreen({super.key});

  @override
  State<loginScreen> createState() => _loginScreenState();
}

class _loginScreenState extends State<loginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(child:Column(

            children: [
              Container(height: 50,),

              Container(height: 100,width: 90,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Color(0xff944e63),
                    borderRadius: BorderRadius.circular(30)

              ),
                  child: Image.asset("images/logoo.jpg",height: 90,width: 80,)),
//text................................
                    SizedBox(height: 10,),
              Text("Welcome to Book an Event ",style: TextStyle(fontSize: 19,fontWeight:FontWeight.bold,color: Color(0xff944e63)),),
              SizedBox(height: 15,width: 10,),
              Row(
                children: [
                  Container(width: 30,),
                  Container(
                    child: Text("Log in",textAlign: TextAlign.left,style: TextStyle(fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),),
                  ),
                ],
              ),
                      //number....
                    // SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.all(20),
                child: TextFormField(
                  decoration: InputDecoration(
                    fillColor: Color(0xfb47b84),
                    filled: true,
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Color(0xffe7e7),
                    ),




                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xffe7e7))
                    ),

                    labelText: "Email or Number",
                    hintText: "pleas enter",

                  ),
                ),
              ),

              //pasword........
              Padding(
                padding: const EdgeInsets.all(20),
                child :TextFormField(
                  decoration: InputDecoration(
                    fillColor: Color(0xfb47b84),
                    filled: true,
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Color(0xffe7e7),
                      ),

                    ),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xffe7e7))
                    ),

                    labelText: "Password",
                    hintText: "pleas enter",

                  ),
                ),
              ),

//bouttn log in...........................
                    SizedBox(height: 20,),
              Container(width: 210,height:40 ,
                child: MaterialButton(onPressed: (){
                  Get.to(homePage());
                },


                  color: Color(0xffb47b84),
                  child: Text("Log in",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 19),),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),


                ),
              ),
              SizedBox(height: 10,),
              Row(children: [
                SizedBox(width: 15,),
                Container(height: 1,width: 150,color: Colors.black,),
                SizedBox(width: 15,),
                Text("or",style: TextStyle(fontWeight: FontWeight.bold),),
                SizedBox(width: 15,),
                Container(height: 1,width: 150,color: Colors.black,)
              ],),
              SizedBox(height: 40,),
              Container(width: 280,height: 50,
                child: MaterialButton(onPressed: (){},



                    color: Color(0xffb47b84),
                  //  child: Text("Log in",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 19),),
                    child: Row(children: [
                      SizedBox(width: 15,),
                      Image.asset("images/google.jpg",width: 40,),
                      SizedBox(width: 16,),
                      Text("Log in with Google",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),)
                    ],),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),


                  ),
              ),
/////feasbook........................
            SizedBox(height: 20,),
              Container(width: 280,height: 50,
                child: MaterialButton(onPressed: (){},



                  color: Color(0xffb47b84),
                  //  child: Text("Log in",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 19),),
                  child: Row(children: [
                    SizedBox(width: 15,),
                    Image.asset("images/faesbook.jpg",width: 40,),
                    SizedBox(width: 16,),
                    Text("Log in with Feasebook",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),)
                  ],),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),


                ),
              ),
              //Dont have
              SizedBox(height: 40,),
              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                Text("Dont have an account?",style: TextStyle(fontSize: 15,),),

                MaterialButton(onPressed: () {
                  Get.to(logupScreen());
                //  Navigator.of(context)..push(MaterialPageRoute(builder: (context)=> logupScreen()));

                },
                  textColor: Color(0xffb47b84),
                  child: Text("Sing up",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                )
              ],)
            ],),
          
        ),
      ),
    );
  }
}


