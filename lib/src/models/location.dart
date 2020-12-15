part of app.model;

class LocationModel extends Model {
  final String _text;
  final CoordModel _coords;

  LocationModel({
    String text,
    CoordModel coords,
  }) :  _text = text,
        _coords = coords;

  factory LocationModel.fromMap(Map<String, dynamic> data) =>
      LocationModel(
        text: data['text'],
        coords: CoordModel.fromMap(
          data['coords']));

  String get text => _text;
  CoordModel get coords => _coords;

  @override
  Map<String, dynamic> toMap() =>
      <String, dynamic>{
        'text': _text,
        'coords': _coords.toMap(),
      };

  @override
  String toString() {
    return '[$runtimeType] { text: $_text, coords: $_coords }';
  }
}