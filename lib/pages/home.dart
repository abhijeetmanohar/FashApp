import 'package:flutter/material.dart';
import 'package:fash_app/pages/horizontal_listview.dart';
import 'package:fash_app/pages/products.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    /*
    Widget image_carousel =  new Container(
      height: 200.0,
      child: Carousel(
        boxFit: BoxFit.cover,
        autoplay: false,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds: 1000),
      ),
    ); */
    return Scaffold(
      appBar: AppBar(
        title: Text('Fashapp'),
        elevation: 0.0,
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.search),
              onPressed: () {}
          ),
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {},
          )
        ],

      ),
      drawer: new Drawer(
        //header
        child: ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: Text('Abhijeet Manohar'),
              accountEmail: Text('amanohar@wisc.edu'),
              currentAccountPicture: GestureDetector(
                child: new CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Icon(Icons.person, color: Colors.white,),
                ),
              ),
            ),
            //body
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Home Page'),
                leading: Icon(Icons.home, color: Colors.red,),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('My Account'),
                leading: Icon(Icons.person, color: Colors.red),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Orders'),
                leading: Icon(Icons.shopping_basket, color: Colors.red,),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Categories'),
                leading: Icon(Icons.dashboard, color: Colors.red,),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Favorites'),
                leading: Icon(Icons.favorite, color: Colors.red,),
              ),
            ),
            Divider(),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Settings'),
                leading: Icon(Icons.settings, color: Colors.blueGrey,),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('About'),
                leading: Icon(Icons.help, color: Colors.blueAccent,),
              ),
            )
          ],
        ),
      ),
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            //image_carousel,
            new Padding(
              padding: const EdgeInsets.fromLTRB(20.0, 10.0, 0.0, 10.0),
              child: Text('Categories', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17.0),),
            ),
            //Horizontal List View starts here
            HorizontalListView(),
            new Padding(padding: EdgeInsets.fromLTRB(20.0, 10.0, 0.0, 10.0),
              child: Text('Recent Products', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17.0),),
            ),
            Container(
              height: 500.0,
              child: Products(),
            ),
          ],
        ),
      ),

    );
  }
}
