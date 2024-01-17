//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/v1_secret_reference.dart';
import 'package:json_annotation/json_annotation.dart';

part 'v1_rbd_persistent_volume_source.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1RBDPersistentVolumeSource {
  /// Returns a new [V1RBDPersistentVolumeSource] instance.
  V1RBDPersistentVolumeSource({

     this.fsType,

    required  this.image,

     this.keyring,

    required  this.monitors,

     this.pool,

     this.readOnly,

     this.secretRef,

     this.user,
  });

      /// fsType is the filesystem type of the volume that you want to mount. Tip: Ensure that the filesystem type is supported by the host operating system. Examples: \"ext4\", \"xfs\", \"ntfs\". Implicitly inferred to be \"ext4\" if unspecified. More info: https://kubernetes.io/docs/concepts/storage/volumes#rbd
  @JsonKey(
    
    name: r'fsType',
    required: false,
    includeIfNull: false
  )


  final String? fsType;



      /// image is the rados image name. More info: https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it
  @JsonKey(
    
    name: r'image',
    required: true,
    includeIfNull: false
  )


  final String image;



      /// keyring is the path to key ring for RBDUser. Default is /etc/ceph/keyring. More info: https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it
  @JsonKey(
    
    name: r'keyring',
    required: false,
    includeIfNull: false
  )


  final String? keyring;



      /// monitors is a collection of Ceph monitors. More info: https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it
  @JsonKey(
    
    name: r'monitors',
    required: true,
    includeIfNull: false
  )


  final List<String> monitors;



      /// pool is the rados pool name. Default is rbd. More info: https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it
  @JsonKey(
    
    name: r'pool',
    required: false,
    includeIfNull: false
  )


  final String? pool;



      /// readOnly here will force the ReadOnly setting in VolumeMounts. Defaults to false. More info: https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it
  @JsonKey(
    
    name: r'readOnly',
    required: false,
    includeIfNull: false
  )


  final bool? readOnly;



  @JsonKey(
    
    name: r'secretRef',
    required: false,
    includeIfNull: false
  )


  final V1SecretReference? secretRef;



      /// user is the rados user name. Default is admin. More info: https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it
  @JsonKey(
    
    name: r'user',
    required: false,
    includeIfNull: false
  )


  final String? user;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1RBDPersistentVolumeSource &&
     other.fsType == fsType &&
     other.image == image &&
     other.keyring == keyring &&
     other.monitors == monitors &&
     other.pool == pool &&
     other.readOnly == readOnly &&
     other.secretRef == secretRef &&
     other.user == user;

  @override
  int get hashCode =>
    fsType.hashCode +
    image.hashCode +
    keyring.hashCode +
    monitors.hashCode +
    pool.hashCode +
    readOnly.hashCode +
    secretRef.hashCode +
    user.hashCode;

  factory V1RBDPersistentVolumeSource.fromJson(Map<String, dynamic> json) => _$V1RBDPersistentVolumeSourceFromJson(json);

  Map<String, dynamic> toJson() => _$V1RBDPersistentVolumeSourceToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

