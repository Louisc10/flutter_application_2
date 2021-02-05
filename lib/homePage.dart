import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/ListItemPage.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  var ctxScaffold;

  var images = [
    'assets/1.jpg',
    'assets/2.jpg',
    'assets/3.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Home Page'),
        ),
        body: Builder(builder: (BuildContext ctx) {
          ctxScaffold = ctx;
          return Column(
            children: [
              Container(
                padding: EdgeInsets.only(
                  top: 15,
                  bottom: 15,
                ),
                child: Text(
                  'Welcome to Pizza Hits',
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 30,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(
                  top: 10,
                  bottom: 10,
                ),
                child: CarouselSlider(
                  items: images.map(
                    (e) {
                      return Builder(
                        builder: (ctx) {
                          return ConstrainedBox(
                            constraints: BoxConstraints(
                              maxHeight: 100,
                              minHeight: 100,
                              maxWidth: 300,
                              minWidth: 300,
                            ),
                            child: Image(
                              image: AssetImage(e),
                              fit: BoxFit.cover,
                            ),
                          );
                        },
                      );
                    },
                  ).toList(),
                  options: CarouselOptions(
                    initialPage: 0,
                    enableInfiniteScroll: true,
                    scrollDirection: Axis.horizontal,
                    enlargeCenterPage: true,
                    autoPlay: true,
                    autoPlayInterval: Duration(seconds: 3),
                    autoPlayAnimationDuration: Duration(milliseconds: 500),
                  ),
                ),
              ),
            ],
          );
        }));
  }
}
