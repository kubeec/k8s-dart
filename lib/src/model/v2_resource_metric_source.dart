//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/v2_metric_target.dart';
import 'package:json_annotation/json_annotation.dart';

part 'v2_resource_metric_source.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V2ResourceMetricSource {
  /// Returns a new [V2ResourceMetricSource] instance.
  V2ResourceMetricSource({

    required  this.name,

    required  this.target,
  });

      /// name is the name of the resource in question.
  @JsonKey(
    
    name: r'name',
    required: true,
    includeIfNull: false
  )


  final String name;



  @JsonKey(
    
    name: r'target',
    required: true,
    includeIfNull: false
  )


  final V2MetricTarget target;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V2ResourceMetricSource &&
     other.name == name &&
     other.target == target;

  @override
  int get hashCode =>
    name.hashCode +
    target.hashCode;

  factory V2ResourceMetricSource.fromJson(Map<String, dynamic> json) => _$V2ResourceMetricSourceFromJson(json);

  Map<String, dynamic> toJson() => _$V2ResourceMetricSourceToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

