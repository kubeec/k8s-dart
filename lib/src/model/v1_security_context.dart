//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/v1_seccomp_profile.dart';
import 'package:k8s/src/model/v1_windows_security_context_options.dart';
import 'package:k8s/src/model/v1_capabilities.dart';
import 'package:k8s/src/model/v1_se_linux_options.dart';
import 'package:json_annotation/json_annotation.dart';

part 'v1_security_context.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1SecurityContext {
  /// Returns a new [V1SecurityContext] instance.
  V1SecurityContext({

     this.allowPrivilegeEscalation,

     this.capabilities,

     this.privileged,

     this.procMount,

     this.readOnlyRootFilesystem,

     this.runAsGroup,

     this.runAsNonRoot,

     this.runAsUser,

     this.seLinuxOptions,

     this.seccompProfile,

     this.windowsOptions,
  });

      /// AllowPrivilegeEscalation controls whether a process can gain more privileges than its parent process. This bool directly controls if the no_new_privs flag will be set on the container process. AllowPrivilegeEscalation is true always when the container is: 1) run as Privileged 2) has CAP_SYS_ADMIN Note that this field cannot be set when spec.os.name is windows.
  @JsonKey(
    
    name: r'allowPrivilegeEscalation',
    required: false,
    includeIfNull: false
  )


  final bool? allowPrivilegeEscalation;



  @JsonKey(
    
    name: r'capabilities',
    required: false,
    includeIfNull: false
  )


  final V1Capabilities? capabilities;



      /// Run container in privileged mode. Processes in privileged containers are essentially equivalent to root on the host. Defaults to false. Note that this field cannot be set when spec.os.name is windows.
  @JsonKey(
    
    name: r'privileged',
    required: false,
    includeIfNull: false
  )


  final bool? privileged;



      /// procMount denotes the type of proc mount to use for the containers. The default is DefaultProcMount which uses the container runtime defaults for readonly paths and masked paths. This requires the ProcMountType feature flag to be enabled. Note that this field cannot be set when spec.os.name is windows.
  @JsonKey(
    
    name: r'procMount',
    required: false,
    includeIfNull: false
  )


  final String? procMount;



      /// Whether this container has a read-only root filesystem. Default is false. Note that this field cannot be set when spec.os.name is windows.
  @JsonKey(
    
    name: r'readOnlyRootFilesystem',
    required: false,
    includeIfNull: false
  )


  final bool? readOnlyRootFilesystem;



      /// The GID to run the entrypoint of the container process. Uses runtime default if unset. May also be set in PodSecurityContext.  If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence. Note that this field cannot be set when spec.os.name is windows.
  @JsonKey(
    
    name: r'runAsGroup',
    required: false,
    includeIfNull: false
  )


  final int? runAsGroup;



      /// Indicates that the container must run as a non-root user. If true, the Kubelet will validate the image at runtime to ensure that it does not run as UID 0 (root) and fail to start the container if it does. If unset or false, no such validation will be performed. May also be set in PodSecurityContext.  If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence.
  @JsonKey(
    
    name: r'runAsNonRoot',
    required: false,
    includeIfNull: false
  )


  final bool? runAsNonRoot;



      /// The UID to run the entrypoint of the container process. Defaults to user specified in image metadata if unspecified. May also be set in PodSecurityContext.  If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence. Note that this field cannot be set when spec.os.name is windows.
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



  @JsonKey(
    
    name: r'windowsOptions',
    required: false,
    includeIfNull: false
  )


  final V1WindowsSecurityContextOptions? windowsOptions;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1SecurityContext &&
     other.allowPrivilegeEscalation == allowPrivilegeEscalation &&
     other.capabilities == capabilities &&
     other.privileged == privileged &&
     other.procMount == procMount &&
     other.readOnlyRootFilesystem == readOnlyRootFilesystem &&
     other.runAsGroup == runAsGroup &&
     other.runAsNonRoot == runAsNonRoot &&
     other.runAsUser == runAsUser &&
     other.seLinuxOptions == seLinuxOptions &&
     other.seccompProfile == seccompProfile &&
     other.windowsOptions == windowsOptions;

  @override
  int get hashCode =>
    allowPrivilegeEscalation.hashCode +
    capabilities.hashCode +
    privileged.hashCode +
    procMount.hashCode +
    readOnlyRootFilesystem.hashCode +
    runAsGroup.hashCode +
    runAsNonRoot.hashCode +
    runAsUser.hashCode +
    seLinuxOptions.hashCode +
    seccompProfile.hashCode +
    windowsOptions.hashCode;

  factory V1SecurityContext.fromJson(Map<String, dynamic> json) => _$V1SecurityContextFromJson(json);

  Map<String, dynamic> toJson() => _$V1SecurityContextToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

