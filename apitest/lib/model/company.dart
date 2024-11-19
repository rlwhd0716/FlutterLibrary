import 'package:json_annotation/json_annotation.dart';

part 'company.g.dart';

@JsonSerializable(checked: true, createFactory: true)
class Company {
  Company({
    this.name,
    this.catchPhrase,
    this.bs,
  });

  @JsonKey(name: 'name')
  String? name;
  @JsonKey(name: 'catchPhrase')
  String? catchPhrase;
  @JsonKey(name: 'bs')
  String? bs;

  factory Company.fromJson(Map<String, dynamic> json) =>
      _$CompanyFromJson(json);
  Map<String, dynamic> toJson() => _$CompanyToJson(this);
}
