part of app.model;

class AttachmentModel extends Model {
  final List<String> _pictures;
  final LocationModel _location;

  AttachmentModel({
    @required List<String> pictures,
    LocationModel location,
  }) :  _pictures = pictures ?? new List<String>(),
        _location = location;

  factory AttachmentModel.fromMap(Map<String, dynamic> data) =>
      AttachmentModel(
        pictures: data['pictures'] as List,
        location: LocationModel.fromMap(
          data['location']));

  List<String> get pictures => _pictures;
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