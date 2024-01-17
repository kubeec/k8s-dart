//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'v1_key_to_path.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1KeyToPath {
  /// Returns a new [V1KeyToPath] instance.
  V1KeyToPath({

    required  this.key,

     this.mode,

    required  this.path,
  });

      /// key is the key to project.
  @JsonKey(
    
    name: r'key',
    required: true,
    includeIfNull: false
  )


  final String key;



      /// mode is Optional: mode bits used to set permissions on this file. Must be an octal value between 0000 and 0777 or a decimal value between 0 and 511. YAML accepts both octal and decimal values, JSON requires decimal values for mode bits. If not specified, the volume defaultMode will be used. This might be in conflict with other options that affect the file mode, like fsGroup, and the result can be other mode bits set.
  @JsonKey(
    
    name: r'mode',
    required: false,
    includeIfNull: false
  )


  final int? mode;



      /// path is the relative path of the file to map the key to. May not be an absolute path. May not contain the path element '..'. May not start with the string '..'.
  @JsonKey(
    
    name: r'path',
    required: true,
    includeIfNull: false
  )


  final String path;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1KeyToPath &&
     other.key == key &&
     other.mode == mode &&
     other.path == path;

  @override
  int get hashCode =>
    key.hashCode +
    mode.hashCode +
    path.hashCode;

  factory V1KeyToPath.fromJson(Map<String, dynamic> json) => _$V1KeyToPathFromJson(json);

  Map<String, dynamic> toJson() => _$V1KeyToPathToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

