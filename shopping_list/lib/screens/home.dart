import 'package:flutter/material.dart';
import 'package:shopping_list/screens/shoppingList.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text('This is the Grocery List App')
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('Shopping List',
              style: TextStyle(
                color: Colors.white,
                fontSize:24
              ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.list),
              title: Text('Shopping List'),
              onTap: () {
                Navigator.push(context,MaterialPageRoute(builder: (context) => ShoppingList()));
              },
            )
          ],
        ),
      ),
    );
  }
}