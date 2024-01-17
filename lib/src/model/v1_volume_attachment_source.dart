//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/v1_persistent_volume_spec.dart';
import 'package:json_annotation/json_annotation.dart';

part 'v1_volume_attachment_source.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1VolumeAttachmentSource {
  /// Returns a new [V1VolumeAttachmentSource] instance.
  V1VolumeAttachmentSource({

     this.inlineVolumeSpec,

     this.persistentVolumeName,
  });

  @JsonKey(
    
    name: r'inlineVolumeSpec',
    required: false,
    includeIfNull: false
  )


  final V1PersistentVolumeSpec? inlineVolumeSpec;



      /// persistentVolumeName represents the name of the persistent volume to attach.
  @JsonKey(
    
    name: r'persistentVolumeName',
    required: false,
    includeIfNull: false
  )


  final String? persistentVolumeName;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1VolumeAttachmentSource &&
     other.inlineVolumeSpec == inlineVolumeSpec &&
     other.persistentVolumeName == persistentVolumeName;

  @override
  int get hashCode =>
    inlineVolumeSpec.hashCode +
    persistentVolumeName.hashCode;

  factory V1VolumeAttachmentSource.fromJson(Map<String, dynamic> json) => _$V1VolumeAttachmentSourceFromJson(json);

  Map<String, dynamic> toJson() => _$V1VolumeAttachmentSourceToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

