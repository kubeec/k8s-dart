//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/v1_status_cause.dart';
import 'package:json_annotation/json_annotation.dart';

part 'v1_status_details.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1StatusDetails {
  /// Returns a new [V1StatusDetails] instance.
  V1StatusDetails({

     this.causes,

     this.group,

     this.kind,

     this.name,

     this.retryAfterSeconds,

     this.uid,
  });

      /// The Causes array includes more details associated with the StatusReason failure. Not all StatusReasons may provide detailed causes.
  @JsonKey(
    
    name: r'causes',
    required: false,
    includeIfNull: false
  )


  final List<V1StatusCause>? causes;



      /// The group attribute of the resource associated with the status StatusReason.
  @JsonKey(
    
    name: r'group',
    required: false,
    includeIfNull: false
  )


  final String? group;



      /// The kind attribute of the resource associated with the status StatusReason. On some operations may differ from the requested resource Kind. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  @JsonKey(
    
    name: r'kind',
    required: false,
    includeIfNull: false
  )


  final String? kind;



      /// The name attribute of the resource associated with the status StatusReason (when there is a single name which can be described).
  @JsonKey(
    
    name: r'name',
    required: false,
    includeIfNull: false
  )


  final String? name;



      /// If specified, the time in seconds before the operation should be retried. Some errors may indicate the client must take an alternate action - for those errors this field may indicate how long to wait before taking the alternate action.
  @JsonKey(
    
    name: r'retryAfterSeconds',
    required: false,
    includeIfNull: false
  )


  final int? retryAfterSeconds;



      /// UID of the resource. (when there is a single resource which can be described). More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names#uids
  @JsonKey(
    
    name: r'uid',
    required: false,
    includeIfNull: false
  )


  final String? uid;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1StatusDetails &&
     other.causes == causes &&
     other.group == group &&
     other.kind == kind &&
     other.name == name &&
     other.retryAfterSeconds == retryAfterSeconds &&
     other.uid == uid;

  @override
  int get hashCode =>
    causes.hashCode +
    group.hashCode +
    kind.hashCode +
    name.hashCode +
    retryAfterSeconds.hashCode +
    uid.hashCode;

  factory V1StatusDetails.fromJson(Map<String, dynamic> json) => _$V1StatusDetailsFromJson(json);

  Map<String, dynamic> toJson() => _$V1StatusDetailsToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

