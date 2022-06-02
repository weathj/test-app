import 'users.dart';
import 'package:test_app/card_template.dart';

class Post{
  final String image;
  final User user;
  final String comment;


  Post(this.user, this.image, this.comment);
}

Post post1 = Post(jake, "assets/images/photo-1615751072497-5f5169febe17.jpeg", "Look how happy we are!!");
Post post2 = Post(raeann, "assets/images/doggiepic.jpeg", "Look at this doggo run");
Post post3 = Post(mason, "assets/images/cutedoggo.jpeg", "I have a dog now!");