import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {
  // late TabController _tabController;
  // @override
  // void initState() {
  //   _tabController = TabController(length: 3, vsync: this);
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: DefaultTabController(
          length: 3,
          child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.pink,
              title: Text('My App BAR'),
              centerTitle: true,
              elevation: 30.0,
              shadowColor: Colors.purple,
              toolbarOpacity: .9,
              toolbarHeight: 70,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              leading: Icon(Icons.menu),
              actions: [
                Icon(Icons.favorite),
                IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () {
                    print('search');
                  },
                ),
                Icon(Icons.more_vert_outlined)
              ],
              bottom: TabBar(
                //controller: _tabController,
                tabs: [
                  Tab(
                    icon: Icon(Icons.person),
                    text: 'Person',
                  ),
                  Tab(
                    icon: Icon(Icons.card_travel),
                    text: 'Travel',
                  ),
                  Tab(icon: Icon(Icons.shopping_cart), text: 'Shoping'),
                ],
              ),
            ),
            body: TabBarView(
              children: [
                Center(child: Text('Person')),
                Center(child: Text('Travel')),
                Center(child: Text('Shoping')),
              ],
            ),
            bottomNavigationBar: Material(
              color: Colors.pink,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10))),
              child: TabBar(
                tabs: [
                  Tab(
                    icon: Icon(Icons.person),
                    text: 'Person',
                  ),
                  Tab(
                    icon: Icon(Icons.card_travel),
                    text: 'Travel',
                  ),
                  Tab(icon: Icon(Icons.shopping_cart), text: 'Shoping'),
                ],
              ),
            ),
          ),
        ));
  }
}
