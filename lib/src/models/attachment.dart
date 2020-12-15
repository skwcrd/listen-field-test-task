part of app.model;

class AttachmentModel extends Model {
  final String _pictures;
  final LocationModel _location;

  AttachmentModel({
    String pictures,
    LocationModel location,
  }) :  _pictures = pictures,
        _location = location;

  factory AttachmentModel.fromMap(Map<String, dynamic> data) =>
      AttachmentModel(
        pictures: data['pictures'],
        location: LocationModel.fromMap(
          data['location']));

  String get pictures => _pictures;
  LocationModel get location => _location;

  @override
  Map<String, dynamic> toMap() =>
      <String, dynamic>{
        'pictures': _pictures,
        'location': _location.toMap(),
      };

  @override
  String toString() {
    return '[$runtimeType] { pictures: $_pictures, location: $_location }';
  }
}