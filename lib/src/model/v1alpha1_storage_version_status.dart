//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/v1alpha1_storage_version_condition.dart';
import 'package:k8s/src/model/v1alpha1_server_storage_version.dart';
import 'package:json_annotation/json_annotation.dart';

part 'v1alpha1_storage_version_status.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1alpha1StorageVersionStatus {
  /// Returns a new [V1alpha1StorageVersionStatus] instance.
  V1alpha1StorageVersionStatus({

     this.commonEncodingVersion,

     this.conditions,

     this.storageVersions,
  });

      /// If all API server instances agree on the same encoding storage version, then this field is set to that version. Otherwise this field is left empty. API servers should finish updating its storageVersionStatus entry before serving write operations, so that this field will be in sync with the reality.
  @JsonKey(
    
    name: r'commonEncodingVersion',
    required: false,
    includeIfNull: false
  )


  final String? commonEncodingVersion;



      /// The latest available observations of the storageVersion's state.
  @JsonKey(
    
    name: r'conditions',
    required: false,
    includeIfNull: false
  )


  final List<V1alpha1StorageVersionCondition>? conditions;



      /// The reported versions per API server instance.
  @JsonKey(
    
    name: r'storageVersions',
    required: false,
    includeIfNull: false
  )


  final List<V1alpha1ServerStorageVersion>? storageVersions;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1alpha1StorageVersionStatus &&
     other.commonEncodingVersion == commonEncodingVersion &&
     other.conditions == conditions &&
     other.storageVersions == storageVersions;

  @override
  int get hashCode =>
    commonEncodingVersion.hashCode +
    conditions.hashCode +
    storageVersions.hashCode;

  factory V1alpha1StorageVersionStatus.fromJson(Map<String, dynamic> json) => _$V1alpha1StorageVersionStatusFromJson(json);

  Map<String, dynamic> toJson() => _$V1alpha1StorageVersionStatusToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

