import 'package:flutter/material.dart';

class ItemDetailPage extends StatelessWidget {
  String image;
  String title;
  var ctxScaffold;

  ItemDetailPage(this.image, this.title);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Builder(builder: (BuildContext ctx) {
          ctxScaffold = ctx;
          return Column(
            children: [
              Container(
                padding: EdgeInsets.all(10),
                child: Image.asset(image),
              ),
              Text('Item Name: $title'),
            ],
          );
        }));
  }
}
