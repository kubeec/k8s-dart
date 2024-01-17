//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'v1_preconditions.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1Preconditions {
  /// Returns a new [V1Preconditions] instance.
  V1Preconditions({

     this.resourceVersion,

     this.uid,
  });

      /// Specifies the target ResourceVersion
  @JsonKey(
    
    name: r'resourceVersion',
    required: false,
    includeIfNull: false
  )


  final String? resourceVersion;



      /// Specifies the target UID.
  @JsonKey(
    
    name: r'uid',
    required: false,
    includeIfNull: false
  )


  final String? uid;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1Preconditions &&
     other.resourceVersion == resourceVersion &&
     other.uid == uid;

  @override
  int get hashCode =>
    resourceVersion.hashCode +
    uid.hashCode;

  factory V1Preconditions.fromJson(Map<String, dynamic> json) => _$V1PreconditionsFromJson(json);

  Map<String, dynamic> toJson() => _$V1PreconditionsToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

