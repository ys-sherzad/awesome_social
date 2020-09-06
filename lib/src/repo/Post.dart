import 'User.dart';
import 'Video.dart';

class Post {
  final String video;
  final String image;
  final int likesCount;
  final int commentsCount;
  final int viewsCount;
  final User owner;
  final String title;
  final String location;
  final String description;
  final List<Video> userCollection;

  Post(
      {this.video,
      this.image,
      this.likesCount,
      this.commentsCount,
      this.viewsCount,
      this.owner,
      this.title,
      this.location,
      this.description,
      this.userCollection});
}
