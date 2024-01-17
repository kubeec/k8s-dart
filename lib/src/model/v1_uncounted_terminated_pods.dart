//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'v1_uncounted_terminated_pods.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1UncountedTerminatedPods {
  /// Returns a new [V1UncountedTerminatedPods] instance.
  V1UncountedTerminatedPods({

     this.failed,

     this.succeeded,
  });

      /// failed holds UIDs of failed Pods.
  @JsonKey(
    
    name: r'failed',
    required: false,
    includeIfNull: false
  )


  final List<String>? failed;



      /// succeeded holds UIDs of succeeded Pods.
  @JsonKey(
    
    name: r'succeeded',
    required: false,
    includeIfNull: false
  )


  final List<String>? succeeded;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1UncountedTerminatedPods &&
     other.failed == failed &&
     other.succeeded == succeeded;

  @override
  int get hashCode =>
    failed.hashCode +
    succeeded.hashCode;

  factory V1UncountedTerminatedPods.fromJson(Map<String, dynamic> json) => _$V1UncountedTerminatedPodsFromJson(json);

  Map<String, dynamic> toJson() => _$V1UncountedTerminatedPodsToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

