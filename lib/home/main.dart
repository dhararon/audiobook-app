import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


Widget bookList(book){
  return Stack(
    children: <Widget>[
                  Container(
                    width: ScreenUtil().setWidth(280),
                    height: ScreenUtil().setHeight(400),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.asset(
                      book,
                      fit: BoxFit.fill,
                      ),
                    ),
                    margin: EdgeInsets.symmetric(
                      vertical: 0.0,
                      horizontal: 5.0
                    ),
                  ),
                    Container(
                      margin: EdgeInsets.only(left: 105, top: 155),
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
              );
}

class BestSellerList extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    final List books = [
      "assets/books/jungle_book.jpg",
      "assets/books/king_kong.jpg",
      "assets/books/hp-4.jpg",
      "assets/books/hp-2.jpg",
      "assets/books/hp-rock.jpg",
    ];

    return ListView(
              scrollDirection: Axis.horizontal,
              children: books.map(
                  (element) => bookList(element)
                ).toList(),
            );
  }
}