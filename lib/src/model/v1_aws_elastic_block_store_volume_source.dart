//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'v1_aws_elastic_block_store_volume_source.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1AWSElasticBlockStoreVolumeSource {
  /// Returns a new [V1AWSElasticBlockStoreVolumeSource] instance.
  V1AWSElasticBlockStoreVolumeSource({

     this.fsType,

     this.partition,

     this.readOnly,

    required  this.volumeID,
  });

      /// fsType is the filesystem type of the volume that you want to mount. Tip: Ensure that the filesystem type is supported by the host operating system. Examples: \"ext4\", \"xfs\", \"ntfs\". Implicitly inferred to be \"ext4\" if unspecified. More info: https://kubernetes.io/docs/concepts/storage/volumes#awselasticblockstore
  @JsonKey(
    
    name: r'fsType',
    required: false,
    includeIfNull: false
  )


  final String? fsType;



      /// partition is the partition in the volume that you want to mount. If omitted, the default is to mount by volume name. Examples: For volume /dev/sda1, you specify the partition as \"1\". Similarly, the volume partition for /dev/sda is \"0\" (or you can leave the property empty).
  @JsonKey(
    
    name: r'partition',
    required: false,
    includeIfNull: false
  )


  final int? partition;



      /// readOnly value true will force the readOnly setting in VolumeMounts. More info: https://kubernetes.io/docs/concepts/storage/volumes#awselasticblockstore
  @JsonKey(
    
    name: r'readOnly',
    required: false,
    includeIfNull: false
  )


  final bool? readOnly;



      /// volumeID is unique ID of the persistent disk resource in AWS (Amazon EBS volume). More info: https://kubernetes.io/docs/concepts/storage/volumes#awselasticblockstore
  @JsonKey(
    
    name: r'volumeID',
    required: true,
    includeIfNull: false
  )


  final String volumeID;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1AWSElasticBlockStoreVolumeSource &&
     other.fsType == fsType &&
     other.partition == partition &&
     other.readOnly == readOnly &&
     other.volumeID == volumeID;

  @override
  int get hashCode =>
    fsType.hashCode +
    partition.hashCode +
    readOnly.hashCode +
    volumeID.hashCode;

  factory V1AWSElasticBlockStoreVolumeSource.fromJson(Map<String, dynamic> json) => _$V1AWSElasticBlockStoreVolumeSourceFromJson(json);

  Map<String, dynamic> toJson() => _$V1AWSElasticBlockStoreVolumeSourceToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

