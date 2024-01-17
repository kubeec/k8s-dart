//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/v1_ingress_backend.dart';
import 'package:k8s/src/model/v1_ingress_tls.dart';
import 'package:k8s/src/model/v1_ingress_rule.dart';
import 'package:json_annotation/json_annotation.dart';

part 'v1_ingress_spec.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1IngressSpec {
  /// Returns a new [V1IngressSpec] instance.
  V1IngressSpec({

     this.defaultBackend,

     this.ingressClassName,

     this.rules,

     this.tls,
  });

  @JsonKey(
    
    name: r'defaultBackend',
    required: false,
    includeIfNull: false
  )


  final V1IngressBackend? defaultBackend;



      /// ingressClassName is the name of an IngressClass cluster resource. Ingress controller implementations use this field to know whether they should be serving this Ingress resource, by a transitive connection (controller -> IngressClass -> Ingress resource). Although the `kubernetes.io/ingress.class` annotation (simple constant name) was never formally defined, it was widely supported by Ingress controllers to create a direct binding between Ingress controller and Ingress resources. Newly created Ingress resources should prefer using the field. However, even though the annotation is officially deprecated, for backwards compatibility reasons, ingress controllers should still honor that annotation if present.
  @JsonKey(
    
    name: r'ingressClassName',
    required: false,
    includeIfNull: false
  )


  final String? ingressClassName;



      /// rules is a list of host rules used to configure the Ingress. If unspecified, or no rule matches, all traffic is sent to the default backend.
  @JsonKey(
    
    name: r'rules',
    required: false,
    includeIfNull: false
  )


  final List<V1IngressRule>? rules;



      /// tls represents the TLS configuration. Currently the Ingress only supports a single TLS port, 443. If multiple members of this list specify different hosts, they will be multiplexed on the same port according to the hostname specified through the SNI TLS extension, if the ingress controller fulfilling the ingress supports SNI.
  @JsonKey(
    
    name: r'tls',
    required: false,
    includeIfNull: false
  )


  final List<V1IngressTLS>? tls;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1IngressSpec &&
     other.defaultBackend == defaultBackend &&
     other.ingressClassName == ingressClassName &&
     other.rules == rules &&
     other.tls == tls;

  @override
  int get hashCode =>
    defaultBackend.hashCode +
    ingressClassName.hashCode +
    rules.hashCode +
    tls.hashCode;

  factory V1IngressSpec.fromJson(Map<String, dynamic> json) => _$V1IngressSpecFromJson(json);

  Map<String, dynamic> toJson() => _$V1IngressSpecToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

