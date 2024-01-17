//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/v1_object_reference.dart';
import 'package:json_annotation/json_annotation.dart';

part 'v1_endpoint_address.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1EndpointAddress {
  /// Returns a new [V1EndpointAddress] instance.
  V1EndpointAddress({

     this.hostname,

    required  this.ip,

     this.nodeName,

     this.targetRef,
  });

      /// The Hostname of this endpoint
  @JsonKey(
    
    name: r'hostname',
    required: false,
    includeIfNull: false
  )


  final String? hostname;



      /// The IP of this endpoint. May not be loopback (127.0.0.0/8 or ::1), link-local (169.254.0.0/16 or fe80::/10), or link-local multicast (224.0.0.0/24 or ff02::/16).
  @JsonKey(
    
    name: r'ip',
    required: true,
    includeIfNull: false
  )


  final String ip;



      /// Optional: Node hosting this endpoint. This can be used to determine endpoints local to a node.
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



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1EndpointAddress &&
     other.hostname == hostname &&
     other.ip == ip &&
     other.nodeName == nodeName &&
     other.targetRef == targetRef;

  @override
  int get hashCode =>
    hostname.hashCode +
    ip.hashCode +
    nodeName.hashCode +
    targetRef.hashCode;

  factory V1EndpointAddress.fromJson(Map<String, dynamic> json) => _$V1EndpointAddressFromJson(json);

  Map<String, dynamic> toJson() => _$V1EndpointAddressToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

