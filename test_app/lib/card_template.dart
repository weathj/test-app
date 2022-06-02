import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:test_app/models/post.dart';

class CardTemplate extends StatelessWidget {
  CardTemplate(
      {required this.post, required this.name, required this.username, required this.profile_pic});

  final Post post;
  final String name;
  final String username;
  final String profile_pic;

  @override
  Widget build(BuildContext context) {
    var CardBannerRight = Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        CircleAvatar(
            radius: 30.0,
            backgroundImage: NetworkImage(profile_pic)),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            username,
            style: const TextStyle(color: Colors.white),
            textAlign: TextAlign.left,
          ),
        ),
      ],
    );
    return Card(
      color: Colors.black,
      child: Column(children: [
        Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                CardBannerRight,
                Icon(Icons.more_horiz_outlined, color: Colors.white)
              ],
            )),
        Image.asset(post.image),//Image.asset('assets/images/photo-1615751072497-5f5169febe17.jpeg'),
        SizedBox(
          height: 2.0,
        ),
        Container(
            color: Colors.black54,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child:
                      Icon(Icons.favorite_border_outlined, color: Colors.white),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child:
                      Icon(Icons.insert_comment_outlined, color: Colors.white),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(Icons.messenger_outline, color: Colors.white),
                ),
              ]),
            )),
        Container(
          child: Row(
            children: [
              Text(username,
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold)),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text(
                  post.comment,
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
}
