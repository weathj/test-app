import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:test_app/models/users.dart';
import 'package:test_app/card_template.dart';
import 'package:test_app/models/post.dart';

class ProfilePage extends StatefulWidget {
  // const ProfilePage({required this.user});
  // final User user;
  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    double stories_height = 100.0;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
              SizedBox(height: 40),
              ProfileBanner,
              Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:  [
            CircleAvatar(
              radius: 50.0,
              backgroundImage: NetworkImage(jake.profile_pic),
              child: Padding(
                padding: const EdgeInsets.only(left: 70, top: 70),
                child: Icon(Icons.add, color: Colors.blue,),
              ),
              ),
              Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                  children:
                  [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Text("2", style: TextStyle(color: Colors.white)),
                        Text("Posts", style: TextStyle(color: Colors.white)),
                                ]
                          ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Text("273", style: TextStyle(color: Colors.white)),
                        Text("Followers", style: TextStyle(color: Colors.white)),
                                ]
                          ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        Text("27", style: TextStyle(color: Colors.white)),
                        Text("Following", style: TextStyle(color: Colors.white)),
                                ]
                          ),
                  )
                  ]
                          ),
                      ),
                  ]
                ),
              SizedBox(
                height: 90,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Jacob Weathermon", style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.w900)),
                    ),
                    Text("This is my profile, tell me what you would like to know. My name is jake and I developed this applcation for my freinds and I to post images of our favorite dogs", style: TextStyle(color: Colors.white)),
                  ],
                ),
              ),
              Row(
                children: [
                  SizedBox(
                    width: 300.0,
                    child: ElevatedButton( 
                    style: ElevatedButton.styleFrom( primary: Color.fromARGB(206, 44, 43, 43)),
                    onPressed: () {},
                    child: Text("Edit Profile", style: TextStyle(color: Colors.white))
                    ),
                  ),
                Padding(
                  padding: const EdgeInsets.only(left: 40.0),
                  child: SizedBox(
                    child: Icon(Icons.person_add, color: Colors.white)
                  ),
                )
                ],
              ),
              SizedBox(
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: Icon(Icons.apps_rounded, color: Colors.white, size: 30.0),
                    ),
                    Icon(Icons.arrow_forward_ios_rounded, color: Colors.white, size: 30.0, ),
                    Padding(
                      padding: const EdgeInsets.only(right: 30),
                      child: Icon(Icons.menu_book, color: Colors.white, size: 30.0),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 380,
                child: GridView(
                  scrollDirection: Axis.vertical,
                  addRepaintBoundaries: false,
                  padding: const EdgeInsets.all(8.0),
                  shrinkWrap: true ,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                          ),
                  children: [
                    Image.asset('assets/images/saddoggo.jpeg', scale: 1),
                    Image.asset('assets/images/doggierunningthroughgrass.jpeg'),
                    Image.asset('assets/images/photo-1615751072497-5f5169febe17.jpeg'),
                    Image.asset('assets/images/doggierunningthroughgrass.jpeg'),
                    Image.asset('assets/images/saddoggo.jpeg'),
                    Image.asset('assets/images/doggierunningthroughgrass.jpeg'),
                    Image.asset('assets/images/cutedoggo.jpeg'),
                    Image.asset('assets/images/goldenretriver.jpeg'),
                    Image.asset('assets/images/doggiepic.jpeg'),
                    Image.asset('assets/images/cutedoggo.jpeg'),
                    Image.asset('assets/images/goldenretriver.jpeg'),
                    Image.asset('assets/images/doggierunningthroughgrass.jpeg'),
                    Image.asset('assets/images/photo-1615751072497-5f5169febe17.jpeg'),
                    Image.asset('assets/images/goldenretriver.jpeg'),
                    Image.asset('assets/images/doggiepic.jpeg'),
                    Image.asset('assets/images/fluffy kilo.jpeg'),
                    Image.asset('assets/images/photo-1615751072497-5f5169febe17.jpeg'),
                    Image.asset('assets/images/doggierunningthroughgrass.jpeg'),
                    Image.asset('assets/images/saddoggo.jpeg'),
                    Image.asset('assets/images/fluffy kilo.jpeg'),
                    Image.asset('assets/images/doggiepic.jpeg'),
                    Image.asset('assets/images/cutedoggo.jpeg'),
                    Image.asset('assets/images/goldenretriver.jpeg'),
                    Image.asset('assets/images/photo-1615751072497-5f5169febe17.jpeg'),
                    Image.asset('assets/images/doggierunningthroughgrass.jpeg'),
                    Image.asset('assets/images/saddoggo.jpeg'),
                    Image.asset('assets/images/photo-1615751072497-5f5169febe17.jpeg'),
                    Image.asset('assets/images/goldenretriver.jpeg'),
                    Image.asset('assets/images/saddoggo.jpeg'),
                    Image.asset('assets/images/doggiepic.jpeg'),
                    Image.asset('assets/images/photo-1615751072497-5f5169febe17.jpeg'),
                    Image.asset('assets/images/fluffy kilo.jpeg'),
                    Image.asset('assets/images/photo-1615751072497-5f5169febe17.jpeg'),
                    Image.asset('assets/images/doggierunningthroughgrass.jpeg'),
                    Image.asset('assets/images/saddoggo.jpeg'),
                    Image.asset('assets/images/doggierunningthroughgrass.jpeg'),
                    Image.asset('assets/images/doggiepic.jpeg'),
                    Image.asset('assets/images/doggierunningthroughgrass.jpeg'),
                    Image.asset('assets/images/doggierunningthroughgrass.jpeg'),
                    Image.asset('assets/images/doggierunningthroughgrass.jpeg'),
                    Image.asset('assets/images/fluffy kilo.jpeg'),
                    Image.asset('assets/images/photo-1615751072497-5f5169febe17.jpeg'),
                    Image.asset('assets/images/goldenretriver.jpeg'),
                    Image.asset('assets/images/fluffy kilo.jpeg'),
                    Image.asset('assets/images/doggiepic.jpeg'),
                    Image.asset('assets/images/photo-1615751072497-5f5169febe17.jpeg'),
                    Image.asset('assets/images/fluffy kilo.jpeg'),

                  ]
            ),
              )
              ]
            )
      );
  }
}

var ProfileBannerRight = Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 10.0),
                child: Icon(Icons.home, color: Colors.white, size: 30.0),
              ),
              Icon(Icons.menu_book, color: Colors.white, size: 30.0)
          ]
          )
        ),
      ],
    );

var ProfileBanner = Row(
            mainAxisAlignment : MainAxisAlignment.start,
            children: [
            Icon(Icons.lock_outlined, color: Colors.white, size: 30.0),
            Text(
            jake.username,
            style: const TextStyle(color: Colors.white, fontSize: 20.0, fontWeight: FontWeight.bold),
            textAlign: TextAlign.left,
          ),
          SizedBox(width: 125),
          ProfileBannerRight
          ]
        );