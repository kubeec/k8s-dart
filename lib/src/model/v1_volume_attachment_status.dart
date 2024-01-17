//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/v1_volume_error.dart';
import 'package:json_annotation/json_annotation.dart';

part 'v1_volume_attachment_status.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1VolumeAttachmentStatus {
  /// Returns a new [V1VolumeAttachmentStatus] instance.
  V1VolumeAttachmentStatus({

     this.attachError,

    required  this.attached,

     this.attachmentMetadata,

     this.detachError,
  });

  @JsonKey(
    
    name: r'attachError',
    required: false,
    includeIfNull: false
  )


  final V1VolumeError? attachError;



      /// attached indicates the volume is successfully attached. This field must only be set by the entity completing the attach operation, i.e. the external-attacher.
  @JsonKey(
    
    name: r'attached',
    required: true,
    includeIfNull: false
  )


  final bool attached;



      /// attachmentMetadata is populated with any information returned by the attach operation, upon successful attach, that must be passed into subsequent WaitForAttach or Mount calls. This field must only be set by the entity completing the attach operation, i.e. the external-attacher.
  @JsonKey(
    
    name: r'attachmentMetadata',
    required: false,
    includeIfNull: false
  )


  final Map<String, String>? attachmentMetadata;



  @JsonKey(
    
    name: r'detachError',
    required: false,
    includeIfNull: false
  )


  final V1VolumeError? detachError;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1VolumeAttachmentStatus &&
     other.attachError == attachError &&
     other.attached == attached &&
     other.attachmentMetadata == attachmentMetadata &&
     other.detachError == detachError;

  @override
  int get hashCode =>
    attachError.hashCode +
    attached.hashCode +
    attachmentMetadata.hashCode +
    detachError.hashCode;

  factory V1VolumeAttachmentStatus.fromJson(Map<String, dynamic> json) => _$V1VolumeAttachmentStatusFromJson(json);

  Map<String, dynamic> toJson() => _$V1VolumeAttachmentStatusToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

