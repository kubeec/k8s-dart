//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'v1_server_address_by_client_cidr.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1ServerAddressByClientCIDR {
  /// Returns a new [V1ServerAddressByClientCIDR] instance.
  V1ServerAddressByClientCIDR({

    required  this.clientCIDR,

    required  this.serverAddress,
  });

      /// The CIDR with which clients can match their IP to figure out the server address that they should use.
  @JsonKey(
    
    name: r'clientCIDR',
    required: true,
    includeIfNull: false
  )


  final String clientCIDR;



      /// Address of this server, suitable for a client that matches the above CIDR. This can be a hostname, hostname:port, IP or IP:port.
  @JsonKey(
    
    name: r'serverAddress',
    required: true,
    includeIfNull: false
  )


  final String serverAddress;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1ServerAddressByClientCIDR &&
     other.clientCIDR == clientCIDR &&
     other.serverAddress == serverAddress;

  @override
  int get hashCode =>
    clientCIDR.hashCode +
    serverAddress.hashCode;

  factory V1ServerAddressByClientCIDR.fromJson(Map<String, dynamic> json) => _$V1ServerAddressByClientCIDRFromJson(json);

  Map<String, dynamic> toJson() => _$V1ServerAddressByClientCIDRToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

