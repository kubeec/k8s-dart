//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/v1_secret_reference.dart';
import 'package:json_annotation/json_annotation.dart';

part 'v1_ceph_fs_persistent_volume_source.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1CephFSPersistentVolumeSource {
  /// Returns a new [V1CephFSPersistentVolumeSource] instance.
  V1CephFSPersistentVolumeSource({

    required  this.monitors,

     this.path,

     this.readOnly,

     this.secretFile,

     this.secretRef,

     this.user,
  });

      /// monitors is Required: Monitors is a collection of Ceph monitors More info: https://examples.k8s.io/volumes/cephfs/README.md#how-to-use-it
  @JsonKey(
    
    name: r'monitors',
    required: true,
    includeIfNull: false
  )


  final List<String> monitors;



      /// path is Optional: Used as the mounted root, rather than the full Ceph tree, default is /
  @JsonKey(
    
    name: r'path',
    required: false,
    includeIfNull: false
  )


  final String? path;



      /// readOnly is Optional: Defaults to false (read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts. More info: https://examples.k8s.io/volumes/cephfs/README.md#how-to-use-it
  @JsonKey(
    
    name: r'readOnly',
    required: false,
    includeIfNull: false
  )


  final bool? readOnly;



      /// secretFile is Optional: SecretFile is the path to key ring for User, default is /etc/ceph/user.secret More info: https://examples.k8s.io/volumes/cephfs/README.md#how-to-use-it
  @JsonKey(
    
    name: r'secretFile',
    required: false,
    includeIfNull: false
  )


  final String? secretFile;



  @JsonKey(
    
    name: r'secretRef',
    required: false,
    includeIfNull: false
  )


  final V1SecretReference? secretRef;



      /// user is Optional: User is the rados user name, default is admin More info: https://examples.k8s.io/volumes/cephfs/README.md#how-to-use-it
  @JsonKey(
    
    name: r'user',
    required: false,
    includeIfNull: false
  )


  final String? user;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1CephFSPersistentVolumeSource &&
     other.monitors == monitors &&
     other.path == path &&
     other.readOnly == readOnly &&
     other.secretFile == secretFile &&
     other.secretRef == secretRef &&
     other.user == user;

  @override
  int get hashCode =>
    monitors.hashCode +
    path.hashCode +
    readOnly.hashCode +
    secretFile.hashCode +
    secretRef.hashCode +
    user.hashCode;

  factory V1CephFSPersistentVolumeSource.fromJson(Map<String, dynamic> json) => _$V1CephFSPersistentVolumeSourceFromJson(json);

  Map<String, dynamic> toJson() => _$V1CephFSPersistentVolumeSourceToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

