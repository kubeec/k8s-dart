//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'v1_secret_key_selector.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1SecretKeySelector {
  /// Returns a new [V1SecretKeySelector] instance.
  V1SecretKeySelector({

    required  this.key,

     this.name,

     this.optional,
  });

      /// The key of the secret to select from.  Must be a valid secret key.
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



      /// Specify whether the Secret or its key must be defined
  @JsonKey(
    
    name: r'optional',
    required: false,
    includeIfNull: false
  )


  final bool? optional;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1SecretKeySelector &&
     other.key == key &&
     other.name == name &&
     other.optional == optional;

  @override
  int get hashCode =>
    key.hashCode +
    name.hashCode +
    optional.hashCode;

  factory V1SecretKeySelector.fromJson(Map<String, dynamic> json) => _$V1SecretKeySelectorFromJson(json);

  Map<String, dynamic> toJson() => _$V1SecretKeySelectorToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

