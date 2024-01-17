//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/v1_volume_attachment_source.dart';
import 'package:json_annotation/json_annotation.dart';

part 'v1_volume_attachment_spec.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1VolumeAttachmentSpec {
  /// Returns a new [V1VolumeAttachmentSpec] instance.
  V1VolumeAttachmentSpec({

    required  this.attacher,

    required  this.nodeName,

    required  this.source_,
  });

      /// attacher indicates the name of the volume driver that MUST handle this request. This is the name returned by GetPluginName().
  @JsonKey(
    
    name: r'attacher',
    required: true,
    includeIfNull: false
  )


  final String attacher;



      /// nodeName represents the node that the volume should be attached to.
  @JsonKey(
    
    name: r'nodeName',
    required: true,
    includeIfNull: false
  )


  final String nodeName;



  @JsonKey(
    
    name: r'source',
    required: true,
    includeIfNull: false
  )


  final V1VolumeAttachmentSource source_;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1VolumeAttachmentSpec &&
     other.attacher == attacher &&
     other.nodeName == nodeName &&
     other.source_ == source_;

  @override
  int get hashCode =>
    attacher.hashCode +
    nodeName.hashCode +
    source_.hashCode;

  factory V1VolumeAttachmentSpec.fromJson(Map<String, dynamic> json) => _$V1VolumeAttachmentSpecFromJson(json);

  Map<String, dynamic> toJson() => _$V1VolumeAttachmentSpecToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

