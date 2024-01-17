//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/v1_downward_api_volume_file.dart';
import 'package:json_annotation/json_annotation.dart';

part 'v1_downward_api_volume_source.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1DownwardAPIVolumeSource {
  /// Returns a new [V1DownwardAPIVolumeSource] instance.
  V1DownwardAPIVolumeSource({

     this.defaultMode,

     this.items,
  });

      /// Optional: mode bits to use on created files by default. Must be a Optional: mode bits used to set permissions on created files by default. Must be an octal value between 0000 and 0777 or a decimal value between 0 and 511. YAML accepts both octal and decimal values, JSON requires decimal values for mode bits. Defaults to 0644. Directories within the path are not affected by this setting. This might be in conflict with other options that affect the file mode, like fsGroup, and the result can be other mode bits set.
  @JsonKey(
    
    name: r'defaultMode',
    required: false,
    includeIfNull: false
  )


  final int? defaultMode;



      /// Items is a list of downward API volume file
  @JsonKey(
    
    name: r'items',
    required: false,
    includeIfNull: false
  )


  final List<V1DownwardAPIVolumeFile>? items;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1DownwardAPIVolumeSource &&
     other.defaultMode == defaultMode &&
     other.items == items;

  @override
  int get hashCode =>
    defaultMode.hashCode +
    items.hashCode;

  factory V1DownwardAPIVolumeSource.fromJson(Map<String, dynamic> json) => _$V1DownwardAPIVolumeSourceFromJson(json);

  Map<String, dynamic> toJson() => _$V1DownwardAPIVolumeSourceToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

