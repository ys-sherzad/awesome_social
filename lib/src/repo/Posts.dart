import 'Post.dart';
import 'User.dart';
import 'Video.dart';

class Posts {
  static List<Post> posts = [
    Post(
      video: 'assets/videos/video1.mp4',
      image: 'assets/images/9th_may_poster.jpg',
      owner: User(
          name: 'James',
          country: 'Canada',
          profileImg: 'assets/images/user1.png'),
      commentsCount: 234,
      description: 'Some long ass description',
      likesCount: 543,
      location: 'New York',
      title: 'Behind the scenes',
      userCollection: [Video(video: '')],
      viewsCount: 4032,
    ),
    Post(
      video: 'assets/videos/video2.mp4',
      image: 'assets/images/9th_may_poster.jpg',
      owner: User(
          name: 'James',
          country: 'Canada',
          profileImg: 'assets/images/user2.png'),
      commentsCount: 234,
      description: 'Some long ass description',
      likesCount: 543,
      location: 'Paris',
      title: 'Behind the scenes',
      userCollection: [Video(video: '')],
      viewsCount: 4032,
    ),
    Post(
      video: 'assets/videos/video3.mp4',
      image: 'assets/images/9th_may_poster.jpg',
      owner: User(
          name: 'James',
          country: 'Canada',
          profileImg: 'assets/images/user3.png'),
      commentsCount: 234,
      description: 'Some long ass description',
      likesCount: 543,
      location: 'Kyoto',
      title: 'Behind the scenes',
      userCollection: [Video(video: '')],
      viewsCount: 4032,
    ),
    Post(
      video: 'assets/videos/video4.mp4',
      image: 'assets/images/9th_may_poster.jpg',
      owner: User(
          name: 'James',
          country: 'Canada',
          profileImg: 'assets/images/user4.png'),
      commentsCount: 234,
      description: 'Some long ass description',
      likesCount: 543,
      location: 'Sydney',
      title: 'Behind the scenes',
      userCollection: [Video(video: '')],
      viewsCount: 4032,
    ),
    Post(
      video: 'assets/videos/video5.mp4',
      image: 'assets/images/9th_may_poster.jpg',
      owner: User(
          name: 'James',
          country: 'Canada',
          profileImg: 'assets/images/user5.png'),
      commentsCount: 234,
      description: 'Some long ass description',
      likesCount: 543,
      location: 'Cape Town',
      title: 'Behind the scenes',
      userCollection: [Video(video: '')],
      viewsCount: 4032,
    ),
  ];
}
