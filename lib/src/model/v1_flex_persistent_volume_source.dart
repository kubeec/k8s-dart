//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/v1_secret_reference.dart';
import 'package:json_annotation/json_annotation.dart';

part 'v1_flex_persistent_volume_source.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1FlexPersistentVolumeSource {
  /// Returns a new [V1FlexPersistentVolumeSource] instance.
  V1FlexPersistentVolumeSource({

    required  this.driver,

     this.fsType,

     this.options,

     this.readOnly,

     this.secretRef,
  });

      /// driver is the name of the driver to use for this volume.
  @JsonKey(
    
    name: r'driver',
    required: true,
    includeIfNull: false
  )


  final String driver;



      /// fsType is the Filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. \"ext4\", \"xfs\", \"ntfs\". The default filesystem depends on FlexVolume script.
  @JsonKey(
    
    name: r'fsType',
    required: false,
    includeIfNull: false
  )


  final String? fsType;



      /// options is Optional: this field holds extra command options if any.
  @JsonKey(
    
    name: r'options',
    required: false,
    includeIfNull: false
  )


  final Map<String, String>? options;



      /// readOnly is Optional: defaults to false (read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.
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



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1FlexPersistentVolumeSource &&
     other.driver == driver &&
     other.fsType == fsType &&
     other.options == options &&
     other.readOnly == readOnly &&
     other.secretRef == secretRef;

  @override
  int get hashCode =>
    driver.hashCode +
    fsType.hashCode +
    options.hashCode +
    readOnly.hashCode +
    secretRef.hashCode;

  factory V1FlexPersistentVolumeSource.fromJson(Map<String, dynamic> json) => _$V1FlexPersistentVolumeSourceFromJson(json);

  Map<String, dynamic> toJson() => _$V1FlexPersistentVolumeSourceToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

