part of app.model;

class CommentModel extends Model {
  final String _id;
  final String _text;
  final String _status;
  final String _type;
  final UserModel _addedBy;

  CommentModel({
    @required String id,
    @required String text,
    @required String status,
    String type,
    UserModel addedBy,
  }) :  _id = id ?? 'unknown',
        _text = text ?? 'unknown',
        _status = status ?? 'unknown',
        _type = type,
        _addedBy = addedBy;

  factory CommentModel.fromMap(Map<String, dynamic> data) =>
      CommentModel(
        id: data['_id'],
        text: data['text'],
        status: data['status'],
        type: data['type'],
        addedBy: UserModel.fromMap(
          data['added_by']));

  String get id => _id;
  String get text => _text;
  String get status => _status;
  String get type => _type;
  UserModel get addedBy => _addedBy;

  @override
  Map<String, dynamic> toMap() =>
      <String, dynamic>{
        '_id': _id,
        'text': _text,
        'status': _status,
        'type': _type,
        'added_by': _addedBy.toMap(),
      };

  @override
  String toString() {
    return '[$runtimeType] { id: $_id, text: $_text, status: $_status, type: $_type, added_by: $_addedBy }';
  }
}