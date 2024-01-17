//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/v1_http_ingress_rule_value.dart';
import 'package:json_annotation/json_annotation.dart';

part 'v1_ingress_rule.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1IngressRule {
  /// Returns a new [V1IngressRule] instance.
  V1IngressRule({

     this.host,

     this.http,
  });

      /// host is the fully qualified domain name of a network host, as defined by RFC 3986. Note the following deviations from the \"host\" part of the URI as defined in RFC 3986: 1. IPs are not allowed. Currently an IngressRuleValue can only apply to    the IP in the Spec of the parent Ingress. 2. The `:` delimiter is not respected because ports are not allowed.    Currently the port of an Ingress is implicitly :80 for http and    :443 for https. Both these may change in the future. Incoming requests are matched against the host before the IngressRuleValue. If the host is unspecified, the Ingress routes all traffic based on the specified IngressRuleValue.  host can be \"precise\" which is a domain name without the terminating dot of a network host (e.g. \"foo.bar.com\") or \"wildcard\", which is a domain name prefixed with a single wildcard label (e.g. \"*.foo.com\"). The wildcard character '*' must appear by itself as the first DNS label and matches only a single label. You cannot have a wildcard label by itself (e.g. Host == \"*\"). Requests will be matched against the Host field in the following way: 1. If host is precise, the request matches this rule if the http host header is equal to Host. 2. If host is a wildcard, then the request matches this rule if the http host header is to equal to the suffix (removing the first label) of the wildcard rule.
  @JsonKey(
    
    name: r'host',
    required: false,
    includeIfNull: false
  )


  final String? host;



  @JsonKey(
    
    name: r'http',
    required: false,
    includeIfNull: false
  )


  final V1HTTPIngressRuleValue? http;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1IngressRule &&
     other.host == host &&
     other.http == http;

  @override
  int get hashCode =>
    host.hashCode +
    http.hashCode;

  factory V1IngressRule.fromJson(Map<String, dynamic> json) => _$V1IngressRuleFromJson(json);

  Map<String, dynamic> toJson() => _$V1IngressRuleToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

