import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Homenavbar extends StatelessWidget {
   const Homenavbar({Key? key}) : super(key: key);

   @override
   Widget build(BuildContext context) {
     return Container(
       padding: EdgeInsets.symmetric(horizontal: 15),
       height: 80,
       decoration: BoxDecoration(
         color:Color.fromARGB(255, 33, 32, 32),
         boxShadow: [
           BoxShadow(
             blurRadius: 8,
             spreadRadius: 1,
             color: Colors.black.withOpacity(0.4)
           ),
           
         ]
       ),child: Row(
       mainAxisAlignment: MainAxisAlignment.spaceBetween,
       children: [
         Icon(Icons.mail,color: Colors.white,size: 35,),
         Icon(Icons.favorite,color: Colors.white,size: 35,),
         Container( child: Icon(CupertinoIcons.cart_fill,size: 30,color: Colors.white,),
           padding: EdgeInsets.all(15),

           decoration: BoxDecoration(
             color: Colors.yellow,

           borderRadius: BorderRadius.circular(30),
               boxShadow: [
               BoxShadow(
               blurRadius: 8,
               spreadRadius: 1,
               color: Colors.white.withOpacity(0.2)
           ), ]

         ),),
         Icon(Icons.notifications,color: Colors.white,size: 35,),
         Icon(Icons.person  ,color: Colors.white,size: 35,),
       ],
     ),
     );
   }
 }
