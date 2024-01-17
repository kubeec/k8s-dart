//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/v1_downward_api_volume_file.dart';
import 'package:json_annotation/json_annotation.dart';

part 'v1_downward_api_projection.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1DownwardAPIProjection {
  /// Returns a new [V1DownwardAPIProjection] instance.
  V1DownwardAPIProjection({

     this.items,
  });

      /// Items is a list of DownwardAPIVolume file
  @JsonKey(
    
    name: r'items',
    required: false,
    includeIfNull: false
  )


  final List<V1DownwardAPIVolumeFile>? items;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1DownwardAPIProjection &&
     other.items == items;

  @override
  int get hashCode =>
    items.hashCode;

  factory V1DownwardAPIProjection.fromJson(Map<String, dynamic> json) => _$V1DownwardAPIProjectionFromJson(json);

  Map<String, dynamic> toJson() => _$V1DownwardAPIProjectionToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

