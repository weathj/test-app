import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:test_app/models/users.dart';

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
                    CardTemplate(),
                    CardTemplate(),
                    CardTemplate(),
                    CardTemplate(),
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
Widget CardTemplate() {
  var CardBannerRight = new Row(
    mainAxisAlignment: MainAxisAlignment.end,
    children: <Widget>[
      const CircleAvatar(
          radius: 30.0,
          backgroundImage: NetworkImage(
              "https://post.medicalnewstoday.com/wp-content/uploads/sites/3/2020/02/322868_1100-800x825.jpg")),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          "This is a profile",
          style: TextStyle(color: Colors.white),
          textAlign: TextAlign.left,
        ),
      ),
    ],
  );

  var CardBanner = new Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    crossAxisAlignment: CrossAxisAlignment.center,
    mainAxisSize: MainAxisSize.max,
    children: <Widget>[
      CardBannerRight,
      Icon(Icons.more_horiz_outlined, color: Colors.white)
    ],
  );

  return Card(
    color: Colors.black,
    child: Column(children: [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: CardBanner,
      ),
      Image.asset('assets/images/photo-1615751072497-5f5169febe17.jpeg'),
      SizedBox(
        height: 2.0,
      ),
      Container(
          color: Colors.black54,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(children: [
              Padding(
                padding:
                    const EdgeInsets.all(8.0),
                child:
                    Icon(Icons.favorite_border_outlined, color: Colors.white),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.insert_comment_outlined, color: Colors.white),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.messenger_outline, color: Colors.white),
              ),
            ]),
          )
        ),
        Container(
          child: Row(
            children: [
              Text(
                jake.username,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold
                )
                ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text(
                  "Look at this happy dog",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                  ),
              )
            ],
          ),
        )
    ]),
  );
}

