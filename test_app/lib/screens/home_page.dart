import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:test_app/models/users.dart';
import 'package:test_app/card_template.dart';

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
      body: Column(
        children: [
          Container(
            color: Colors.black,
            height: stories_height,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: CircleAvatar(
                        radius: 40.0,
                        backgroundImage: NetworkImage(
                            "https://post.medicalnewstoday.com/wp-content/uploads/sites/3/2020/02/322868_1100-800x825.jpg")),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: CircleAvatar(
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
                    child: CircleAvatar(
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
                    92.0, //92 is height of App Bar
                child: ListView(
                  children: [
                    CardTemplate(name: jake.name, username: jake.username, profile_pic: jake.profile_pic),
                    CardTemplate(name: tom.name, username: tom.username, profile_pic: tom.profile_pic)
                  ],
                ),
              ))
        ],
      ),
    );
  }
}