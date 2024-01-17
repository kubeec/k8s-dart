//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'v1_ingress_tls.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1IngressTLS {
  /// Returns a new [V1IngressTLS] instance.
  V1IngressTLS({

     this.hosts,

     this.secretName,
  });

      /// hosts is a list of hosts included in the TLS certificate. The values in this list must match the name/s used in the tlsSecret. Defaults to the wildcard host setting for the loadbalancer controller fulfilling this Ingress, if left unspecified.
  @JsonKey(
    
    name: r'hosts',
    required: false,
    includeIfNull: false
  )


  final List<String>? hosts;



      /// secretName is the name of the secret used to terminate TLS traffic on port 443. Field is left optional to allow TLS routing based on SNI hostname alone. If the SNI host in a listener conflicts with the \"Host\" header field used by an IngressRule, the SNI host is used for termination and value of the \"Host\" header is used for routing.
  @JsonKey(
    
    name: r'secretName',
    required: false,
    includeIfNull: false
  )


  final String? secretName;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1IngressTLS &&
     other.hosts == hosts &&
     other.secretName == secretName;

  @override
  int get hashCode =>
    hosts.hashCode +
    secretName.hashCode;

  factory V1IngressTLS.fromJson(Map<String, dynamic> json) => _$V1IngressTLSFromJson(json);

  Map<String, dynamic> toJson() => _$V1IngressTLSToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

