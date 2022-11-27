import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:medical_app_ui/util/bottomBar.dart';
import 'package:medical_app_ui/util/category_card.dart';
import 'package:medical_app_ui/util/doctor_list.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

TextStyle Size = TextStyle(
  fontSize: 15,
);
//bottom bar navigation
int _currentBottomIndex = 0;
void _handleBottomIndexChage(int? index) {}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: MyBottomBar(
        index: _currentBottomIndex,
        onTap: _handleBottomIndexChage,
      ),
      backgroundColor: Colors.grey.shade300,
      body: SafeArea(
        child: Column(
          children: [
            //app bar
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //name
                      Text(
                        "Hello,",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Jerome Bell",
                        style: TextStyle(
                            fontSize: 35, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  //profile picture
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.green.shade200,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    // height: 50,
                    // width: 50,
                    child: Image.asset(
                      "assets/images/surgeon (1).png",
                      height: 50,
                    ),

                    // child: Icon(
                    //   Icons.person,
                    //   size: 50,
                    // ),
                  ),
                ],
              ),
            ),
            // SizedBox(
            //   height: 20,
            // ),
            //card->how do you feel?
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 25.0,
              ),
              child: Container(
                padding: EdgeInsets.only(right: 20),
                decoration: BoxDecoration(
                  color: Colors.pink.shade100,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    //animation or cute picture
                    Container(
                      height: 150,
                      width: 150,
                      child: Lottie.network(
                          "https://assets3.lottiefiles.com/packages/lf20_l13zwx3i.json"),
                    ),
                    //how do you feel + get started button
                    // SizedBox(
                    //   width: 5,
                    // ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "How do you feel?",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Text(
                            "fill out your medical card right now",
                            style: Size,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            padding: EdgeInsets.all(12),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Colors.yellow.shade300,
                            ),
                            child: Center(
                              child: Text(
                                'GetStarted',
                                style: Size,
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            //search bar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.grey.shade100,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.red,
                      ),
                      prefixIconColor: Colors.blue,
                      border: InputBorder.none,
                      hintText: "How can we help you?"),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            //horizontal list -> categories: dentist,surgeon etc..
            Container(
              // color: Colors.blue.shade100,
              height: 80,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  CategoryCard(
                    image: "assets/images/animation/atom.png",
                    text: 'atom',
                  ),
                  CategoryCard(
                    image: "assets/images/animation/chromosome.png",
                    text: 'chromosome',
                  ),
                  CategoryCard(
                    image: "assets/images/animation/ecosystem.png",
                    text: 'ecosystem',
                  ),
                  CategoryCard(
                    image: "assets/images/animation/scalpel.png",
                    text: 'scalpel',
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Doctor list",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "See all",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.grey.shade600,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),

            //doctor list
            Expanded(
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  DoctorList(
                    DoctorName: "Dr. Arlisadfadf",
                    text: 'therapist 7 y.e.',
                    photoDoctor: 'assets/images/surgeon (1).png',
                    Number: 4.5,
                  ),
                  DoctorList(
                    DoctorName: 'Dr. Daralidfad',
                    text: 'Surgeon 5 y.3.',
                    photoDoctor: 'assets/images/surgeon.png',
                    Number: 3.5,
                  ),
                  DoctorList(
                    DoctorName: 'Dr. Katala',
                    text: 'Surgeon 7 y.3.',
                    photoDoctor: 'assets/images/surgeon.png',
                    Number: 5.6,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
