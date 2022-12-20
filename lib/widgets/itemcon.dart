import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class Itemcon extends StatelessWidget {
var burgern=[" ","Cheese Burger","Maxican Burger","Veg Burger","Regular Burger" ];
var price =["","150","170","120","80"];
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      shrinkWrap: true,
      childAspectRatio: 0.76,
      children: [
        for (int i = 1; i < 5; i++)
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            margin: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Color.fromARGB(255, 33, 32, 32),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.4),
                  spreadRadius: 1,
                  blurRadius: 8,
                ),
              ],
            ),
            child: Column(
              children: [
                InkWell(
                    onTap: () {},
                    child: Container(
                      margin: EdgeInsets.all(10),
                      child: Image.asset(
                        "assets/burger/$i.png",

                        width: 120,
                        height: 120,
                        fit: BoxFit.cover,
                      ),
                    ),
                ),
                Padding(padding: EdgeInsets.only(bottom: 10),
                child: Container(
                  alignment: Alignment.centerLeft,
                  child: Text(burgern[i],style: GoogleFonts.k2d(fontSize: 18,color: Colors.white,fontWeight: FontWeight.bold),),
                ),),
                Container(
                  alignment: Alignment.centerLeft,
                  child: Text("Hot & Fresh",style: GoogleFonts.k2d(fontSize: 12,color: Colors.white38,fontWeight: FontWeight.bold),),
                ),
                Padding(padding: EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("₹"+price[i],style: GoogleFonts.k2d(fontSize:20,color: Colors.white,fontWeight: FontWeight.bold),),
                    Icon(CupertinoIcons.cart_badge_plus,size: 30,color:Colors.white)
                  ],
                ),)
              ],
            ),
          ),
      ],
    );
  }
}
