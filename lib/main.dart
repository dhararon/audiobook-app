import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:bookapp/home/main.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, width: 750, height: 1334);

    return Scaffold(
      backgroundColor: Color(0x100B20),
      body: Column(
        children: <Widget>[
          SizedBox(
            height: ScreenUtil.statusBarHeight,
          ),
          Expanded(
            flex: 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: 30),
                  child: SvgPicture.asset("assets/logo.svg"),
                ),
                IconButton(
                    icon: const Icon(Icons.search),
                    tooltip: "Search book",
                    onPressed: (){},
                    color: Colors.white,
                    padding: EdgeInsets.only(right:25),
                  ),
              ],
            )
          ),
          Expanded( // Best seller carrusel
            flex: 3,
            child: BestSellerList()
          ),
          Expanded(
            flex: 6,
            child: Column(children: <Widget>[
              Expanded(
                flex: 1,
                child: Container(color: Colors.blue,),
              ),
              Expanded(flex: 9, child: Container(color: Colors.yellow,),)
            ],),
          )
        ],)
    );
  }
}
