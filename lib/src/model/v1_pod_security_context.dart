//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/v1_seccomp_profile.dart';
import 'package:k8s/src/model/v1_windows_security_context_options.dart';
import 'package:k8s/src/model/v1_se_linux_options.dart';
import 'package:k8s/src/model/v1_sysctl.dart';
import 'package:json_annotation/json_annotation.dart';

part 'v1_pod_security_context.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1PodSecurityContext {
  /// Returns a new [V1PodSecurityContext] instance.
  V1PodSecurityContext({

     this.fsGroup,

     this.fsGroupChangePolicy,

     this.runAsGroup,

     this.runAsNonRoot,

     this.runAsUser,

     this.seLinuxOptions,

     this.seccompProfile,

     this.supplementalGroups,

     this.sysctls,

     this.windowsOptions,
  });

      /// A special supplemental group that applies to all containers in a pod. Some volume types allow the Kubelet to change the ownership of that volume to be owned by the pod:  1. The owning GID will be the FSGroup 2. The setgid bit is set (new files created in the volume will be owned by FSGroup) 3. The permission bits are OR'd with rw-rw----  If unset, the Kubelet will not modify the ownership and permissions of any volume. Note that this field cannot be set when spec.os.name is windows.
  @JsonKey(
    
    name: r'fsGroup',
    required: false,
    includeIfNull: false
  )


  final int? fsGroup;



      /// fsGroupChangePolicy defines behavior of changing ownership and permission of the volume before being exposed inside Pod. This field will only apply to volume types which support fsGroup based ownership(and permissions). It will have no effect on ephemeral volume types such as: secret, configmaps and emptydir. Valid values are \"OnRootMismatch\" and \"Always\". If not specified, \"Always\" is used. Note that this field cannot be set when spec.os.name is windows.
  @JsonKey(
    
    name: r'fsGroupChangePolicy',
    required: false,
    includeIfNull: false
  )


  final String? fsGroupChangePolicy;



      /// The GID to run the entrypoint of the container process. Uses runtime default if unset. May also be set in SecurityContext.  If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence for that container. Note that this field cannot be set when spec.os.name is windows.
  @JsonKey(
    
    name: r'runAsGroup',
    required: false,
    includeIfNull: false
  )


  final int? runAsGroup;



      /// Indicates that the container must run as a non-root user. If true, the Kubelet will validate the image at runtime to ensure that it does not run as UID 0 (root) and fail to start the container if it does. If unset or false, no such validation will be performed. May also be set in SecurityContext.  If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence.
  @JsonKey(
    
    name: r'runAsNonRoot',
    required: false,
    includeIfNull: false
  )


  final bool? runAsNonRoot;



      /// The UID to run the entrypoint of the container process. Defaults to user specified in image metadata if unspecified. May also be set in SecurityContext.  If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence for that container. Note that this field cannot be set when spec.os.name is windows.
  @JsonKey(
    
    name: r'runAsUser',
    required: false,
    includeIfNull: false
  )


  final int? runAsUser;



  @JsonKey(
    
    name: r'seLinuxOptions',
    required: false,
    includeIfNull: false
  )


  final V1SELinuxOptions? seLinuxOptions;



  @JsonKey(
    
    name: r'seccompProfile',
    required: false,
    includeIfNull: false
  )


  final V1SeccompProfile? seccompProfile;



      /// A list of groups applied to the first process run in each container, in addition to the container's primary GID, the fsGroup (if specified), and group memberships defined in the container image for the uid of the container process. If unspecified, no additional groups are added to any container. Note that group memberships defined in the container image for the uid of the container process are still effective, even if they are not included in this list. Note that this field cannot be set when spec.os.name is windows.
  @JsonKey(
    
    name: r'supplementalGroups',
    required: false,
    includeIfNull: false
  )


  final List<int>? supplementalGroups;



      /// Sysctls hold a list of namespaced sysctls used for the pod. Pods with unsupported sysctls (by the container runtime) might fail to launch. Note that this field cannot be set when spec.os.name is windows.
  @JsonKey(
    
    name: r'sysctls',
    required: false,
    includeIfNull: false
  )


  final List<V1Sysctl>? sysctls;



  @JsonKey(
    
    name: r'windowsOptions',
    required: false,
    includeIfNull: false
  )


  final V1WindowsSecurityContextOptions? windowsOptions;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1PodSecurityContext &&
     other.fsGroup == fsGroup &&
     other.fsGroupChangePolicy == fsGroupChangePolicy &&
     other.runAsGroup == runAsGroup &&
     other.runAsNonRoot == runAsNonRoot &&
     other.runAsUser == runAsUser &&
     other.seLinuxOptions == seLinuxOptions &&
     other.seccompProfile == seccompProfile &&
     other.supplementalGroups == supplementalGroups &&
     other.sysctls == sysctls &&
     other.windowsOptions == windowsOptions;

  @override
  int get hashCode =>
    fsGroup.hashCode +
    fsGroupChangePolicy.hashCode +
    runAsGroup.hashCode +
    runAsNonRoot.hashCode +
    runAsUser.hashCode +
    seLinuxOptions.hashCode +
    seccompProfile.hashCode +
    supplementalGroups.hashCode +
    sysctls.hashCode +
    windowsOptions.hashCode;

  factory V1PodSecurityContext.fromJson(Map<String, dynamic> json) => _$V1PodSecurityContextFromJson(json);

  Map<String, dynamic> toJson() => _$V1PodSecurityContextToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

