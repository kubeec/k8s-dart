//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/v2_metric_value_status.dart';
import 'package:json_annotation/json_annotation.dart';

part 'v2_resource_metric_status.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V2ResourceMetricStatus {
  /// Returns a new [V2ResourceMetricStatus] instance.
  V2ResourceMetricStatus({

    required  this.current,

    required  this.name,
  });

  @JsonKey(
    
    name: r'current',
    required: true,
    includeIfNull: false
  )


  final V2MetricValueStatus current;



      /// name is the name of the resource in question.
  @JsonKey(
    
    name: r'name',
    required: true,
    includeIfNull: false
  )


  final String name;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V2ResourceMetricStatus &&
     other.current == current &&
     other.name == name;

  @override
  int get hashCode =>
    current.hashCode +
    name.hashCode;

  factory V2ResourceMetricStatus.fromJson(Map<String, dynamic> json) => _$V2ResourceMetricStatusFromJson(json);

  Map<String, dynamic> toJson() => _$V2ResourceMetricStatusToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

