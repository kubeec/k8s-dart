//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/v1_container_state.dart';
import 'package:k8s/src/model/v1_resource_requirements.dart';
import 'package:json_annotation/json_annotation.dart';

part 'v1_container_status.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1ContainerStatus {
  /// Returns a new [V1ContainerStatus] instance.
  V1ContainerStatus({

     this.allocatedResources,

     this.containerID,

    required  this.image,

    required  this.imageID,

     this.lastState,

    required  this.name,

    required  this.ready,

     this.resources,

    required  this.restartCount,

     this.started,

     this.state,
  });

      /// AllocatedResources represents the compute resources allocated for this container by the node. Kubelet sets this value to Container.Resources.Requests upon successful pod admission and after successfully admitting desired pod resize.
  @JsonKey(
    
    name: r'allocatedResources',
    required: false,
    includeIfNull: false
  )


  final Map<String, String>? allocatedResources;



      /// ContainerID is the ID of the container in the format '<type>://<container_id>'. Where type is a container runtime identifier, returned from Version call of CRI API (for example \"containerd\").
  @JsonKey(
    
    name: r'containerID',
    required: false,
    includeIfNull: false
  )


  final String? containerID;



      /// Image is the name of container image that the container is running. The container image may not match the image used in the PodSpec, as it may have been resolved by the runtime. More info: https://kubernetes.io/docs/concepts/containers/images.
  @JsonKey(
    
    name: r'image',
    required: true,
    includeIfNull: false
  )


  final String image;



      /// ImageID is the image ID of the container's image. The image ID may not match the image ID of the image used in the PodSpec, as it may have been resolved by the runtime.
  @JsonKey(
    
    name: r'imageID',
    required: true,
    includeIfNull: false
  )


  final String imageID;



  @JsonKey(
    
    name: r'lastState',
    required: false,
    includeIfNull: false
  )


  final V1ContainerState? lastState;



      /// Name is a DNS_LABEL representing the unique name of the container. Each container in a pod must have a unique name across all container types. Cannot be updated.
  @JsonKey(
    
    name: r'name',
    required: true,
    includeIfNull: false
  )


  final String name;



      /// Ready specifies whether the container is currently passing its readiness check. The value will change as readiness probes keep executing. If no readiness probes are specified, this field defaults to true once the container is fully started (see Started field).  The value is typically used to determine whether a container is ready to accept traffic.
  @JsonKey(
    
    name: r'ready',
    required: true,
    includeIfNull: false
  )


  final bool ready;



  @JsonKey(
    
    name: r'resources',
    required: false,
    includeIfNull: false
  )


  final V1ResourceRequirements? resources;



      /// RestartCount holds the number of times the container has been restarted. Kubelet makes an effort to always increment the value, but there are cases when the state may be lost due to node restarts and then the value may be reset to 0. The value is never negative.
  @JsonKey(
    
    name: r'restartCount',
    required: true,
    includeIfNull: false
  )


  final int restartCount;



      /// Started indicates whether the container has finished its postStart lifecycle hook and passed its startup probe. Initialized as false, becomes true after startupProbe is considered successful. Resets to false when the container is restarted, or if kubelet loses state temporarily. In both cases, startup probes will run again. Is always true when no startupProbe is defined and container is running and has passed the postStart lifecycle hook. The null value must be treated the same as false.
  @JsonKey(
    
    name: r'started',
    required: false,
    includeIfNull: false
  )


  final bool? started;



  @JsonKey(
    
    name: r'state',
    required: false,
    includeIfNull: false
  )


  final V1ContainerState? state;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1ContainerStatus &&
     other.allocatedResources == allocatedResources &&
     other.containerID == containerID &&
     other.image == image &&
     other.imageID == imageID &&
     other.lastState == lastState &&
     other.name == name &&
     other.ready == ready &&
     other.resources == resources &&
     other.restartCount == restartCount &&
     other.started == started &&
     other.state == state;

  @override
  int get hashCode =>
    allocatedResources.hashCode +
    containerID.hashCode +
    image.hashCode +
    imageID.hashCode +
    lastState.hashCode +
    name.hashCode +
    ready.hashCode +
    resources.hashCode +
    restartCount.hashCode +
    started.hashCode +
    state.hashCode;

  factory V1ContainerStatus.fromJson(Map<String, dynamic> json) => _$V1ContainerStatusFromJson(json);

  Map<String, dynamic> toJson() => _$V1ContainerStatusToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

