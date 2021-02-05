import 'package:flutter/material.dart';
import 'package:flutter_application_2/itemDetailPage.dart';

class Item {
  String image;
  String title;

  Item(this.image, this.title);
}

class ListItemPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ListItemState();
  }
}

class ListItemState extends State<ListItemPage> {
  var ctxScaffold;
  List<Item> items = new List();

  @override
  Widget build(BuildContext context) {
    items.add(Item('assets/1.jpg', 'Pepperoni Pizza'));
    items.add(Item('assets/2.jpg', 'Cheeze Pizza'));
    items.add(Item('assets/3.jpg', 'Mix Pizza'));

    return Scaffold(
        appBar: AppBar(
          title: Text('List Item Page'),
        ),
        body: Builder(builder: (BuildContext ctx) {
          ctxScaffold = ctx;
          return ListView.builder(
              itemCount: items.length,
              shrinkWrap: true,
              itemBuilder: (BuildContext ctxItem, int index) => Container(
                    child: Card(
                      child: ListTile(
                        leading: ConstrainedBox(
                          constraints: BoxConstraints(
                              maxHeight: 45,
                              minHeight: 45,
                              maxWidth: 75,
                              minWidth: 75),
                          child: Image.asset(
                            items.elementAt(index).image,
                            fit: BoxFit.cover,
                          ),
                        ),
                        title: Text(items.elementAt(index).title),
                        trailing: RaisedButton(
                          child: Text('View Detail'),
                          onPressed: () {
                            Navigator.push(ctxScaffold,
                                MaterialPageRoute(builder: (builder) {
                              return ItemDetailPage(
                                  items.elementAt(index).image,
                                  items.elementAt(index).title);
                            }));
                          },
                        ),
                      ),
                    ),
                  ));
        }));
  }
}
