//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'v1_non_resource_attributes.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1NonResourceAttributes {
  /// Returns a new [V1NonResourceAttributes] instance.
  V1NonResourceAttributes({

     this.path,

     this.verb,
  });

      /// Path is the URL path of the request
  @JsonKey(
    
    name: r'path',
    required: false,
    includeIfNull: false
  )


  final String? path;



      /// Verb is the standard HTTP verb
  @JsonKey(
    
    name: r'verb',
    required: false,
    includeIfNull: false
  )


  final String? verb;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1NonResourceAttributes &&
     other.path == path &&
     other.verb == verb;

  @override
  int get hashCode =>
    path.hashCode +
    verb.hashCode;

  factory V1NonResourceAttributes.fromJson(Map<String, dynamic> json) => _$V1NonResourceAttributesFromJson(json);

  Map<String, dynamic> toJson() => _$V1NonResourceAttributesToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

