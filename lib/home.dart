import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:pencilbox3_blog_postapp/pages/itemone.dart';
import 'package:pencilbox3_blog_postapp/pages/itemthree.dart';
import 'package:pencilbox3_blog_postapp/pages/itemtwo.dart';
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _indexPage=1;
  final pageOptions=[
    ItemOne(),
    ItemTwo(),
    ItemThree(),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Blog App"),
      backgroundColor: Colors.blueAccent,
      centerTitle: true,),
      body: pageOptions[_indexPage],
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.blueAccent,
        index: 1,
        items: [
          Icon(Icons.poll,size: 30,),
          Icon(Icons.home,size: 30,),
          Icon(Icons.library_books,size: 30,)
        ],
        onTap: (int index){
          setState(() {

            _indexPage=index;
          });
        },

      ),
    );
  }
  }

