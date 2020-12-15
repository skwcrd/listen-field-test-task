library app.model;

import 'package:flutter/foundation.dart'
  show required;

part 'user.dart';
part 'post.dart';
part 'coord.dart';
part 'comment.dart';
part 'location.dart';
part 'attachment.dart';

abstract class Model {
  Map<String, dynamic> toMap();
}