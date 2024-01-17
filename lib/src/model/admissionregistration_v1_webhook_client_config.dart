//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/admissionregistration_v1_service_reference.dart';
import 'package:json_annotation/json_annotation.dart';

part 'admissionregistration_v1_webhook_client_config.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class AdmissionregistrationV1WebhookClientConfig {
  /// Returns a new [AdmissionregistrationV1WebhookClientConfig] instance.
  AdmissionregistrationV1WebhookClientConfig({

     this.caBundle,

     this.service,

     this.url,
  });

      /// `caBundle` is a PEM encoded CA bundle which will be used to validate the webhook's server certificate. If unspecified, system trust roots on the apiserver are used.
  @JsonKey(
    
    name: r'caBundle',
    required: false,
    includeIfNull: false
  )


  final String? caBundle;



  @JsonKey(
    
    name: r'service',
    required: false,
    includeIfNull: false
  )


  final AdmissionregistrationV1ServiceReference? service;



      /// `url` gives the location of the webhook, in standard URL form (`scheme://host:port/path`). Exactly one of `url` or `service` must be specified.  The `host` should not refer to a service running in the cluster; use the `service` field instead. The host might be resolved via external DNS in some apiservers (e.g., `kube-apiserver` cannot resolve in-cluster DNS as that would be a layering violation). `host` may also be an IP address.  Please note that using `localhost` or `127.0.0.1` as a `host` is risky unless you take great care to run this webhook on all hosts which run an apiserver which might need to make calls to this webhook. Such installs are likely to be non-portable, i.e., not easy to turn up in a new cluster.  The scheme must be \"https\"; the URL must begin with \"https://\".  A path is optional, and if present may be any string permissible in a URL. You may use the path to pass an arbitrary string to the webhook, for example, a cluster identifier.  Attempting to use a user or basic auth e.g. \"user:password@\" is not allowed. Fragments (\"#...\") and query parameters (\"?...\") are not allowed, either.
  @JsonKey(
    
    name: r'url',
    required: false,
    includeIfNull: false
  )


  final String? url;



  @override
  bool operator ==(Object other) => identical(this, other) || other is AdmissionregistrationV1WebhookClientConfig &&
     other.caBundle == caBundle &&
     other.service == service &&
     other.url == url;

  @override
  int get hashCode =>
    caBundle.hashCode +
    service.hashCode +
    url.hashCode;

  factory AdmissionregistrationV1WebhookClientConfig.fromJson(Map<String, dynamic> json) => _$AdmissionregistrationV1WebhookClientConfigFromJson(json);

  Map<String, dynamic> toJson() => _$AdmissionregistrationV1WebhookClientConfigToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

