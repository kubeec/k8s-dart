//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'v1_managed_fields_entry.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1ManagedFieldsEntry {
  /// Returns a new [V1ManagedFieldsEntry] instance.
  V1ManagedFieldsEntry({

     this.apiVersion,

     this.fieldsType,

     this.fieldsV1,

     this.manager,

     this.operation,

     this.subresource,

     this.time,
  });

      /// APIVersion defines the version of this resource that this field set applies to. The format is \"group/version\" just like the top-level APIVersion field. It is necessary to track the version of a field set because it cannot be automatically converted.
  @JsonKey(
    
    name: r'apiVersion',
    required: false,
    includeIfNull: false
  )


  final String? apiVersion;



      /// FieldsType is the discriminator for the different fields format and version. There is currently only one possible value: \"FieldsV1\"
  @JsonKey(
    
    name: r'fieldsType',
    required: false,
    includeIfNull: false
  )


  final String? fieldsType;



      /// FieldsV1 holds the first JSON version format as described in the \"FieldsV1\" type.
  @JsonKey(
    
    name: r'fieldsV1',
    required: false,
    includeIfNull: false
  )


  final Object? fieldsV1;



      /// Manager is an identifier of the workflow managing these fields.
  @JsonKey(
    
    name: r'manager',
    required: false,
    includeIfNull: false
  )


  final String? manager;



      /// Operation is the type of operation which lead to this ManagedFieldsEntry being created. The only valid values for this field are 'Apply' and 'Update'.
  @JsonKey(
    
    name: r'operation',
    required: false,
    includeIfNull: false
  )


  final String? operation;



      /// Subresource is the name of the subresource used to update that object, or empty string if the object was updated through the main resource. The value of this field is used to distinguish between managers, even if they share the same name. For example, a status update will be distinct from a regular update using the same manager name. Note that the APIVersion field is not related to the Subresource field and it always corresponds to the version of the main resource.
  @JsonKey(
    
    name: r'subresource',
    required: false,
    includeIfNull: false
  )


  final String? subresource;



      /// Time is the timestamp of when the ManagedFields entry was added. The timestamp will also be updated if a field is added, the manager changes any of the owned fields value or removes a field. The timestamp does not update when a field is removed from the entry because another manager took it over.
  @JsonKey(
    
    name: r'time',
    required: false,
    includeIfNull: false
  )


  final DateTime? time;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1ManagedFieldsEntry &&
     other.apiVersion == apiVersion &&
     other.fieldsType == fieldsType &&
     other.fieldsV1 == fieldsV1 &&
     other.manager == manager &&
     other.operation == operation &&
     other.subresource == subresource &&
     other.time == time;

  @override
  int get hashCode =>
    apiVersion.hashCode +
    fieldsType.hashCode +
    fieldsV1.hashCode +
    manager.hashCode +
    operation.hashCode +
    subresource.hashCode +
    time.hashCode;

  factory V1ManagedFieldsEntry.fromJson(Map<String, dynamic> json) => _$V1ManagedFieldsEntryFromJson(json);

  Map<String, dynamic> toJson() => _$V1ManagedFieldsEntryToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

