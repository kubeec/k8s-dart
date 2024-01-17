//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/v1_mutating_webhook.dart';
import 'package:k8s/src/model/v1_object_meta.dart';
import 'package:json_annotation/json_annotation.dart';

part 'v1_mutating_webhook_configuration.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1MutatingWebhookConfiguration {
  /// Returns a new [V1MutatingWebhookConfiguration] instance.
  V1MutatingWebhookConfiguration({

     this.apiVersion,

     this.kind,

     this.metadata,

     this.webhooks,
  });

      /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  @JsonKey(
    
    name: r'apiVersion',
    required: false,
    includeIfNull: false
  )


  final String? apiVersion;



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



      /// Webhooks is a list of webhooks and the affected resources and operations.
  @JsonKey(
    
    name: r'webhooks',
    required: false,
    includeIfNull: false
  )


  final List<V1MutatingWebhook>? webhooks;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1MutatingWebhookConfiguration &&
     other.apiVersion == apiVersion &&
     other.kind == kind &&
     other.metadata == metadata &&
     other.webhooks == webhooks;

  @override
  int get hashCode =>
    apiVersion.hashCode +
    kind.hashCode +
    metadata.hashCode +
    webhooks.hashCode;

  factory V1MutatingWebhookConfiguration.fromJson(Map<String, dynamic> json) => _$V1MutatingWebhookConfigurationFromJson(json);

  Map<String, dynamic> toJson() => _$V1MutatingWebhookConfigurationToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}
