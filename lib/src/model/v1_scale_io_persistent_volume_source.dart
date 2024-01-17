//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/v1_secret_reference.dart';
import 'package:json_annotation/json_annotation.dart';

part 'v1_scale_io_persistent_volume_source.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1ScaleIOPersistentVolumeSource {
  /// Returns a new [V1ScaleIOPersistentVolumeSource] instance.
  V1ScaleIOPersistentVolumeSource({

     this.fsType,

    required  this.gateway,

     this.protectionDomain,

     this.readOnly,

    required  this.secretRef,

     this.sslEnabled,

     this.storageMode,

     this.storagePool,

    required  this.system,

     this.volumeName,
  });

      /// fsType is the filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. \"ext4\", \"xfs\", \"ntfs\". Default is \"xfs\"
  @JsonKey(
    
    name: r'fsType',
    required: false,
    includeIfNull: false
  )


  final String? fsType;



      /// gateway is the host address of the ScaleIO API Gateway.
  @JsonKey(
    
    name: r'gateway',
    required: true,
    includeIfNull: false
  )


  final String gateway;



      /// protectionDomain is the name of the ScaleIO Protection Domain for the configured storage.
  @JsonKey(
    
    name: r'protectionDomain',
    required: false,
    includeIfNull: false
  )


  final String? protectionDomain;



      /// readOnly defaults to false (read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.
  @JsonKey(
    
    name: r'readOnly',
    required: false,
    includeIfNull: false
  )


  final bool? readOnly;



  @JsonKey(
    
    name: r'secretRef',
    required: true,
    includeIfNull: false
  )


  final V1SecretReference secretRef;



      /// sslEnabled is the flag to enable/disable SSL communication with Gateway, default false
  @JsonKey(
    
    name: r'sslEnabled',
    required: false,
    includeIfNull: false
  )


  final bool? sslEnabled;



      /// storageMode indicates whether the storage for a volume should be ThickProvisioned or ThinProvisioned. Default is ThinProvisioned.
  @JsonKey(
    
    name: r'storageMode',
    required: false,
    includeIfNull: false
  )


  final String? storageMode;



      /// storagePool is the ScaleIO Storage Pool associated with the protection domain.
  @JsonKey(
    
    name: r'storagePool',
    required: false,
    includeIfNull: false
  )


  final String? storagePool;



      /// system is the name of the storage system as configured in ScaleIO.
  @JsonKey(
    
    name: r'system',
    required: true,
    includeIfNull: false
  )


  final String system;



      /// volumeName is the name of a volume already created in the ScaleIO system that is associated with this volume source.
  @JsonKey(
    
    name: r'volumeName',
    required: false,
    includeIfNull: false
  )


  final String? volumeName;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1ScaleIOPersistentVolumeSource &&
     other.fsType == fsType &&
     other.gateway == gateway &&
     other.protectionDomain == protectionDomain &&
     other.readOnly == readOnly &&
     other.secretRef == secretRef &&
     other.sslEnabled == sslEnabled &&
     other.storageMode == storageMode &&
     other.storagePool == storagePool &&
     other.system == system &&
     other.volumeName == volumeName;

  @override
  int get hashCode =>
    fsType.hashCode +
    gateway.hashCode +
    protectionDomain.hashCode +
    readOnly.hashCode +
    secretRef.hashCode +
    sslEnabled.hashCode +
    storageMode.hashCode +
    storagePool.hashCode +
    system.hashCode +
    volumeName.hashCode;

  factory V1ScaleIOPersistentVolumeSource.fromJson(Map<String, dynamic> json) => _$V1ScaleIOPersistentVolumeSourceFromJson(json);

  Map<String, dynamic> toJson() => _$V1ScaleIOPersistentVolumeSourceToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

