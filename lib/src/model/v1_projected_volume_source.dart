//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/v1_volume_projection.dart';
import 'package:json_annotation/json_annotation.dart';

part 'v1_projected_volume_source.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1ProjectedVolumeSource {
  /// Returns a new [V1ProjectedVolumeSource] instance.
  V1ProjectedVolumeSource({

     this.defaultMode,

     this.sources,
  });

      /// defaultMode are the mode bits used to set permissions on created files by default. Must be an octal value between 0000 and 0777 or a decimal value between 0 and 511. YAML accepts both octal and decimal values, JSON requires decimal values for mode bits. Directories within the path are not affected by this setting. This might be in conflict with other options that affect the file mode, like fsGroup, and the result can be other mode bits set.
  @JsonKey(
    
    name: r'defaultMode',
    required: false,
    includeIfNull: false
  )


  final int? defaultMode;



      /// sources is the list of volume projections
  @JsonKey(
    
    name: r'sources',
    required: false,
    includeIfNull: false
  )


  final List<V1VolumeProjection>? sources;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1ProjectedVolumeSource &&
     other.defaultMode == defaultMode &&
     other.sources == sources;

  @override
  int get hashCode =>
    defaultMode.hashCode +
    sources.hashCode;

  factory V1ProjectedVolumeSource.fromJson(Map<String, dynamic> json) => _$V1ProjectedVolumeSourceFromJson(json);

  Map<String, dynamic> toJson() => _$V1ProjectedVolumeSourceToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

