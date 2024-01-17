//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'v1_config_map_node_config_source.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1ConfigMapNodeConfigSource {
  /// Returns a new [V1ConfigMapNodeConfigSource] instance.
  V1ConfigMapNodeConfigSource({

    required  this.kubeletConfigKey,

    required  this.name,

    required  this.namespace,

     this.resourceVersion,

     this.uid,
  });

      /// KubeletConfigKey declares which key of the referenced ConfigMap corresponds to the KubeletConfiguration structure This field is required in all cases.
  @JsonKey(
    
    name: r'kubeletConfigKey',
    required: true,
    includeIfNull: false
  )


  final String kubeletConfigKey;



      /// Name is the metadata.name of the referenced ConfigMap. This field is required in all cases.
  @JsonKey(
    
    name: r'name',
    required: true,
    includeIfNull: false
  )


  final String name;



      /// Namespace is the metadata.namespace of the referenced ConfigMap. This field is required in all cases.
  @JsonKey(
    
    name: r'namespace',
    required: true,
    includeIfNull: false
  )


  final String namespace;



      /// ResourceVersion is the metadata.ResourceVersion of the referenced ConfigMap. This field is forbidden in Node.Spec, and required in Node.Status.
  @JsonKey(
    
    name: r'resourceVersion',
    required: false,
    includeIfNull: false
  )


  final String? resourceVersion;



      /// UID is the metadata.UID of the referenced ConfigMap. This field is forbidden in Node.Spec, and required in Node.Status.
  @JsonKey(
    
    name: r'uid',
    required: false,
    includeIfNull: false
  )


  final String? uid;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1ConfigMapNodeConfigSource &&
     other.kubeletConfigKey == kubeletConfigKey &&
     other.name == name &&
     other.namespace == namespace &&
     other.resourceVersion == resourceVersion &&
     other.uid == uid;

  @override
  int get hashCode =>
    kubeletConfigKey.hashCode +
    name.hashCode +
    namespace.hashCode +
    resourceVersion.hashCode +
    uid.hashCode;

  factory V1ConfigMapNodeConfigSource.fromJson(Map<String, dynamic> json) => _$V1ConfigMapNodeConfigSourceFromJson(json);

  Map<String, dynamic> toJson() => _$V1ConfigMapNodeConfigSourceToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

