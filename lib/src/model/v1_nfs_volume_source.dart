//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'v1_nfs_volume_source.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1NFSVolumeSource {
  /// Returns a new [V1NFSVolumeSource] instance.
  V1NFSVolumeSource({

    required  this.path,

     this.readOnly,

    required  this.server,
  });

      /// path that is exported by the NFS server. More info: https://kubernetes.io/docs/concepts/storage/volumes#nfs
  @JsonKey(
    
    name: r'path',
    required: true,
    includeIfNull: false
  )


  final String path;



      /// readOnly here will force the NFS export to be mounted with read-only permissions. Defaults to false. More info: https://kubernetes.io/docs/concepts/storage/volumes#nfs
  @JsonKey(
    
    name: r'readOnly',
    required: false,
    includeIfNull: false
  )


  final bool? readOnly;



      /// server is the hostname or IP address of the NFS server. More info: https://kubernetes.io/docs/concepts/storage/volumes#nfs
  @JsonKey(
    
    name: r'server',
    required: true,
    includeIfNull: false
  )


  final String server;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1NFSVolumeSource &&
     other.path == path &&
     other.readOnly == readOnly &&
     other.server == server;

  @override
  int get hashCode =>
    path.hashCode +
    readOnly.hashCode +
    server.hashCode;

  factory V1NFSVolumeSource.fromJson(Map<String, dynamic> json) => _$V1NFSVolumeSourceFromJson(json);

  Map<String, dynamic> toJson() => _$V1NFSVolumeSourceToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

