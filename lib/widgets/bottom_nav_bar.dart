import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:meditation_app/constant.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 0),
      height: 80,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          BottomNavItem(
            svgScr: "assets/icons/calendar.svg",
            title:"Today" ,
            press:(){},
          ),
          BottomNavItem(
            svgScr: "assets/icons/gym.svg",
            title:"All Exercise" ,
            isActive: true,
            press:(){},
          ),
          BottomNavItem(
            svgScr: "assets/icons/Settings.svg",
            title:"Setting" ,
            press:(){},
          ),

        ],
      ),
    );
  }
}

class BottomNavItem extends StatelessWidget {
  final String svgScr;
  final String title;
  final Function press;
  final bool isActive;
  const BottomNavItem({
    Key key, this.svgScr, this.title, this.press, this.isActive=false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SvgPicture.asset(svgScr),
          Text(title,
            style: TextStyle(color: isActive ? kActiveIconColor:kTextColor),
          ),
        ],
      ),
    );
  }
}

