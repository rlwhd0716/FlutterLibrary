import 'package:json_annotation/json_annotation.dart';

part 'geo.g.dart';

@JsonSerializable(checked: true, createFactory: true)
class Geo {
  Geo({
    this.lat,
    this.lng,
  });

  @JsonKey(name: 'lat')
  String? lat;
  @JsonKey(name: 'lng')
  String? lng;

  factory Geo.fromJson(Map<String, dynamic> json) => _$GeoFromJson(json);
  Map<String, dynamic> toJson() => _$GeoToJson(this);
}
