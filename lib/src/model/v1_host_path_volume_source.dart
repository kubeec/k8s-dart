//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'v1_host_path_volume_source.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1HostPathVolumeSource {
  /// Returns a new [V1HostPathVolumeSource] instance.
  V1HostPathVolumeSource({

    required  this.path,

     this.type,
  });

      /// path of the directory on the host. If the path is a symlink, it will follow the link to the real path. More info: https://kubernetes.io/docs/concepts/storage/volumes#hostpath
  @JsonKey(
    
    name: r'path',
    required: true,
    includeIfNull: false
  )


  final String path;



      /// type for HostPath Volume Defaults to \"\" More info: https://kubernetes.io/docs/concepts/storage/volumes#hostpath
  @JsonKey(
    
    name: r'type',
    required: false,
    includeIfNull: false
  )


  final String? type;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1HostPathVolumeSource &&
     other.path == path &&
     other.type == type;

  @override
  int get hashCode =>
    path.hashCode +
    type.hashCode;

  factory V1HostPathVolumeSource.fromJson(Map<String, dynamic> json) => _$V1HostPathVolumeSourceFromJson(json);

  Map<String, dynamic> toJson() => _$V1HostPathVolumeSourceToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

