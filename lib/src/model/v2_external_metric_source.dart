//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/v2_metric_identifier.dart';
import 'package:k8s/src/model/v2_metric_target.dart';
import 'package:json_annotation/json_annotation.dart';

part 'v2_external_metric_source.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V2ExternalMetricSource {
  /// Returns a new [V2ExternalMetricSource] instance.
  V2ExternalMetricSource({

    required  this.metric,

    required  this.target,
  });

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
  bool operator ==(Object other) => identical(this, other) || other is V2ExternalMetricSource &&
     other.metric == metric &&
     other.target == target;

  @override
  int get hashCode =>
    metric.hashCode +
    target.hashCode;

  factory V2ExternalMetricSource.fromJson(Map<String, dynamic> json) => _$V2ExternalMetricSourceFromJson(json);

  Map<String, dynamic> toJson() => _$V2ExternalMetricSourceToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

