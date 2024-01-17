//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'v1_node_system_info.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1NodeSystemInfo {
  /// Returns a new [V1NodeSystemInfo] instance.
  V1NodeSystemInfo({

    required  this.architecture,

    required  this.bootID,

    required  this.containerRuntimeVersion,

    required  this.kernelVersion,

    required  this.kubeProxyVersion,

    required  this.kubeletVersion,

    required  this.machineID,

    required  this.operatingSystem,

    required  this.osImage,

    required  this.systemUUID,
  });

      /// The Architecture reported by the node
  @JsonKey(
    
    name: r'architecture',
    required: true,
    includeIfNull: false
  )


  final String architecture;



      /// Boot ID reported by the node.
  @JsonKey(
    
    name: r'bootID',
    required: true,
    includeIfNull: false
  )


  final String bootID;



      /// ContainerRuntime Version reported by the node through runtime remote API (e.g. containerd://1.4.2).
  @JsonKey(
    
    name: r'containerRuntimeVersion',
    required: true,
    includeIfNull: false
  )


  final String containerRuntimeVersion;



      /// Kernel Version reported by the node from 'uname -r' (e.g. 3.16.0-0.bpo.4-amd64).
  @JsonKey(
    
    name: r'kernelVersion',
    required: true,
    includeIfNull: false
  )


  final String kernelVersion;



      /// KubeProxy Version reported by the node.
  @JsonKey(
    
    name: r'kubeProxyVersion',
    required: true,
    includeIfNull: false
  )


  final String kubeProxyVersion;



      /// Kubelet Version reported by the node.
  @JsonKey(
    
    name: r'kubeletVersion',
    required: true,
    includeIfNull: false
  )


  final String kubeletVersion;



      /// MachineID reported by the node. For unique machine identification in the cluster this field is preferred. Learn more from man(5) machine-id: http://man7.org/linux/man-pages/man5/machine-id.5.html
  @JsonKey(
    
    name: r'machineID',
    required: true,
    includeIfNull: false
  )


  final String machineID;



      /// The Operating System reported by the node
  @JsonKey(
    
    name: r'operatingSystem',
    required: true,
    includeIfNull: false
  )


  final String operatingSystem;



      /// OS Image reported by the node from /etc/os-release (e.g. Debian GNU/Linux 7 (wheezy)).
  @JsonKey(
    
    name: r'osImage',
    required: true,
    includeIfNull: false
  )


  final String osImage;



      /// SystemUUID reported by the node. For unique machine identification MachineID is preferred. This field is specific to Red Hat hosts https://access.redhat.com/documentation/en-us/red_hat_subscription_management/1/html/rhsm/uuid
  @JsonKey(
    
    name: r'systemUUID',
    required: true,
    includeIfNull: false
  )


  final String systemUUID;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1NodeSystemInfo &&
     other.architecture == architecture &&
     other.bootID == bootID &&
     other.containerRuntimeVersion == containerRuntimeVersion &&
     other.kernelVersion == kernelVersion &&
     other.kubeProxyVersion == kubeProxyVersion &&
     other.kubeletVersion == kubeletVersion &&
     other.machineID == machineID &&
     other.operatingSystem == operatingSystem &&
     other.osImage == osImage &&
     other.systemUUID == systemUUID;

  @override
  int get hashCode =>
    architecture.hashCode +
    bootID.hashCode +
    containerRuntimeVersion.hashCode +
    kernelVersion.hashCode +
    kubeProxyVersion.hashCode +
    kubeletVersion.hashCode +
    machineID.hashCode +
    operatingSystem.hashCode +
    osImage.hashCode +
    systemUUID.hashCode;

  factory V1NodeSystemInfo.fromJson(Map<String, dynamic> json) => _$V1NodeSystemInfoFromJson(json);

  Map<String, dynamic> toJson() => _$V1NodeSystemInfoToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

