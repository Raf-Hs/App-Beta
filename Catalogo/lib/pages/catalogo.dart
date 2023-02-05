import 'package:flutter/material.dart';
import 'BottomNavigation.dart';
import 'ItemsList.dart';
import 'package:Deadmans/components/model/cart_model.dart';

import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.brown,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
          centerTitle: true,
          title: Text(
            "Deadmanstales",
            style: TextStyle(
                color: Colors.white, fontFamily: "Varela", fontSize: 20),
          ),
        ),
        body: ListView(
          children: <Widget>[
            Container(
              height: 80,
              color: Colors.white,
              child: ListView(
                padding: EdgeInsets.only(left: 20),
                children: <Widget>[
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Catalogo",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontFamily: "Varela", fontSize: 42),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  /*
                  TabBar(
                    controller: _tabController,
                    indicatorColor: Colors.transparent,
                    isScrollable: true,
                    labelColor: Colors.red[700],
                    unselectedLabelColor: Color(0xff515c6f),
                    labelPadding: EdgeInsets.only(right: 45),
                    tabs: <Widget>[
                      Tab(
                        child: Text(
                          "Categorias",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontFamily: "Varela", fontSize: 21),
                        ),
                      ),
                    ],
                  )
                  */
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 400,
              child: TabBarView(controller: _tabController, children: [
                ItemsList(),
                ItemsList(),
                ItemsList(),
              ]),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.brown[700], //olor(0xFFf17422),
          child: Icon(Icons.add_shopping_cart),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: CookingNavigator(),
      ),
    );
  }
}

class CookiesMasters extends StatefulWidget {
  @override
  _CookiesMastersState createState() => _CookiesMastersState();
}

class _CookiesMastersState extends State<CookiesMasters> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.greenAccent,
    );
  }
}
