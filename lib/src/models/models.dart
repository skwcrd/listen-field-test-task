library app.model;

part 'user.dart';
part 'post.dart';
part 'coord.dart';
part 'comment.dart';
part 'location.dart';
part 'attachment.dart';

abstract class Model {
  Map<String, dynamic> toMap();
}