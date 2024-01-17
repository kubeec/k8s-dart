//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'v1_sysctl.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1Sysctl {
  /// Returns a new [V1Sysctl] instance.
  V1Sysctl({

    required  this.name,

    required  this.value,
  });

      /// Name of a property to set
  @JsonKey(
    
    name: r'name',
    required: true,
    includeIfNull: false
  )


  final String name;



      /// Value of a property to set
  @JsonKey(
    
    name: r'value',
    required: true,
    includeIfNull: false
  )


  final String value;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1Sysctl &&
     other.name == name &&
     other.value == value;

  @override
  int get hashCode =>
    name.hashCode +
    value.hashCode;

  factory V1Sysctl.fromJson(Map<String, dynamic> json) => _$V1SysctlFromJson(json);

  Map<String, dynamic> toJson() => _$V1SysctlToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

