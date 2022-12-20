import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:restoapp/widgets/home_navi.dart';
import 'package:restoapp/widgets/itemcon.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 33, 32, 32),
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.only(top: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Icon(
                          Icons.sort_rounded,
                          color: Colors.white,
                          size: 40,
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Icon(
                          Icons.search,
                          color: Colors.white,
                          size: 40,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Text(
                    "Hot to Resto Food",
                    style: GoogleFonts.k2d(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Text(
                    "Delievery at door",
                    style: GoogleFonts.k2d(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white60),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                TabBar(
                  isScrollable: true,
                  indicator: BoxDecoration(),
                  labelStyle: GoogleFonts.k2d(fontSize: 20),
                  labelPadding: EdgeInsets.symmetric(horizontal: 20),
                  tabs: [
                    Text("Burger"),
                    Text("Pizza"),
                    Text("Drinks"),
                    Text("Pasta"),
                  ],
                ),
                Flexible(
                  flex: 1,
                  child: TabBarView(children: [
                    Itemcon(),
                    Itemcon(),
                    Itemcon(),
                    Itemcon(),

                  ]),
                )
              ],
            ),
          ),
        ),
        bottomNavigationBar: Homenavbar(),
      ),
    );
  }
}
