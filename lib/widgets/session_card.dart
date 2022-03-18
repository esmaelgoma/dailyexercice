import 'package:flutter/material.dart';
import 'package:meditation_app/constant.dart';
class SessionCard extends StatelessWidget {
  final int seasionNum;
  final bool isDone;
  final Function press;
  const SessionCard({
    Key key, this.seasionNum, this.isDone=false, this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: missing_return
    return LayoutBuilder(builder: (context,constrain){
      return ClipRRect(
        borderRadius:BorderRadius.circular(13),
        child: Container(
          width: constrain.maxWidth/2-10,
          //padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
              boxShadow: [BoxShadow(offset: Offset(0,10),
                blurRadius: 30,
                spreadRadius: -10,
                color:kShadowColor,
              ),
              ]
          ),

          child: Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: press,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    Container(
                      width: 43,
                      height: 42,
                      decoration: BoxDecoration(
                        color:isDone ? kBlueColor :Colors.white,
                        shape: BoxShape.circle,
                        border: Border.all(color: kBlueColor,),
                      ),
                      child: Icon(Icons.play_arrow,color:isDone? Colors.white:kBlueColor,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text("Session 0$seasionNum",
                      style: TextStyle(
                        fontSize: 10.0,fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      );
    }
    );
  }
}
