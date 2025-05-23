import 'package:flutter/material.dart';
import 'package:iamsazid/views/home_page.dart';
import 'package:iamsazid/views/profile_page.dart';
import 'package:iamsazid/views/ui_clone_page.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Flutter Portfolio",
            style: TextStyle(fontStyle: FontStyle.italic),
          ),
          centerTitle: true,
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.person), text: "Profile"),
              Tab(icon: Icon(Icons.home), text: "Home"),
              Tab(icon: Icon(Icons.copyright), text: "Clone Projects"),
            ],
          ),
        ),
        body: TabBarView(children: [ProfilePage(), HomePage(), UiClonePage()]),
      ),
    );
  }
}
