//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/v1_endpoint_hints.dart';
import 'package:k8s/src/model/v1_object_reference.dart';
import 'package:k8s/src/model/v1_endpoint_conditions.dart';
import 'package:json_annotation/json_annotation.dart';

part 'v1_endpoint.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1Endpoint {
  /// Returns a new [V1Endpoint] instance.
  V1Endpoint({

    required  this.addresses,

     this.conditions,

     this.deprecatedTopology,

     this.hints,

     this.hostname,

     this.nodeName,

     this.targetRef,

     this.zone,
  });

      /// addresses of this endpoint. The contents of this field are interpreted according to the corresponding EndpointSlice addressType field. Consumers must handle different types of addresses in the context of their own capabilities. This must contain at least one address but no more than 100. These are all assumed to be fungible and clients may choose to only use the first element. Refer to: https://issue.k8s.io/106267
  @JsonKey(
    
    name: r'addresses',
    required: true,
    includeIfNull: false
  )


  final List<String> addresses;



  @JsonKey(
    
    name: r'conditions',
    required: false,
    includeIfNull: false
  )


  final V1EndpointConditions? conditions;



      /// deprecatedTopology contains topology information part of the v1beta1 API. This field is deprecated, and will be removed when the v1beta1 API is removed (no sooner than kubernetes v1.24).  While this field can hold values, it is not writable through the v1 API, and any attempts to write to it will be silently ignored. Topology information can be found in the zone and nodeName fields instead.
  @JsonKey(
    
    name: r'deprecatedTopology',
    required: false,
    includeIfNull: false
  )


  final Map<String, String>? deprecatedTopology;



  @JsonKey(
    
    name: r'hints',
    required: false,
    includeIfNull: false
  )


  final V1EndpointHints? hints;



      /// hostname of this endpoint. This field may be used by consumers of endpoints to distinguish endpoints from each other (e.g. in DNS names). Multiple endpoints which use the same hostname should be considered fungible (e.g. multiple A values in DNS). Must be lowercase and pass DNS Label (RFC 1123) validation.
  @JsonKey(
    
    name: r'hostname',
    required: false,
    includeIfNull: false
  )


  final String? hostname;



      /// nodeName represents the name of the Node hosting this endpoint. This can be used to determine endpoints local to a Node.
  @JsonKey(
    
    name: r'nodeName',
    required: false,
    includeIfNull: false
  )


  final String? nodeName;



  @JsonKey(
    
    name: r'targetRef',
    required: false,
    includeIfNull: false
  )


  final V1ObjectReference? targetRef;



      /// zone is the name of the Zone this endpoint exists in.
  @JsonKey(
    
    name: r'zone',
    required: false,
    includeIfNull: false
  )


  final String? zone;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1Endpoint &&
     other.addresses == addresses &&
     other.conditions == conditions &&
     other.deprecatedTopology == deprecatedTopology &&
     other.hints == hints &&
     other.hostname == hostname &&
     other.nodeName == nodeName &&
     other.targetRef == targetRef &&
     other.zone == zone;

  @override
  int get hashCode =>
    addresses.hashCode +
    conditions.hashCode +
    deprecatedTopology.hashCode +
    hints.hashCode +
    hostname.hashCode +
    nodeName.hashCode +
    targetRef.hashCode +
    zone.hashCode;

  factory V1Endpoint.fromJson(Map<String, dynamic> json) => _$V1EndpointFromJson(json);

  Map<String, dynamic> toJson() => _$V1EndpointToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

