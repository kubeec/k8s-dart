//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'v1_azure_file_persistent_volume_source.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1AzureFilePersistentVolumeSource {
  /// Returns a new [V1AzureFilePersistentVolumeSource] instance.
  V1AzureFilePersistentVolumeSource({

     this.readOnly,

    required  this.secretName,

     this.secretNamespace,

    required  this.shareName,
  });

      /// readOnly defaults to false (read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.
  @JsonKey(
    
    name: r'readOnly',
    required: false,
    includeIfNull: false
  )


  final bool? readOnly;



      /// secretName is the name of secret that contains Azure Storage Account Name and Key
  @JsonKey(
    
    name: r'secretName',
    required: true,
    includeIfNull: false
  )


  final String secretName;



      /// secretNamespace is the namespace of the secret that contains Azure Storage Account Name and Key default is the same as the Pod
  @JsonKey(
    
    name: r'secretNamespace',
    required: false,
    includeIfNull: false
  )


  final String? secretNamespace;



      /// shareName is the azure Share Name
  @JsonKey(
    
    name: r'shareName',
    required: true,
    includeIfNull: false
  )


  final String shareName;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1AzureFilePersistentVolumeSource &&
     other.readOnly == readOnly &&
     other.secretName == secretName &&
     other.secretNamespace == secretNamespace &&
     other.shareName == shareName;

  @override
  int get hashCode =>
    readOnly.hashCode +
    secretName.hashCode +
    secretNamespace.hashCode +
    shareName.hashCode;

  factory V1AzureFilePersistentVolumeSource.fromJson(Map<String, dynamic> json) => _$V1AzureFilePersistentVolumeSourceFromJson(json);

  Map<String, dynamic> toJson() => _$V1AzureFilePersistentVolumeSourceToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

