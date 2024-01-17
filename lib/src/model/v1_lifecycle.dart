//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/v1_lifecycle_handler.dart';
import 'package:json_annotation/json_annotation.dart';

part 'v1_lifecycle.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1Lifecycle {
  /// Returns a new [V1Lifecycle] instance.
  V1Lifecycle({

     this.postStart,

     this.preStop,
  });

  @JsonKey(
    
    name: r'postStart',
    required: false,
    includeIfNull: false
  )


  final V1LifecycleHandler? postStart;



  @JsonKey(
    
    name: r'preStop',
    required: false,
    includeIfNull: false
  )


  final V1LifecycleHandler? preStop;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1Lifecycle &&
     other.postStart == postStart &&
     other.preStop == preStop;

  @override
  int get hashCode =>
    postStart.hashCode +
    preStop.hashCode;

  factory V1Lifecycle.fromJson(Map<String, dynamic> json) => _$V1LifecycleFromJson(json);

  Map<String, dynamic> toJson() => _$V1LifecycleToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

