//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/v2_metric_value_status.dart';
import 'package:json_annotation/json_annotation.dart';

part 'v2_container_resource_metric_status.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V2ContainerResourceMetricStatus {
  /// Returns a new [V2ContainerResourceMetricStatus] instance.
  V2ContainerResourceMetricStatus({

    required  this.container,

    required  this.current,

    required  this.name,
  });

      /// container is the name of the container in the pods of the scaling target
  @JsonKey(
    
    name: r'container',
    required: true,
    includeIfNull: false
  )


  final String container;



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
  bool operator ==(Object other) => identical(this, other) || other is V2ContainerResourceMetricStatus &&
     other.container == container &&
     other.current == current &&
     other.name == name;

  @override
  int get hashCode =>
    container.hashCode +
    current.hashCode +
    name.hashCode;

  factory V2ContainerResourceMetricStatus.fromJson(Map<String, dynamic> json) => _$V2ContainerResourceMetricStatusFromJson(json);

  Map<String, dynamic> toJson() => _$V2ContainerResourceMetricStatusToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

