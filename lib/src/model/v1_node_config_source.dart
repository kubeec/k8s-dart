//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/v1_config_map_node_config_source.dart';
import 'package:json_annotation/json_annotation.dart';

part 'v1_node_config_source.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1NodeConfigSource {
  /// Returns a new [V1NodeConfigSource] instance.
  V1NodeConfigSource({

     this.configMap,
  });

  @JsonKey(
    
    name: r'configMap',
    required: false,
    includeIfNull: false
  )


  final V1ConfigMapNodeConfigSource? configMap;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1NodeConfigSource &&
     other.configMap == configMap;

  @override
  int get hashCode =>
    configMap.hashCode;

  factory V1NodeConfigSource.fromJson(Map<String, dynamic> json) => _$V1NodeConfigSourceFromJson(json);

  Map<String, dynamic> toJson() => _$V1NodeConfigSourceToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

