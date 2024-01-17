//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/v2_metric_identifier.dart';
import 'package:k8s/src/model/v2_metric_value_status.dart';
import 'package:json_annotation/json_annotation.dart';

part 'v2_external_metric_status.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V2ExternalMetricStatus {
  /// Returns a new [V2ExternalMetricStatus] instance.
  V2ExternalMetricStatus({

    required  this.current,

    required  this.metric,
  });

  @JsonKey(
    
    name: r'current',
    required: true,
    includeIfNull: false
  )


  final V2MetricValueStatus current;



  @JsonKey(
    
    name: r'metric',
    required: true,
    includeIfNull: false
  )


  final V2MetricIdentifier metric;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V2ExternalMetricStatus &&
     other.current == current &&
     other.metric == metric;

  @override
  int get hashCode =>
    current.hashCode +
    metric.hashCode;

  factory V2ExternalMetricStatus.fromJson(Map<String, dynamic> json) => _$V2ExternalMetricStatusFromJson(json);

  Map<String, dynamic> toJson() => _$V2ExternalMetricStatusToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

