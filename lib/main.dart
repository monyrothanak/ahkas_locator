import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/chat.dart';
import 'package:flutter_app/music_screen.dart';
import 'package:flutter_app/myProfile.dart';
import 'package:flutter_app/mySetting.dart';
import 'package:flutter_app/searchScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
  int _counter = 0;
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    var color = Color.fromRGBO(187, 124, 45, 1);
    return Container(
      // lenght:_page.lenght,
      child: Scaffold(
        key: _scaffoldKey,
        appBar: AppBar(
          leading: IconButton(
              icon: Icon(
                Icons.list,
                color: Color.fromRGBO(187, 124, 45, 1),
              ),
              onPressed: () => _scaffoldKey.currentState.openDrawer()),
          backgroundColor: Colors.white,
          title: Image(
              image: AssetImage(
                'assets/images/logo.png',
              ),
              width: 170,
              fit: BoxFit.fill),
          centerTitle: true,
          actions: [
            IconButton(
              icon: Icon(
                Icons.search,
                color: Color.fromRGBO(187, 124, 45, 1),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SearchScreen()),
                );
              },
            ),
            // IconButton(
            //   icon: Icon(Icons.movie,color:Colors.orange,),
            //   onPressed: () {
            //     Navigator.push(
            //       context,
            //       MaterialPageRoute(builder: (context) => MyChat()),
            //     );
            //   },
            // )
          ],
          bottom: TabBar(
            controller: _tabController,
            indicatorColor: color,
            tabs: <Widget>[
              Tab(
                icon: Icon(
                  Icons.home,
                  color: color,
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.album,
                  color: color,
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.headset,
                  color: color,
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          controller: _tabController,
          children:  <Widget>[
            Center(
              child: Text("It's cloudy here"),
            ),
            Center(
              child: Text("It's rainy here"),
            ),
            MusicScreen()
          ],
        ),
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.white,
                  image: DecorationImage(
                    image: AssetImage('assets/images/logo.png'),
                  ),
                ),
                child: Text(
                  'Menu',
                  style: TextStyle(
                    color: Color.fromRGBO(187, 124, 45, 1),
                    fontSize: 24,
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.account_circle,color: Colors.lightBlue,),
                title: Text('Profile'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyProfile()),
                  );
                },
              ),
              ListTile(
                leading: Icon(Icons.settings,color: Colors.lightBlue,),
                title: Text('Settings'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MySetting()),
                  );
                },
              ),
              // ListTile(
              //   leading: Icon(Icons.message),
              //   title: Text('Messages'),
              //   onTap: () {
              //     Navigator.push(
              //       context,
              //       MaterialPageRoute(builder: (context) => MyProfile()),
              //     );
              //   },
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
