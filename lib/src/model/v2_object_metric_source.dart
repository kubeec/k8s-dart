//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/v2_cross_version_object_reference.dart';
import 'package:k8s/src/model/v2_metric_identifier.dart';
import 'package:k8s/src/model/v2_metric_target.dart';
import 'package:json_annotation/json_annotation.dart';

part 'v2_object_metric_source.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V2ObjectMetricSource {
  /// Returns a new [V2ObjectMetricSource] instance.
  V2ObjectMetricSource({

    required  this.describedObject,

    required  this.metric,

    required  this.target,
  });

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



  @JsonKey(
    
    name: r'target',
    required: true,
    includeIfNull: false
  )


  final V2MetricTarget target;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V2ObjectMetricSource &&
     other.describedObject == describedObject &&
     other.metric == metric &&
     other.target == target;

  @override
  int get hashCode =>
    describedObject.hashCode +
    metric.hashCode +
    target.hashCode;

  factory V2ObjectMetricSource.fromJson(Map<String, dynamic> json) => _$V2ObjectMetricSourceFromJson(json);

  Map<String, dynamic> toJson() => _$V2ObjectMetricSourceToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

