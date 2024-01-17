//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'v1_empty_dir_volume_source.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1EmptyDirVolumeSource {
  /// Returns a new [V1EmptyDirVolumeSource] instance.
  V1EmptyDirVolumeSource({

     this.medium,

     this.sizeLimit,
  });

      /// medium represents what type of storage medium should back this directory. The default is \"\" which means to use the node's default medium. Must be an empty string (default) or Memory. More info: https://kubernetes.io/docs/concepts/storage/volumes#emptydir
  @JsonKey(
    
    name: r'medium',
    required: false,
    includeIfNull: false
  )


  final String? medium;



      /// sizeLimit is the total amount of local storage required for this EmptyDir volume. The size limit is also applicable for memory medium. The maximum usage on memory medium EmptyDir would be the minimum value between the SizeLimit specified here and the sum of memory limits of all containers in a pod. The default is nil which means that the limit is undefined. More info: https://kubernetes.io/docs/concepts/storage/volumes#emptydir
  @JsonKey(
    
    name: r'sizeLimit',
    required: false,
    includeIfNull: false
  )


  final String? sizeLimit;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1EmptyDirVolumeSource &&
     other.medium == medium &&
     other.sizeLimit == sizeLimit;

  @override
  int get hashCode =>
    medium.hashCode +
    sizeLimit.hashCode;

  factory V1EmptyDirVolumeSource.fromJson(Map<String, dynamic> json) => _$V1EmptyDirVolumeSourceFromJson(json);

  Map<String, dynamic> toJson() => _$V1EmptyDirVolumeSourceToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

