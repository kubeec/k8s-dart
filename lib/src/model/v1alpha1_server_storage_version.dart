//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'v1alpha1_server_storage_version.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1alpha1ServerStorageVersion {
  /// Returns a new [V1alpha1ServerStorageVersion] instance.
  V1alpha1ServerStorageVersion({

     this.apiServerID,

     this.decodableVersions,

     this.encodingVersion,
  });

      /// The ID of the reporting API server.
  @JsonKey(
    
    name: r'apiServerID',
    required: false,
    includeIfNull: false
  )


  final String? apiServerID;



      /// The API server can decode objects encoded in these versions. The encodingVersion must be included in the decodableVersions.
  @JsonKey(
    
    name: r'decodableVersions',
    required: false,
    includeIfNull: false
  )


  final List<String>? decodableVersions;



      /// The API server encodes the object to this version when persisting it in the backend (e.g., etcd).
  @JsonKey(
    
    name: r'encodingVersion',
    required: false,
    includeIfNull: false
  )


  final String? encodingVersion;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1alpha1ServerStorageVersion &&
     other.apiServerID == apiServerID &&
     other.decodableVersions == decodableVersions &&
     other.encodingVersion == encodingVersion;

  @override
  int get hashCode =>
    apiServerID.hashCode +
    decodableVersions.hashCode +
    encodingVersion.hashCode;

  factory V1alpha1ServerStorageVersion.fromJson(Map<String, dynamic> json) => _$V1alpha1ServerStorageVersionFromJson(json);

  Map<String, dynamic> toJson() => _$V1alpha1ServerStorageVersionToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

