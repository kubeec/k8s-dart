//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/v2_external_metric_status.dart';
import 'package:k8s/src/model/v2_container_resource_metric_status.dart';
import 'package:k8s/src/model/v2_object_metric_status.dart';
import 'package:k8s/src/model/v2_resource_metric_status.dart';
import 'package:k8s/src/model/v2_pods_metric_status.dart';
import 'package:json_annotation/json_annotation.dart';

part 'v2_metric_status.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V2MetricStatus {
  /// Returns a new [V2MetricStatus] instance.
  V2MetricStatus({

     this.containerResource,

     this.external_,

     this.object,

     this.pods,

     this.resource,

    required  this.type,
  });

  @JsonKey(
    
    name: r'containerResource',
    required: false,
    includeIfNull: false
  )


  final V2ContainerResourceMetricStatus? containerResource;



  @JsonKey(
    
    name: r'external',
    required: false,
    includeIfNull: false
  )


  final V2ExternalMetricStatus? external_;



  @JsonKey(
    
    name: r'object',
    required: false,
    includeIfNull: false
  )


  final V2ObjectMetricStatus? object;



  @JsonKey(
    
    name: r'pods',
    required: false,
    includeIfNull: false
  )


  final V2PodsMetricStatus? pods;



  @JsonKey(
    
    name: r'resource',
    required: false,
    includeIfNull: false
  )


  final V2ResourceMetricStatus? resource;



      /// type is the type of metric source.  It will be one of \"ContainerResource\", \"External\", \"Object\", \"Pods\" or \"Resource\", each corresponds to a matching field in the object. Note: \"ContainerResource\" type is available on when the feature-gate HPAContainerMetrics is enabled
  @JsonKey(
    
    name: r'type',
    required: true,
    includeIfNull: false
  )


  final String type;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V2MetricStatus &&
     other.containerResource == containerResource &&
     other.external_ == external_ &&
     other.object == object &&
     other.pods == pods &&
     other.resource == resource &&
     other.type == type;

  @override
  int get hashCode =>
    containerResource.hashCode +
    external_.hashCode +
    object.hashCode +
    pods.hashCode +
    resource.hashCode +
    type.hashCode;

  factory V2MetricStatus.fromJson(Map<String, dynamic> json) => _$V2MetricStatusFromJson(json);

  Map<String, dynamic> toJson() => _$V2MetricStatusToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

