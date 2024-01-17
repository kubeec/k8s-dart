//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'v1_azure_file_volume_source.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1AzureFileVolumeSource {
  /// Returns a new [V1AzureFileVolumeSource] instance.
  V1AzureFileVolumeSource({

     this.readOnly,

    required  this.secretName,

    required  this.shareName,
  });

      /// readOnly defaults to false (read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.
  @JsonKey(
    
    name: r'readOnly',
    required: false,
    includeIfNull: false
  )


  final bool? readOnly;



      /// secretName is the  name of secret that contains Azure Storage Account Name and Key
  @JsonKey(
    
    name: r'secretName',
    required: true,
    includeIfNull: false
  )


  final String secretName;



      /// shareName is the azure share Name
  @JsonKey(
    
    name: r'shareName',
    required: true,
    includeIfNull: false
  )


  final String shareName;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1AzureFileVolumeSource &&
     other.readOnly == readOnly &&
     other.secretName == secretName &&
     other.shareName == shareName;

  @override
  int get hashCode =>
    readOnly.hashCode +
    secretName.hashCode +
    shareName.hashCode;

  factory V1AzureFileVolumeSource.fromJson(Map<String, dynamic> json) => _$V1AzureFileVolumeSourceFromJson(json);

  Map<String, dynamic> toJson() => _$V1AzureFileVolumeSourceToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

