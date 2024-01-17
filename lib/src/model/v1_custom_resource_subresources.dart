//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/v1_custom_resource_subresource_scale.dart';
import 'package:json_annotation/json_annotation.dart';

part 'v1_custom_resource_subresources.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1CustomResourceSubresources {
  /// Returns a new [V1CustomResourceSubresources] instance.
  V1CustomResourceSubresources({

     this.scale,

     this.status,
  });

  @JsonKey(
    
    name: r'scale',
    required: false,
    includeIfNull: false
  )


  final V1CustomResourceSubresourceScale? scale;



      /// status indicates the custom resource should serve a `/status` subresource. When enabled: 1. requests to the custom resource primary endpoint ignore changes to the `status` stanza of the object. 2. requests to the custom resource `/status` subresource ignore changes to anything other than the `status` stanza of the object.
  @JsonKey(
    
    name: r'status',
    required: false,
    includeIfNull: false
  )


  final Object? status;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1CustomResourceSubresources &&
     other.scale == scale &&
     other.status == status;

  @override
  int get hashCode =>
    scale.hashCode +
    status.hashCode;

  factory V1CustomResourceSubresources.fromJson(Map<String, dynamic> json) => _$V1CustomResourceSubresourcesFromJson(json);

  Map<String, dynamic> toJson() => _$V1CustomResourceSubresourcesToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

