//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/v1_node_selector.dart';
import 'package:k8s/src/model/v1_object_meta.dart';
import 'package:k8s/src/model/v1alpha2_resource_class_parameters_reference.dart';
import 'package:json_annotation/json_annotation.dart';

part 'v1alpha2_resource_class.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1alpha2ResourceClass {
  /// Returns a new [V1alpha2ResourceClass] instance.
  V1alpha2ResourceClass({

     this.apiVersion,

    required  this.driverName,

     this.kind,

     this.metadata,

     this.parametersRef,

     this.suitableNodes,
  });

      /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  @JsonKey(
    
    name: r'apiVersion',
    required: false,
    includeIfNull: false
  )


  final String? apiVersion;



      /// DriverName defines the name of the dynamic resource driver that is used for allocation of a ResourceClaim that uses this class.  Resource drivers have a unique name in forward domain order (acme.example.com).
  @JsonKey(
    
    name: r'driverName',
    required: true,
    includeIfNull: false
  )


  final String driverName;



      /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  @JsonKey(
    
    name: r'kind',
    required: false,
    includeIfNull: false
  )


  final String? kind;



  @JsonKey(
    
    name: r'metadata',
    required: false,
    includeIfNull: false
  )


  final V1ObjectMeta? metadata;



  @JsonKey(
    
    name: r'parametersRef',
    required: false,
    includeIfNull: false
  )


  final V1alpha2ResourceClassParametersReference? parametersRef;



  @JsonKey(
    
    name: r'suitableNodes',
    required: false,
    includeIfNull: false
  )


  final V1NodeSelector? suitableNodes;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1alpha2ResourceClass &&
     other.apiVersion == apiVersion &&
     other.driverName == driverName &&
     other.kind == kind &&
     other.metadata == metadata &&
     other.parametersRef == parametersRef &&
     other.suitableNodes == suitableNodes;

  @override
  int get hashCode =>
    apiVersion.hashCode +
    driverName.hashCode +
    kind.hashCode +
    metadata.hashCode +
    parametersRef.hashCode +
    suitableNodes.hashCode;

  factory V1alpha2ResourceClass.fromJson(Map<String, dynamic> json) => _$V1alpha2ResourceClassFromJson(json);

  Map<String, dynamic> toJson() => _$V1alpha2ResourceClassToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

