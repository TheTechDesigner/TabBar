import 'package:flutter/material.dart';
import 'package:top_tab_bar/draftPage.dart';
import 'package:top_tab_bar/newPage.dart';
import 'package:top_tab_bar/paidPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Color(0xFFC41A3B),
        primaryColorLight: Color(0xFFFBE0E6),
        accentColor: Color(0xFF1B1F32),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin{
  String title = 'TopTabBar';
  TabController _tabController;

  @override
  void initState() { 
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() { 
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: Colors.white,
          unselectedLabelColor: Colors.black,
          labelColor: Colors.white,
          indicatorWeight: 5.0,
          indicatorSize: TabBarIndicatorSize.tab,
          tabs: <Widget>[
            Tab(
              text: 'New',
            ),
            Tab(
              icon: Icon(Icons.drafts),
            ),
            Tab(
              icon: Icon(Icons.payment),
              text: 'Paid',
            )
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        // physics: NeverScrollableScrollPhysics(),
        children: <Widget>[
          NewPage(),
          DraftPage(),
          PaidPage(),
          // Center(child: Text('New', style: TextStyle(fontSize: 48.0),)),
          // Center(child: Text('Draft', style: TextStyle(fontSize: 48.0),)),
          // Center(child: Text('Paid', style: TextStyle(fontSize: 48.0),)),

        ],
      ),
    );
  }
}
