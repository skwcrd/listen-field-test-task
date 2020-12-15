part of app.model;

class PostModel extends Model {
  final PostDataModel _post;
  final List<CommentModel> _comments;

  PostModel({
    @required PostDataModel post,
    List<CommentModel> comments,
  }) :  _post = post ?? new PostDataModel(
          id: '000',
          text: 'test post',
          status: 'test',
        ),
        _comments = comments ?? new List<CommentModel>();

  factory PostModel.fromMap(Map<String, dynamic> data) =>
      PostModel(
        post: PostDataModel.fromMap(
          data['post']),
        comments: [
          CommentModel.fromMap(
            data['comments']),
        ]);

  PostDataModel get post => _post;
  List<CommentModel> get comments => _comments;

  @override
  Map<String, dynamic> toMap() =>
      <String, dynamic>{
        'post': _post.toMap(),
        'comments': _comments.map(
          (c) => c.toMap()).toList(),
      };

  @override
  String toString() {
    return '[$runtimeType] { post: $_post, comments: $_comments }';
  }
}

class PostDataModel extends Model {
  final String _id;
  final String _text;
  final String _status;
  final String _type;
  final UserModel _addedBy;
  final AttachmentModel _attachment;

  PostDataModel({
    @required String id,
    @required String text,
    @required String status,
    String type,
    UserModel addedBy,
    AttachmentModel attachment,
  }) :  _id = id ?? 'unknown',
        _text = text ?? 'unknown',
        _status = status ?? 'unknown',
        _type = type,
        _addedBy = addedBy,
        _attachment = attachment;

  factory PostDataModel.fromMap(Map<String, dynamic> data) =>
      PostDataModel(
        id: data['_id'],
        text: data['text'],
        status: data['status'],
        type: data['type'],
        addedBy: UserModel.fromMap(
          data['added_by']),
        attachment: AttachmentModel.fromMap(
          data['attachment']));

  String get id => _id;
  String get text => _text;
  String get status => _status;
  String get type => _type;
  UserModel get addedBy => _addedBy;
  AttachmentModel get attachment => _attachment;

  @override
  Map<String, dynamic> toMap() =>
      <String, dynamic>{
        '_id': _id,
        'text': _text,
        'status': _status,
        'type': _type,
        'added_by': _addedBy.toMap(),
        'attachment': _attachment.toMap(),
      };

  @override
  String toString() {
    return '[$runtimeType] { id: $_id, text: $_text, status: $_status, type: $_type, added_by: $_addedBy, attachment: $_attachment }';
  }
}