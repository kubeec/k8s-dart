//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'v1_flocker_volume_source.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1FlockerVolumeSource {
  /// Returns a new [V1FlockerVolumeSource] instance.
  V1FlockerVolumeSource({

     this.datasetName,

     this.datasetUUID,
  });

      /// datasetName is Name of the dataset stored as metadata -> name on the dataset for Flocker should be considered as deprecated
  @JsonKey(
    
    name: r'datasetName',
    required: false,
    includeIfNull: false
  )


  final String? datasetName;



      /// datasetUUID is the UUID of the dataset. This is unique identifier of a Flocker dataset
  @JsonKey(
    
    name: r'datasetUUID',
    required: false,
    includeIfNull: false
  )


  final String? datasetUUID;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1FlockerVolumeSource &&
     other.datasetName == datasetName &&
     other.datasetUUID == datasetUUID;

  @override
  int get hashCode =>
    datasetName.hashCode +
    datasetUUID.hashCode;

  factory V1FlockerVolumeSource.fromJson(Map<String, dynamic> json) => _$V1FlockerVolumeSourceFromJson(json);

  Map<String, dynamic> toJson() => _$V1FlockerVolumeSourceToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

