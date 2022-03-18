import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:meditation_app/constant.dart';
import 'package:meditation_app/widgets/bottom_nav_bar.dart';
import 'package:meditation_app/widgets/search_bar.dart';
import 'package:meditation_app/widgets/session_card.dart';
class DetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: BottomNavBar(),
      body: Stack(
        children: [
          Container(
            height: size.height * .45,
            decoration: BoxDecoration(
              color: kBlueColor,
              image: DecorationImage(
                image: AssetImage("assets/images/meditation_bg.png"),
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
          SafeArea(

            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    Text("Meditation",
                      style: TextStyle(
                        fontSize: 30,fontWeight: FontWeight.w900,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text("3-10 MIN Course ",
                      style: TextStyle(
                        fontSize: 10,fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      width: size.width * .5,
                      child: Text("Live happier and healthier by learning the fundamentals of meditation and mindfulness",
                        style: TextStyle(
                          fontSize: 10,fontWeight: FontWeight.w400,
                          //tst commit
                        ),
                      ),
                    ),
                    SizedBox(
                      width: size.width * .6,
                        child: SearchBar(

                        ),
                    ),
                    SizedBox(height: 10,),
                    Wrap(
                      spacing: 20,
                      runSpacing: 20,
                      children: [
                        SessionCard(
                          seasionNum: 1,
                          isDone: true,
                          press: (){},
                        ),
                        SessionCard(
                          seasionNum: 2,
                          press: (){},
                        ),
                        SessionCard(
                          seasionNum: 3,
                          press: (){},
                        ),
                        SessionCard(
                          seasionNum: 4,
                          press: (){},
                        ),
                        SessionCard(
                          seasionNum: 5,
                          press: (){},
                        ),
                        SessionCard(
                          seasionNum: 6,
                          press: (){},
                        ),
                      ],

                    ),
                    SizedBox(height: 15,),
                    Text("Meditation",
                      style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 10),
                      padding: EdgeInsets.all(10),
                      height: 90,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(13),
                        boxShadow: [BoxShadow(
                          offset: Offset(0,17),
                          blurRadius: 23,
                          spreadRadius: -13,
                          color:kShadowColor,
                        ),
                        ],
                      ),
                      child: Row(
                        children: [
                          SvgPicture.asset('assets/icons/yoga_women.svg',
                            alignment: Alignment.topLeft,
                          ),
                          SizedBox(width:5,),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Basic 2",style: TextStyle(fontSize: 12),
                                ),
                                Text("Start your deepen your practice,",style: TextStyle(fontSize: 8),),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(10),
                            child: SvgPicture.asset("assets/icons/Lock.svg"),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

