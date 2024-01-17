//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'v1_custom_resource_subresource_scale.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1CustomResourceSubresourceScale {
  /// Returns a new [V1CustomResourceSubresourceScale] instance.
  V1CustomResourceSubresourceScale({

     this.labelSelectorPath,

    required  this.specReplicasPath,

    required  this.statusReplicasPath,
  });

      /// labelSelectorPath defines the JSON path inside of a custom resource that corresponds to Scale `status.selector`. Only JSON paths without the array notation are allowed. Must be a JSON Path under `.status` or `.spec`. Must be set to work with HorizontalPodAutoscaler. The field pointed by this JSON path must be a string field (not a complex selector struct) which contains a serialized label selector in string form. More info: https://kubernetes.io/docs/tasks/access-kubernetes-api/custom-resources/custom-resource-definitions#scale-subresource If there is no value under the given path in the custom resource, the `status.selector` value in the `/scale` subresource will default to the empty string.
  @JsonKey(
    
    name: r'labelSelectorPath',
    required: false,
    includeIfNull: false
  )


  final String? labelSelectorPath;



      /// specReplicasPath defines the JSON path inside of a custom resource that corresponds to Scale `spec.replicas`. Only JSON paths without the array notation are allowed. Must be a JSON Path under `.spec`. If there is no value under the given path in the custom resource, the `/scale` subresource will return an error on GET.
  @JsonKey(
    
    name: r'specReplicasPath',
    required: true,
    includeIfNull: false
  )


  final String specReplicasPath;



      /// statusReplicasPath defines the JSON path inside of a custom resource that corresponds to Scale `status.replicas`. Only JSON paths without the array notation are allowed. Must be a JSON Path under `.status`. If there is no value under the given path in the custom resource, the `status.replicas` value in the `/scale` subresource will default to 0.
  @JsonKey(
    
    name: r'statusReplicasPath',
    required: true,
    includeIfNull: false
  )


  final String statusReplicasPath;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1CustomResourceSubresourceScale &&
     other.labelSelectorPath == labelSelectorPath &&
     other.specReplicasPath == specReplicasPath &&
     other.statusReplicasPath == statusReplicasPath;

  @override
  int get hashCode =>
    labelSelectorPath.hashCode +
    specReplicasPath.hashCode +
    statusReplicasPath.hashCode;

  factory V1CustomResourceSubresourceScale.fromJson(Map<String, dynamic> json) => _$V1CustomResourceSubresourceScaleFromJson(json);

  Map<String, dynamic> toJson() => _$V1CustomResourceSubresourceScaleToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

