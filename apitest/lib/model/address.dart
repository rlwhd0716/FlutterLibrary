import 'package:json_annotation/json_annotation.dart';

import 'geo.dart';

part 'address.g.dart';

@JsonSerializable(checked: true, createFactory: true)
class Address {
  Address({
    this.street,
    this.suite,
    this.city,
    this.zipcode,
    this.geo,
  });

  @JsonKey(name: 'street')
  String? street;
  @JsonKey(name: 'suite')
  String? suite;
  @JsonKey(name: 'city')
  String? city;
  @JsonKey(name: 'zipcode')
  String? zipcode;
  @JsonKey(name: 'geo')
  Geo? geo;

  factory Address.fromJson(Map<String, dynamic> json) =>
      _$AddressFromJson(json);
  Map<String, dynamic> toJson() => _$AddressToJson(this);
}
