import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:meditation_app/screens/details_screen.dart';
import 'package:meditation_app/widgets/bottom_nav_bar.dart';
import 'package:meditation_app/widgets/category_card.dart';
import 'package:meditation_app/widgets/search_bar.dart';
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: BottomNavBar(),
      body: Stack(
        children: [
          Container(
            height:size.height*.45,
            decoration: BoxDecoration(
              color:Color(0xFFF5CEB8),
              image:DecorationImage(
                alignment: Alignment.centerLeft,
                image: AssetImage('assets/images/undraw_pilates_gpdb.png'),
              ),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:
                [
                  Align(
                    alignment:Alignment.topRight,
                    child: Container(
                      alignment: Alignment.center,
                      height: 52,
                      width: 52,
                      decoration: BoxDecoration(
                        color: Color(0xFFF2BEA1),
                        shape:BoxShape.circle,
                      ),
                      child:SvgPicture.asset('assets/icons/menu.svg') ,
                    ),
                  ),
                  Text("Good Morning\nShishir",
                    style: TextStyle(fontSize: 30.0,fontWeight: FontWeight.w900),
                  ),
                  SearchBar(),
                  Expanded(
                    child: GridView.count(
                      crossAxisCount: 2,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20,
                      children: [
                        CategoryCard(
                          svgSrc: "assets/icons/Hamburger.svg",
                          title:"Diet Recommendation" ,
                          press: ()
                          {

                          },
                        ),
                        CategoryCard(svgSrc: "assets/icons/Excrecises.svg",
                          title:"Kegel Excrecises" ,
                          press: (){},
                        ),
                        CategoryCard(
                          svgSrc: "assets/icons/Meditation_women_small.svg",
                          title:"Meditation" ,
                          press: (){
                            Navigator.push(context,
                              MaterialPageRoute(builder:
                                  (context){return DetailsScreen();
                              }),
                            );
                          },
                        ),
                        CategoryCard(
                          svgSrc: "assets/icons/yoga.svg",
                          title:"Yoga" ,
                          press: ()
                          {

                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),

        ],
      ),
    );
  }
}
