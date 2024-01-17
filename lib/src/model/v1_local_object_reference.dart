//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'v1_local_object_reference.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1LocalObjectReference {
  /// Returns a new [V1LocalObjectReference] instance.
  V1LocalObjectReference({

     this.name,
  });

      /// Name of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names
  @JsonKey(
    
    name: r'name',
    required: false,
    includeIfNull: false
  )


  final String? name;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1LocalObjectReference &&
     other.name == name;

  @override
  int get hashCode =>
    name.hashCode;

  factory V1LocalObjectReference.fromJson(Map<String, dynamic> json) => _$V1LocalObjectReferenceFromJson(json);

  Map<String, dynamic> toJson() => _$V1LocalObjectReferenceToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

