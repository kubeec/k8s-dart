//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'version_info.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class VersionInfo {
  /// Returns a new [VersionInfo] instance.
  VersionInfo({

    required  this.buildDate,

    required  this.compiler,

    required  this.gitCommit,

    required  this.gitTreeState,

    required  this.gitVersion,

    required  this.goVersion,

    required  this.major,

    required  this.minor,

    required  this.platform,
  });

  @JsonKey(
    
    name: r'buildDate',
    required: true,
    includeIfNull: false
  )


  final String buildDate;



  @JsonKey(
    
    name: r'compiler',
    required: true,
    includeIfNull: false
  )


  final String compiler;



  @JsonKey(
    
    name: r'gitCommit',
    required: true,
    includeIfNull: false
  )


  final String gitCommit;



  @JsonKey(
    
    name: r'gitTreeState',
    required: true,
    includeIfNull: false
  )


  final String gitTreeState;



  @JsonKey(
    
    name: r'gitVersion',
    required: true,
    includeIfNull: false
  )


  final String gitVersion;



  @JsonKey(
    
    name: r'goVersion',
    required: true,
    includeIfNull: false
  )


  final String goVersion;



  @JsonKey(
    
    name: r'major',
    required: true,
    includeIfNull: false
  )


  final String major;



  @JsonKey(
    
    name: r'minor',
    required: true,
    includeIfNull: false
  )


  final String minor;



  @JsonKey(
    
    name: r'platform',
    required: true,
    includeIfNull: false
  )


  final String platform;



  @override
  bool operator ==(Object other) => identical(this, other) || other is VersionInfo &&
     other.buildDate == buildDate &&
     other.compiler == compiler &&
     other.gitCommit == gitCommit &&
     other.gitTreeState == gitTreeState &&
     other.gitVersion == gitVersion &&
     other.goVersion == goVersion &&
     other.major == major &&
     other.minor == minor &&
     other.platform == platform;

  @override
  int get hashCode =>
    buildDate.hashCode +
    compiler.hashCode +
    gitCommit.hashCode +
    gitTreeState.hashCode +
    gitVersion.hashCode +
    goVersion.hashCode +
    major.hashCode +
    minor.hashCode +
    platform.hashCode;

  factory VersionInfo.fromJson(Map<String, dynamic> json) => _$VersionInfoFromJson(json);

  Map<String, dynamic> toJson() => _$VersionInfoToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

