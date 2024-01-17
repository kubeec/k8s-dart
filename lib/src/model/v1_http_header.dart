//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'v1_http_header.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1HTTPHeader {
  /// Returns a new [V1HTTPHeader] instance.
  V1HTTPHeader({

    required  this.name,

    required  this.value,
  });

      /// The header field name. This will be canonicalized upon output, so case-variant names will be understood as the same header.
  @JsonKey(
    
    name: r'name',
    required: true,
    includeIfNull: false
  )


  final String name;



      /// The header field value
  @JsonKey(
    
    name: r'value',
    required: true,
    includeIfNull: false
  )


  final String value;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1HTTPHeader &&
     other.name == name &&
     other.value == value;

  @override
  int get hashCode =>
    name.hashCode +
    value.hashCode;

  factory V1HTTPHeader.fromJson(Map<String, dynamic> json) => _$V1HTTPHeaderFromJson(json);

  Map<String, dynamic> toJson() => _$V1HTTPHeaderToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

