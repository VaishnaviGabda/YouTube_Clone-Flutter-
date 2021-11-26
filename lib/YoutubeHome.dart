import 'package:flutter/material.dart';
import 'package:youtubeclone/library.dart';

import 'home_components.dart';

class YoutubeHome extends StatefulWidget {
  const YoutubeHome({Key? key}) : super(key: key);

  @override
  _YoutubeHomeState createState() => _YoutubeHomeState();
}

class _YoutubeHomeState extends State<YoutubeHome>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this, initialIndex: 1);
  }

  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF282828),
        actions: [
          Row(
            children: [
              Image(
                image: AssetImage("assets/youtube_logo.png"),
              ),
              Text(
                "Youtube",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              )
            ],
          ),
          Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.cast),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.video_call),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.search),
              ),
              Container(
                height: 30,
                width: 30,
                child:
                    CircleAvatar(child: Image.asset("assets/Vaishnavi.jpeg")),
              )
            ],
          ),
        ],
      ),
      body: TabBarView(controller: _tabController, children: [
        Home(),
        Container(
          color: Colors.yellow,
        ),
        Container(
          color: Colors.green,
        ),
        Container(
          color: Colors.blue,
        ),
        Library()
      ]),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(color: Color(0xFF282828)),
        height: 50,
        child: TabBar(
          tabs: [
            Tab(
              child: Icon(Icons.home_outlined),
            ),
            Tab(
              child: Icon(Icons.explore_outlined),
            ),
            Tab(
              child: Icon(
                Icons.add_circle_outline,
                size: 40,
              ),
            ),
            Tab(
              child: Icon(Icons.subscriptions_outlined),
            ),
            Tab(
              child: Icon(Icons.video_library_outlined),
            )
          ],
          controller: _tabController,
          indicatorColor: Colors.transparent,
        ),
      ),
    );
  }
}
