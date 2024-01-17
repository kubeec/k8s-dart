//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/v1_pod_dns_config_option.dart';
import 'package:json_annotation/json_annotation.dart';

part 'v1_pod_dns_config.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1PodDNSConfig {
  /// Returns a new [V1PodDNSConfig] instance.
  V1PodDNSConfig({

     this.nameservers,

     this.options,

     this.searches,
  });

      /// A list of DNS name server IP addresses. This will be appended to the base nameservers generated from DNSPolicy. Duplicated nameservers will be removed.
  @JsonKey(
    
    name: r'nameservers',
    required: false,
    includeIfNull: false
  )


  final List<String>? nameservers;



      /// A list of DNS resolver options. This will be merged with the base options generated from DNSPolicy. Duplicated entries will be removed. Resolution options given in Options will override those that appear in the base DNSPolicy.
  @JsonKey(
    
    name: r'options',
    required: false,
    includeIfNull: false
  )


  final List<V1PodDNSConfigOption>? options;



      /// A list of DNS search domains for host-name lookup. This will be appended to the base search paths generated from DNSPolicy. Duplicated search paths will be removed.
  @JsonKey(
    
    name: r'searches',
    required: false,
    includeIfNull: false
  )


  final List<String>? searches;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1PodDNSConfig &&
     other.nameservers == nameservers &&
     other.options == options &&
     other.searches == searches;

  @override
  int get hashCode =>
    nameservers.hashCode +
    options.hashCode +
    searches.hashCode;

  factory V1PodDNSConfig.fromJson(Map<String, dynamic> json) => _$V1PodDNSConfigFromJson(json);

  Map<String, dynamic> toJson() => _$V1PodDNSConfigToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

