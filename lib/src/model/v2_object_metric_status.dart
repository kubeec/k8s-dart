//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/v2_cross_version_object_reference.dart';
import 'package:k8s/src/model/v2_metric_identifier.dart';
import 'package:k8s/src/model/v2_metric_value_status.dart';
import 'package:json_annotation/json_annotation.dart';

part 'v2_object_metric_status.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V2ObjectMetricStatus {
  /// Returns a new [V2ObjectMetricStatus] instance.
  V2ObjectMetricStatus({

    required  this.current,

    required  this.describedObject,

    required  this.metric,
  });

  @JsonKey(
    
    name: r'current',
    required: true,
    includeIfNull: false
  )


  final V2MetricValueStatus current;



  @JsonKey(
    
    name: r'describedObject',
    required: true,
    includeIfNull: false
  )


  final V2CrossVersionObjectReference describedObject;



  @JsonKey(
    
    name: r'metric',
    required: true,
    includeIfNull: false
  )


  final V2MetricIdentifier metric;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V2ObjectMetricStatus &&
     other.current == current &&
     other.describedObject == describedObject &&
     other.metric == metric;

  @override
  int get hashCode =>
    current.hashCode +
    describedObject.hashCode +
    metric.hashCode;

  factory V2ObjectMetricStatus.fromJson(Map<String, dynamic> json) => _$V2ObjectMetricStatusFromJson(json);

  Map<String, dynamic> toJson() => _$V2ObjectMetricStatusToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

