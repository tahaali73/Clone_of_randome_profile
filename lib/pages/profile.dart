import 'package:flutter/material.dart';

class cloneprofile extends StatelessWidget {
  const cloneprofile({super.key});

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: 
         Center(
           child: Container(
           
            width: 350,
            child: Column(children: [
            Stack(children: [
              Positioned(
                  child: Container(
                height: h/2,
                width: w,
                color: Colors.amberAccent,
              )),
              Positioned(
                  child: Container(
                height: h/2.3,
                width: w,
                color: Colors.red,
              )),
              Positioned(
                  bottom: 0,
                  right: 20,
                  child: CircleAvatar(radius: 50,backgroundColor: Colors.black,))
            ],),
              Container(
               // color: Colors.blue,
                width: w,
                height: h/7,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(height: 10,),
                     Text('Barcelona The Tourist City',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),),
                     Text('this city atract lots of tourist every year',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w300),),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Divider(height: 5,color: Colors.black,),
                    ),
                     Row(
                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                       children: [
                       iconwittext('58', Icons.favorite_rounded),
                       iconwittext('255', Icons.share_rounded),
                       iconwittext('578', Icons.comment_rounded),
                       iconwittext('24563', Icons.add_reaction_rounded),
                     ],)
                  ],),)
                   ],),),
         ),
      
    );
  }
  Widget iconwittext(String text, IconData icon){
    return Row(children: [
      Text(text,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
      SizedBox(height: 5,),
      Icon(icon),
    ],);
  }
}
