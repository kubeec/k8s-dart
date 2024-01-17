//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/v2_metric_target.dart';
import 'package:json_annotation/json_annotation.dart';

part 'v2_container_resource_metric_source.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V2ContainerResourceMetricSource {
  /// Returns a new [V2ContainerResourceMetricSource] instance.
  V2ContainerResourceMetricSource({

    required  this.container,

    required  this.name,

    required  this.target,
  });

      /// container is the name of the container in the pods of the scaling target
  @JsonKey(
    
    name: r'container',
    required: true,
    includeIfNull: false
  )


  final String container;



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
  bool operator ==(Object other) => identical(this, other) || other is V2ContainerResourceMetricSource &&
     other.container == container &&
     other.name == name &&
     other.target == target;

  @override
  int get hashCode =>
    container.hashCode +
    name.hashCode +
    target.hashCode;

  factory V2ContainerResourceMetricSource.fromJson(Map<String, dynamic> json) => _$V2ContainerResourceMetricSourceFromJson(json);

  Map<String, dynamic> toJson() => _$V2ContainerResourceMetricSourceToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

