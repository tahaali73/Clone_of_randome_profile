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
                //color: Colors.amberAccent
              )),
              Positioned(
                  child: Container(
                height: h/2.3,
                width: w,
                //color: Colors.red,
                    decoration: BoxDecoration(image: DecorationImage(image: NetworkImage("https://tse3.mm.bing.net/th?id=OIP.ZwgbwolAaVhlsI57X9ptdQHaEh&pid=Api&P=0&h=220"),fit: BoxFit.cover)),
              )),
              Positioned(
                  bottom: 0,
                  right: 20,
                  child: CircleAvatar(backgroundImage: NetworkImage("https://tse3.mm.bing.net/th?id=OIP.X7RDB_jcDDBdCiwVQiPctQHaIl&pid=Api&P=0&h=220"),
                    radius: 50,))
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
                      child: Divider(height: 5,color: Colors.white,),
                    ),
                     Row(
                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                       children: [
                       iconwittext('58', Icons.favorite_rounded),
                       iconwittext('255', Icons.share_rounded),
                       iconwittext('578', Icons.comment_rounded),
                       iconwittext('24563', Icons.add_reaction_rounded),
                     ],),
                  ],),),
              Divider(height: 5,thickness: 1,color: Colors.black,),
              Container(
                padding: EdgeInsets.all(10),
                child: Text('Barcelona. I don’t think there is much point in praising a city where it is so easy to love,'
                    ' so visually appealing and emotionally pleasing'
                    ' (if I were describing a person that way, I would probably'
                    ' get married). You will love Barcelona, you will definitely'
                    ' want to go back at some point, you will be filled with the desire'
                    ' to take pictures and document this beauty every second while'
                    ' walking.',style: TextStyle(fontSize: 10),),
              )
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
