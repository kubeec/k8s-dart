//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'v1_node_address.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1NodeAddress {
  /// Returns a new [V1NodeAddress] instance.
  V1NodeAddress({

    required  this.address,

    required  this.type,
  });

      /// The node address.
  @JsonKey(
    
    name: r'address',
    required: true,
    includeIfNull: false
  )


  final String address;



      /// Node address type, one of Hostname, ExternalIP or InternalIP.
  @JsonKey(
    
    name: r'type',
    required: true,
    includeIfNull: false
  )


  final String type;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1NodeAddress &&
     other.address == address &&
     other.type == type;

  @override
  int get hashCode =>
    address.hashCode +
    type.hashCode;

  factory V1NodeAddress.fromJson(Map<String, dynamic> json) => _$V1NodeAddressFromJson(json);

  Map<String, dynamic> toJson() => _$V1NodeAddressToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

