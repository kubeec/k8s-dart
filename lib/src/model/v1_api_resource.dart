//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'v1_api_resource.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1APIResource {
  /// Returns a new [V1APIResource] instance.
  V1APIResource({

     this.categories,

     this.group,

    required  this.kind,

    required  this.name,

    required  this.namespaced,

     this.shortNames,

    required  this.singularName,

     this.storageVersionHash,

    required  this.verbs,

     this.version,
  });

      /// categories is a list of the grouped resources this resource belongs to (e.g. 'all')
  @JsonKey(
    
    name: r'categories',
    required: false,
    includeIfNull: false
  )


  final List<String>? categories;



      /// group is the preferred group of the resource.  Empty implies the group of the containing resource list. For subresources, this may have a different value, for example: Scale\".
  @JsonKey(
    
    name: r'group',
    required: false,
    includeIfNull: false
  )


  final String? group;



      /// kind is the kind for the resource (e.g. 'Foo' is the kind for a resource 'foo')
  @JsonKey(
    
    name: r'kind',
    required: true,
    includeIfNull: false
  )


  final String kind;



      /// name is the plural name of the resource.
  @JsonKey(
    
    name: r'name',
    required: true,
    includeIfNull: false
  )


  final String name;



      /// namespaced indicates if a resource is namespaced or not.
  @JsonKey(
    
    name: r'namespaced',
    required: true,
    includeIfNull: false
  )


  final bool namespaced;



      /// shortNames is a list of suggested short names of the resource.
  @JsonKey(
    
    name: r'shortNames',
    required: false,
    includeIfNull: false
  )


  final List<String>? shortNames;



      /// singularName is the singular name of the resource.  This allows clients to handle plural and singular opaquely. The singularName is more correct for reporting status on a single item and both singular and plural are allowed from the kubectl CLI interface.
  @JsonKey(
    
    name: r'singularName',
    required: true,
    includeIfNull: false
  )


  final String singularName;



      /// The hash value of the storage version, the version this resource is converted to when written to the data store. Value must be treated as opaque by clients. Only equality comparison on the value is valid. This is an alpha feature and may change or be removed in the future. The field is populated by the apiserver only if the StorageVersionHash feature gate is enabled. This field will remain optional even if it graduates.
  @JsonKey(
    
    name: r'storageVersionHash',
    required: false,
    includeIfNull: false
  )


  final String? storageVersionHash;



      /// verbs is a list of supported kube verbs (this includes get, list, watch, create, update, patch, delete, deletecollection, and proxy)
  @JsonKey(
    
    name: r'verbs',
    required: true,
    includeIfNull: false
  )


  final List<String> verbs;



      /// version is the preferred version of the resource.  Empty implies the version of the containing resource list For subresources, this may have a different value, for example: v1 (while inside a v1beta1 version of the core resource's group)\".
  @JsonKey(
    
    name: r'version',
    required: false,
    includeIfNull: false
  )


  final String? version;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1APIResource &&
     other.categories == categories &&
     other.group == group &&
     other.kind == kind &&
     other.name == name &&
     other.namespaced == namespaced &&
     other.shortNames == shortNames &&
     other.singularName == singularName &&
     other.storageVersionHash == storageVersionHash &&
     other.verbs == verbs &&
     other.version == version;

  @override
  int get hashCode =>
    categories.hashCode +
    group.hashCode +
    kind.hashCode +
    name.hashCode +
    namespaced.hashCode +
    shortNames.hashCode +
    singularName.hashCode +
    storageVersionHash.hashCode +
    verbs.hashCode +
    version.hashCode;

  factory V1APIResource.fromJson(Map<String, dynamic> json) => _$V1APIResourceFromJson(json);

  Map<String, dynamic> toJson() => _$V1APIResourceToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

