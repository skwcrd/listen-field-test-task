part of app.model;

class CoordModel extends Model {
  final String _type;
  final String _coordinates;

  CoordModel({
    @required String type,
    @required String coordinates,
  }) :  _type = type ?? 'unknown',
        _coordinates = coordinates ?? 'unknown';

  factory CoordModel.fromMap(Map<String, dynamic> data) =>
      CoordModel(
        type: data['type'],
        coordinates: data['coordinates']);

  String get type => _type;
  String get coordinates => _coordinates;

  @override
  Map<String, dynamic> toMap() =>
      <String, dynamic>{
        'type': _type,
        'coordinates': _coordinates,
      };

  @override
  String toString() {
    return '[$runtimeType] { type: $_type, coordinates: $_coordinates }';
  }
}