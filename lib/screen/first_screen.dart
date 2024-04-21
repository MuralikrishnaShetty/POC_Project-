import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:url_launcher/url_launcher.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white, size: 32),
        backgroundColor: const Color(0xff0b2265),
        actions: [
          Row(
            children: [
              IconButton(
                  onPressed: () {},
                  icon: const ImageIcon(
                      color: Colors.white,
                      size: 28,
                      AssetImage("assets/images/Bell.png"))),
              const SizedBox(
                width: 10,
              ),
              IconButton(
                onPressed: () {},
                icon: Image.asset(
                  'assets/images/sosButton.png',
                  width: 32,
                  height: 26,
                ),
              ),
            ],
          ),
        ],
      ),
      drawer: const DrawerButton(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              // margin: EdgeInsets.symmetric(horizontal: 15, vertical: 28),
              margin: const EdgeInsets.fromLTRB(15, 20, 15, 17),
              child: Row(
                children: [
                  Image.asset(
                    'assets/images/profilePhoto.png',
                    width: 52,
                    height: 52,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hello Mr. Joseph',
                        style:
                            TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                      ),
                      Text(
                        'You have 2 Trips assigned for the day',
                        style:
                            TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
                      )
                    ],
                  )
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xff0b2265)),
              height: 54,
              width: 366,
              alignment: Alignment.center,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Week #23: Invoice Draft Ready for Submission",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(
                    width: 6,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Image.asset(
                      'assets/images/rightArrow.png',
                      width: 32,
                      height: 32,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Container(
              alignment: Alignment.centerLeft,
              margin: const EdgeInsets.only(left: 15),
              child: const Text("Overview",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  )),
            ),
            const SizedBox(
              height: 10,
            ),
            //startin of the overlayer section
            Row(
              children: [
                const SizedBox(
                  width: 15,
                ),
                Material(
                  elevation: 2.8,
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    width: 177,
                    height: 78,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/images/doller.png',
                              width: 16,
                              height: 16,
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            const Text("180.00",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ))
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text("Total Payment Due",
                            style: TextStyle(
                              // color: Colors.grey,
                              color: Color.fromRGBO(102, 102, 102, 1),
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                            ))
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  width: 12,
                ),
                // second container
                Material(
                  elevation: 2.8,
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    width: 177,
                    height: 78,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/images/checkcal.png',
                              width: 16,
                              height: 16,
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            const Text("04",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ))
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        const Text("Schedules for the day",
                            style: TextStyle(
                              // color: Colors.grey,
                              color: Color.fromRGBO(102, 102, 102, 1),
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                            ))
                      ],
                    ),
                  ),
                )
              ],
            ),
            //checking this
            const SizedBox(height: 12),
            Row(
              children: [
                const SizedBox(
                  width: 15,
                ),
                Material(
                  elevation: 2.8,
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    width: 177,
                    height: 78,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/images/calender.png',
                              width: 16,
                              height: 16,
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            const Text("26 Trips",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ))
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text("Scheduled this week",
                            style: TextStyle(
                              // color: Colors.grey,
                              color: Color.fromRGBO(102, 102, 102, 1),
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                            ))
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  width: 12,
                ),
                // second container
                Material(
                  elevation: 2.8,
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    width: 177,
                    height: 78,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/images/checkcal.png',
                              width: 16,
                              height: 16,
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            const Text("20",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ))
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        const Text("Completed this Week",
                            style: TextStyle(
                              // color: Colors.grey,
                              color: Color.fromRGBO(102, 102, 102, 1),
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                            ))
                      ],
                    ),
                  ),
                )
              ],
            ),
            //experimental code
            const SizedBox(
              height: 10,
            ),
        
            //order raised section
            Material(
              elevation: 2.8,
              borderRadius: BorderRadius.circular(10),
              child: Container(
                width: 366,
                height: 108,
                child: Column(
                  // check
                  children: [
                    Row(
                      children: [
                        Column(
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(50, 2, 0, 10),
                              child: Row(
                                children: [
                                  Image.asset(
                                    'assets/images/calender.png',
                                    width: 16,
                                    height: 16,
                                  ),
                                  const SizedBox(
                                    width: 8,
                                  ),
                                  const Text("4",
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                      ))
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(50, 0, 0, 0),
                              child: const Text("Last Month",
                                  style: TextStyle(
                                    color: Color.fromRGBO(102, 102, 102, 1),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                  )),
                            ),
                            // order raised text
                          ],
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(
                              110, 14, 0, 10), //margin  for the current month
                          child: Column(
                            children: [
                              Container(
                                margin: EdgeInsets.fromLTRB(0, 0, 0, 8),
                                child: Row(
                                  children: [
                                    // Container(
                                    // margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                                    Image.asset(
                                      'assets/images/calender.png',
                                      width: 16,
                                      height: 16,
                                    ),
                                    // ),
        
                                    Container(
                                      margin: EdgeInsets.fromLTRB(8, 0, 0, 0),
                                      child: const Text("4",
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600,
                                          )),
                                    )
                                  ],
                                ),
                              ),
                              const Text("Current Month",
                                  style: TextStyle(
                                    color: Color.fromRGBO(102, 102, 102, 1),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                  ))
                            ],
                          ),
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 5, 0, 0),
                      child: Text("Orders Raised",
                          style: TextStyle(
                            color: Color.fromRGBO(102, 102, 102, 1),
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                          )),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(height: 24),
            Row(
              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(left: 15),
                  child: Text(
                    "Upcoming Schedule",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 163),
                  child: Text("View all",
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        decorationColor: Color.fromRGBO(5, 76, 184, 1),
                        color: Color.fromRGBO(5, 76, 184, 1),
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      )),
                )
              ],
            ),
            SizedBox(
              height: 8,
            ),
            //upcoming sheduled  section
            Container(
              width: 366,
              height: 56,
              decoration: const BoxDecoration(
                borderRadius:
                    BorderRadiusDirectional.vertical(top: Radius.circular(10)),
                color: Color.fromRGBO(245, 235, 234, 1),
              ),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 12),
                    child: Text("Route - OMMR25614",
                        style: TextStyle(
                          color: Color.fromRGBO(218, 41, 28, 1),
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        )),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 70),
                    child: Text(
                      "Start Journey",
                      style: TextStyle(
                        color: Color.fromRGBO(11, 34, 101, 1),
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  Image.asset(
                    'assets/images/arrow.png',
                  ),
                ],
              ),
            ),
            Material(
              elevation: 2.1,
              borderRadius:
                  const BorderRadius.vertical(bottom: Radius.circular(10)),
              child: Container(
                width: 365,
                height: 88,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.vertical(
                      bottom: Radius.circular(10),
                    ),
                    color: Colors.white),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            margin: EdgeInsets.fromLTRB(10, 16, 0, 0),
                            child: Image.asset('assets/images/clock.png')),
                        SizedBox(
                          width: 8,
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 16, 0, 12),
                          child: Text(
                            "06:20 AM - 8:35 AM",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(80, 16, 8, 12),
                          child: Text("12 Students",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              )),
                        ),
                        Container(
                            margin: EdgeInsets.only(top: 16),
                            child: Image.asset('assets/images/community.png')),
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(10, 0, 8, 20),
                          child: Image.asset('assets/images/map.png'),
                        ),
                        Text(
                          "9 Stops | 60 Miles",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(105, 0, 8, 0),
                          child: Text("Cincinnati",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              )),
                        ),
                        Image.asset('assets/images/zigmap.png'),
                      ],
                    ),
                  ],
                ),
              ),
            ),
        
           SizedBox(height: 26,) //experimental code ends
          ],
        ),
        
      ),
    );
  }
}
