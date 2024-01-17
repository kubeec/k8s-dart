//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'v1_for_zone.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1ForZone {
  /// Returns a new [V1ForZone] instance.
  V1ForZone({

    required  this.name,
  });

      /// name represents the name of the zone.
  @JsonKey(
    
    name: r'name',
    required: true,
    includeIfNull: false
  )


  final String name;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1ForZone &&
     other.name == name;

  @override
  int get hashCode =>
    name.hashCode;

  factory V1ForZone.fromJson(Map<String, dynamic> json) => _$V1ForZoneFromJson(json);

  Map<String, dynamic> toJson() => _$V1ForZoneToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

