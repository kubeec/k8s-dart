//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'v1_host_alias.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1HostAlias {
  /// Returns a new [V1HostAlias] instance.
  V1HostAlias({

     this.hostnames,

     this.ip,
  });

      /// Hostnames for the above IP address.
  @JsonKey(
    
    name: r'hostnames',
    required: false,
    includeIfNull: false
  )


  final List<String>? hostnames;



      /// IP address of the host file entry.
  @JsonKey(
    
    name: r'ip',
    required: false,
    includeIfNull: false
  )


  final String? ip;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1HostAlias &&
     other.hostnames == hostnames &&
     other.ip == ip;

  @override
  int get hashCode =>
    hostnames.hashCode +
    ip.hashCode;

  factory V1HostAlias.fromJson(Map<String, dynamic> json) => _$V1HostAliasFromJson(json);

  Map<String, dynamic> toJson() => _$V1HostAliasToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

