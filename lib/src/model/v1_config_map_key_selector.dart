//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'v1_config_map_key_selector.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1ConfigMapKeySelector {
  /// Returns a new [V1ConfigMapKeySelector] instance.
  V1ConfigMapKeySelector({

    required  this.key,

     this.name,

     this.optional,
  });

      /// The key to select.
  @JsonKey(
    
    name: r'key',
    required: true,
    includeIfNull: false
  )


  final String key;



      /// Name of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names
  @JsonKey(
    
    name: r'name',
    required: false,
    includeIfNull: false
  )


  final String? name;



      /// Specify whether the ConfigMap or its key must be defined
  @JsonKey(
    
    name: r'optional',
    required: false,
    includeIfNull: false
  )


  final bool? optional;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1ConfigMapKeySelector &&
     other.key == key &&
     other.name == name &&
     other.optional == optional;

  @override
  int get hashCode =>
    key.hashCode +
    name.hashCode +
    optional.hashCode;

  factory V1ConfigMapKeySelector.fromJson(Map<String, dynamic> json) => _$V1ConfigMapKeySelectorFromJson(json);

  Map<String, dynamic> toJson() => _$V1ConfigMapKeySelectorToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

