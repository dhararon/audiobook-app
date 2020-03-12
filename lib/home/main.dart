import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BestSellerList extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Stack(children: <Widget>[
                  Container(
                    width: ScreenUtil().setWidth(250),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.asset(
                      "assets/books/jungle_book.jpg",
                      fit: BoxFit.fill,
                      ),
                    ),
                    margin: EdgeInsets.symmetric(
                      vertical: 0.0,
                      horizontal: 5.0
                    ),
                  ),
                    Container(
                      margin: EdgeInsets.only(left: 95, top: 155),
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(90, 255, 255, 255),
                      shape: BoxShape.circle
                    ),
                    child: IconButton(
                      icon: Icon(Icons.play_arrow),
                    ),
                  ),
                ]
              ),
              Stack(children: <Widget>[
                  Container(
                    width: ScreenUtil().setWidth(250),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.asset(
                      "assets/books/king_kong.jpg",
                      fit: BoxFit.fill,
                      ),
                    ),
                    margin: EdgeInsets.symmetric(
                      vertical: 0.0,
                      horizontal: 5.0
                    ),
                  ),
                    Container(
                      margin: EdgeInsets.only(left: 95, top: 155),
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(90, 255, 255, 255),
                      shape: BoxShape.circle
                    ),
                    child: IconButton(
                      icon: Icon(Icons.play_arrow),
                    ),
                  ),
                ]
              ),
                Container(
                  width: ScreenUtil().setWidth(250),
                  color: Colors.white,
                  margin: EdgeInsets.symmetric(
                      vertical: 0.0,
                      horizontal: 5.0
                    ),
                ),
                Container(
                  width: ScreenUtil().setWidth(250),
                  color: Colors.purple,
                  margin: EdgeInsets.symmetric(
                      vertical: 0.0,
                      horizontal: 5.0
                    ),
                )
              ],
            );
  }
}