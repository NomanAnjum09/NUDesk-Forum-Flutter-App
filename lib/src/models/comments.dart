import 'dart:ffi';

class Comment {
  String userName;
  DateTime repliedOn;
  String text;
  int numberOfLikes;
  String postId;

  Comment(
      {this.numberOfLikes,
      this.postId,
      this.repliedOn,
      this.text,
      this.userName});
}
