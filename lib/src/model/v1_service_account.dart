//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/v1_object_reference.dart';
import 'package:k8s/src/model/v1_object_meta.dart';
import 'package:k8s/src/model/v1_local_object_reference.dart';
import 'package:json_annotation/json_annotation.dart';

part 'v1_service_account.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1ServiceAccount {
  /// Returns a new [V1ServiceAccount] instance.
  V1ServiceAccount({

     this.apiVersion,

     this.automountServiceAccountToken,

     this.imagePullSecrets,

     this.kind,

     this.metadata,

     this.secrets,
  });

      /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  @JsonKey(
    
    name: r'apiVersion',
    required: false,
    includeIfNull: false
  )


  final String? apiVersion;



      /// AutomountServiceAccountToken indicates whether pods running as this service account should have an API token automatically mounted. Can be overridden at the pod level.
  @JsonKey(
    
    name: r'automountServiceAccountToken',
    required: false,
    includeIfNull: false
  )


  final bool? automountServiceAccountToken;



      /// ImagePullSecrets is a list of references to secrets in the same namespace to use for pulling any images in pods that reference this ServiceAccount. ImagePullSecrets are distinct from Secrets because Secrets can be mounted in the pod, but ImagePullSecrets are only accessed by the kubelet. More info: https://kubernetes.io/docs/concepts/containers/images/#specifying-imagepullsecrets-on-a-pod
  @JsonKey(
    
    name: r'imagePullSecrets',
    required: false,
    includeIfNull: false
  )


  final List<V1LocalObjectReference>? imagePullSecrets;



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



      /// Secrets is a list of the secrets in the same namespace that pods running using this ServiceAccount are allowed to use. Pods are only limited to this list if this service account has a \"kubernetes.io/enforce-mountable-secrets\" annotation set to \"true\". This field should not be used to find auto-generated service account token secrets for use outside of pods. Instead, tokens can be requested directly using the TokenRequest API, or service account token secrets can be manually created. More info: https://kubernetes.io/docs/concepts/configuration/secret
  @JsonKey(
    
    name: r'secrets',
    required: false,
    includeIfNull: false
  )


  final List<V1ObjectReference>? secrets;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1ServiceAccount &&
     other.apiVersion == apiVersion &&
     other.automountServiceAccountToken == automountServiceAccountToken &&
     other.imagePullSecrets == imagePullSecrets &&
     other.kind == kind &&
     other.metadata == metadata &&
     other.secrets == secrets;

  @override
  int get hashCode =>
    apiVersion.hashCode +
    automountServiceAccountToken.hashCode +
    imagePullSecrets.hashCode +
    kind.hashCode +
    metadata.hashCode +
    secrets.hashCode;

  factory V1ServiceAccount.fromJson(Map<String, dynamic> json) => _$V1ServiceAccountFromJson(json);

  Map<String, dynamic> toJson() => _$V1ServiceAccountToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

