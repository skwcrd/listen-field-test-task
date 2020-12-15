part of app.model;

class UserModel extends Model {
  final String _id;
  final String _name;
  final String _familyName;
  final String _profilePicture;

  UserModel({
    @required String id,
    @required String name,
    String familyName,
    String profilePicture,
  }) :  _id = id ?? 'unknown',
        _name = name ?? 'unknown',
        _familyName = familyName,
        _profilePicture = profilePicture;

  factory UserModel.fromMap(Map<String, dynamic> data) =>
      UserModel(
        id: data['_id'],
        name: data['name'],
        familyName: data['family_name'],
        profilePicture: data['profile_picture']);

  String get id => _id;
  String get name => _name;
  String get familyName => _familyName;
  String get profilePicture => _profilePicture;

  @override
  Map<String, dynamic> toMap() =>
      <String, dynamic>{
        '_id': _id,
        'name': _name,
        'family_name': _familyName,
        'profile_picture': _profilePicture,
      };

  @override
  String toString() {
    return '[$runtimeType] { id: $_id, name: $_name, family_name: $_familyName, profile_picture: $_profilePicture }';
  }
}