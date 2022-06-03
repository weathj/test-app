import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:test_app/models/users.dart';
import 'package:test_app/card_template.dart';
import 'package:test_app/models/post.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double stories_height = 100.0;
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        toolbarHeight: 45.0,
        backgroundColor: Colors.black,
        leading:
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset('assets/images/instagram.png'),
          ),
        actions: <Widget>[
          IconButton(
              onPressed: (){}, 
              icon: Icon(Icons.add_box_outlined)),
          IconButton(
              onPressed: (){}, 
              icon: Icon(Icons.favorite_border_outlined)),
          IconButton(
              onPressed: (){}, 
              icon: Icon(Icons.messenger_outline_rounded))
          ]
        ),
      body: Column(
        children: [
          Container(
            color: Colors.black,
            height: stories_height,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children:  <Widget>[
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: CircleAvatar(
                        radius: 40.0,
                        backgroundImage: NetworkImage(
                            "https://post.medicalnewstoday.com/wp-content/uploads/sites/3/2020/02/322868_1100-800x825.jpg")),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: const CircleAvatar(
                        radius: 40.0,
                        backgroundImage: NetworkImage(
                            "https://kb.rspca.org.au/wp-content/uploads/2018/11/golder-retriever-puppy.jpeg")),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: CircleAvatar(
                        radius: 40.0,
                        backgroundImage: NetworkImage(
                            "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/bernese-mountain-dog-royalty-free-image-1581013857.jpg")),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: CircleAvatar(
                        radius: 40.0,
                        backgroundImage: NetworkImage(
                            "https://www.sciencefriday.com/wp-content/uploads/2022/04/pitbull-illustration.jpg")),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: const CircleAvatar(
                        radius: 40.0,
                        backgroundImage: NetworkImage(
                            "https://www.thesprucepets.com/thmb/3AppeNqnPUIjmcH-eyLCdH1PvF0=/1500x1000/filters:fill(auto,1)/top-friendliest-dog-breeds-4691511_hero-5c6a918dcf56409c888d78b0fac82d18.jpg")),
                  ),
                ],
              ),
            ),
          ),
          SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Container(
                color: Colors.black,
                height: MediaQuery.of(context).size.height -
                    stories_height -
                    82.0 -  //82 is height of App Bar
                    100.0, // 100 is height of bottom nav bar
                child: ListView(
                  children: [
                    CardTemplate(post: post1,name: jake.name, username: jake.username, profile_pic: jake.profile_pic),
                    CardTemplate(post: post3,name: mason.name, username: mason.username, profile_pic: mason.profile_pic),
                    CardTemplate(post: post2, name: raeann.name, username: raeann.username, profile_pic: raeann.profile_pic)
                  ],
                ),
              ))
        ],
      ),
    );
  }
}