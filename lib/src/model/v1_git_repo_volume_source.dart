//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'v1_git_repo_volume_source.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1GitRepoVolumeSource {
  /// Returns a new [V1GitRepoVolumeSource] instance.
  V1GitRepoVolumeSource({

     this.directory,

    required  this.repository,

     this.revision,
  });

      /// directory is the target directory name. Must not contain or start with '..'.  If '.' is supplied, the volume directory will be the git repository.  Otherwise, if specified, the volume will contain the git repository in the subdirectory with the given name.
  @JsonKey(
    
    name: r'directory',
    required: false,
    includeIfNull: false
  )


  final String? directory;



      /// repository is the URL
  @JsonKey(
    
    name: r'repository',
    required: true,
    includeIfNull: false
  )


  final String repository;



      /// revision is the commit hash for the specified revision.
  @JsonKey(
    
    name: r'revision',
    required: false,
    includeIfNull: false
  )


  final String? revision;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1GitRepoVolumeSource &&
     other.directory == directory &&
     other.repository == repository &&
     other.revision == revision;

  @override
  int get hashCode =>
    directory.hashCode +
    repository.hashCode +
    revision.hashCode;

  factory V1GitRepoVolumeSource.fromJson(Map<String, dynamic> json) => _$V1GitRepoVolumeSourceFromJson(json);

  Map<String, dynamic> toJson() => _$V1GitRepoVolumeSourceToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

