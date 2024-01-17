//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/apiregistration_v1_service_reference.dart';
import 'package:json_annotation/json_annotation.dart';

part 'v1_api_service_spec.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1APIServiceSpec {
  /// Returns a new [V1APIServiceSpec] instance.
  V1APIServiceSpec({

     this.caBundle,

     this.group,

    required  this.groupPriorityMinimum,

     this.insecureSkipTLSVerify,

     this.service,

     this.version,

    required  this.versionPriority,
  });

      /// CABundle is a PEM encoded CA bundle which will be used to validate an API server's serving certificate. If unspecified, system trust roots on the apiserver are used.
  @JsonKey(
    
    name: r'caBundle',
    required: false,
    includeIfNull: false
  )


  final String? caBundle;



      /// Group is the API group name this server hosts
  @JsonKey(
    
    name: r'group',
    required: false,
    includeIfNull: false
  )


  final String? group;



      /// GroupPriorityMininum is the priority this group should have at least. Higher priority means that the group is preferred by clients over lower priority ones. Note that other versions of this group might specify even higher GroupPriorityMininum values such that the whole group gets a higher priority. The primary sort is based on GroupPriorityMinimum, ordered highest number to lowest (20 before 10). The secondary sort is based on the alphabetical comparison of the name of the object.  (v1.bar before v1.foo) We'd recommend something like: *.k8s.io (except extensions) at 18000 and PaaSes (OpenShift, Deis) are recommended to be in the 2000s
  @JsonKey(
    
    name: r'groupPriorityMinimum',
    required: true,
    includeIfNull: false
  )


  final int groupPriorityMinimum;



      /// InsecureSkipTLSVerify disables TLS certificate verification when communicating with this server. This is strongly discouraged.  You should use the CABundle instead.
  @JsonKey(
    
    name: r'insecureSkipTLSVerify',
    required: false,
    includeIfNull: false
  )


  final bool? insecureSkipTLSVerify;



  @JsonKey(
    
    name: r'service',
    required: false,
    includeIfNull: false
  )


  final ApiregistrationV1ServiceReference? service;



      /// Version is the API version this server hosts.  For example, \"v1\"
  @JsonKey(
    
    name: r'version',
    required: false,
    includeIfNull: false
  )


  final String? version;



      /// VersionPriority controls the ordering of this API version inside of its group.  Must be greater than zero. The primary sort is based on VersionPriority, ordered highest to lowest (20 before 10). Since it's inside of a group, the number can be small, probably in the 10s. In case of equal version priorities, the version string will be used to compute the order inside a group. If the version string is \"kube-like\", it will sort above non \"kube-like\" version strings, which are ordered lexicographically. \"Kube-like\" versions start with a \"v\", then are followed by a number (the major version), then optionally the string \"alpha\" or \"beta\" and another number (the minor version). These are sorted first by GA > beta > alpha (where GA is a version with no suffix such as beta or alpha), and then by comparing major version, then minor version. An example sorted list of versions: v10, v2, v1, v11beta2, v10beta3, v3beta1, v12alpha1, v11alpha2, foo1, foo10.
  @JsonKey(
    
    name: r'versionPriority',
    required: true,
    includeIfNull: false
  )


  final int versionPriority;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1APIServiceSpec &&
     other.caBundle == caBundle &&
     other.group == group &&
     other.groupPriorityMinimum == groupPriorityMinimum &&
     other.insecureSkipTLSVerify == insecureSkipTLSVerify &&
     other.service == service &&
     other.version == version &&
     other.versionPriority == versionPriority;

  @override
  int get hashCode =>
    caBundle.hashCode +
    group.hashCode +
    groupPriorityMinimum.hashCode +
    insecureSkipTLSVerify.hashCode +
    service.hashCode +
    version.hashCode +
    versionPriority.hashCode;

  factory V1APIServiceSpec.fromJson(Map<String, dynamic> json) => _$V1APIServiceSpecFromJson(json);

  Map<String, dynamic> toJson() => _$V1APIServiceSpecToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

