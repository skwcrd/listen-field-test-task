part of app.model;

class PostModel extends Model {
  final String _id;
  final String _text;
  final String _status;
  final String _type;
  final UserModel _addedBy;
  final AttachmentModel _attachment;

  PostModel({
    String id,
    String text,
    String status,
    String type,
    UserModel addedBy,
    AttachmentModel attachment,
  }) :  _id = id,
        _text = text,
        _status = status,
        _type = type,
        _addedBy = addedBy,
        _attachment = attachment;

  factory PostModel.fromMap(Map<String, dynamic> data) =>
      PostModel(
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