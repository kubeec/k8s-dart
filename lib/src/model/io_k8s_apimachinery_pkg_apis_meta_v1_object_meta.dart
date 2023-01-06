//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:k8s/src/model/io_k8s_apimachinery_pkg_apis_meta_v1_managed_fields_entry.dart';
import 'package:k8s/src/model/io_k8s_apimachinery_pkg_apis_meta_v1_owner_reference.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_apimachinery_pkg_apis_meta_v1_object_meta.g.dart';

/// ObjectMeta is metadata that all persisted resources must have, which includes all objects users must create.
///
/// Properties:
/// * [annotations] - Annotations is an unstructured key value map stored with a resource that may be set by external tools to store and retrieve arbitrary metadata. They are not queryable and should be preserved when modifying objects. More info: http://kubernetes.io/docs/user-guide/annotations
/// * [creationTimestamp] - Time is a wrapper around time.Time which supports correct marshaling to YAML and JSON.  Wrappers are provided for many of the factory methods that the time package offers.
/// * [deletionGracePeriodSeconds] - Number of seconds allowed for this object to gracefully terminate before it will be removed from the system. Only set when deletionTimestamp is also set. May only be shortened. Read-only.
/// * [deletionTimestamp] - Time is a wrapper around time.Time which supports correct marshaling to YAML and JSON.  Wrappers are provided for many of the factory methods that the time package offers.
/// * [finalizers] - Must be empty before the object is deleted from the registry. Each entry is an identifier for the responsible component that will remove the entry from the list. If the deletionTimestamp of the object is non-nil, entries in this list can only be removed. Finalizers may be processed and removed in any order.  Order is NOT enforced because it introduces significant risk of stuck finalizers. finalizers is a shared field, any actor with permission can reorder it. If the finalizer list is processed in order, then this can lead to a situation in which the component responsible for the first finalizer in the list is waiting for a signal (field value, external system, or other) produced by a component responsible for a finalizer later in the list, resulting in a deadlock. Without enforced ordering finalizers are free to order amongst themselves and are not vulnerable to ordering changes in the list.
/// * [generateName] - GenerateName is an optional prefix, used by the server, to generate a unique name ONLY IF the Name field has not been provided. If this field is used, the name returned to the client will be different than the name passed. This value will also be combined with a unique suffix. The provided value has the same validation rules as the Name field, and may be truncated by the length of the suffix required to make the value unique on the server.  If this field is specified and the generated name exists, the server will return a 409.  Applied only if Name is not specified. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#idempotency
/// * [generation] - A sequence number representing a specific generation of the desired state. Populated by the system. Read-only.
/// * [labels] - Map of string keys and values that can be used to organize and categorize (scope and select) objects. May match selectors of replication controllers and services. More info: http://kubernetes.io/docs/user-guide/labels
/// * [managedFields] - ManagedFields maps workflow-id and version to the set of fields that are managed by that workflow. This is mostly for internal housekeeping, and users typically shouldn't need to set or understand this field. A workflow can be the user's name, a controller's name, or the name of a specific apply path like \"ci-cd\". The set of fields is always in the version that the workflow used when modifying the object.
/// * [name] - Name must be unique within a namespace. Is required when creating resources, although some resources may allow a client to request the generation of an appropriate name automatically. Name is primarily intended for creation idempotence and configuration definition. Cannot be updated. More info: http://kubernetes.io/docs/user-guide/identifiers#names
/// * [namespace] - Namespace defines the space within which each name must be unique. An empty namespace is equivalent to the \"default\" namespace, but \"default\" is the canonical representation. Not all objects are required to be scoped to a namespace - the value of this field for those objects will be empty.  Must be a DNS_LABEL. Cannot be updated. More info: http://kubernetes.io/docs/user-guide/namespaces
/// * [ownerReferences] - List of objects depended by this object. If ALL objects in the list have been deleted, this object will be garbage collected. If this object is managed by a controller, then an entry in this list will point to this controller, with the controller field set to true. There cannot be more than one managing controller.
/// * [resourceVersion] - An opaque value that represents the internal version of this object that can be used by clients to determine when objects have changed. May be used for optimistic concurrency, change detection, and the watch operation on a resource or set of resources. Clients must treat these values as opaque and passed unmodified back to the server. They may only be valid for a particular resource or set of resources.  Populated by the system. Read-only. Value must be treated as opaque by clients and . More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#concurrency-control-and-consistency
/// * [selfLink] - Deprecated: selfLink is a legacy read-only field that is no longer populated by the system.
/// * [uid] - UID is the unique in time and space value for this object. It is typically generated by the server on successful creation of a resource and is not allowed to change on PUT operations.  Populated by the system. Read-only. More info: http://kubernetes.io/docs/user-guide/identifiers#uids
@BuiltValue()
abstract class IoK8sApimachineryPkgApisMetaV1ObjectMeta implements Built<IoK8sApimachineryPkgApisMetaV1ObjectMeta, IoK8sApimachineryPkgApisMetaV1ObjectMetaBuilder> {
  /// Annotations is an unstructured key value map stored with a resource that may be set by external tools to store and retrieve arbitrary metadata. They are not queryable and should be preserved when modifying objects. More info: http://kubernetes.io/docs/user-guide/annotations
  @BuiltValueField(wireName: r'annotations')
  BuiltMap<String, String>? get annotations;

  /// Time is a wrapper around time.Time which supports correct marshaling to YAML and JSON.  Wrappers are provided for many of the factory methods that the time package offers.
  @BuiltValueField(wireName: r'creationTimestamp')
  DateTime? get creationTimestamp;

  /// Number of seconds allowed for this object to gracefully terminate before it will be removed from the system. Only set when deletionTimestamp is also set. May only be shortened. Read-only.
  @BuiltValueField(wireName: r'deletionGracePeriodSeconds')
  int? get deletionGracePeriodSeconds;

  /// Time is a wrapper around time.Time which supports correct marshaling to YAML and JSON.  Wrappers are provided for many of the factory methods that the time package offers.
  @BuiltValueField(wireName: r'deletionTimestamp')
  DateTime? get deletionTimestamp;

  /// Must be empty before the object is deleted from the registry. Each entry is an identifier for the responsible component that will remove the entry from the list. If the deletionTimestamp of the object is non-nil, entries in this list can only be removed. Finalizers may be processed and removed in any order.  Order is NOT enforced because it introduces significant risk of stuck finalizers. finalizers is a shared field, any actor with permission can reorder it. If the finalizer list is processed in order, then this can lead to a situation in which the component responsible for the first finalizer in the list is waiting for a signal (field value, external system, or other) produced by a component responsible for a finalizer later in the list, resulting in a deadlock. Without enforced ordering finalizers are free to order amongst themselves and are not vulnerable to ordering changes in the list.
  @BuiltValueField(wireName: r'finalizers')
  BuiltList<String>? get finalizers;

  /// GenerateName is an optional prefix, used by the server, to generate a unique name ONLY IF the Name field has not been provided. If this field is used, the name returned to the client will be different than the name passed. This value will also be combined with a unique suffix. The provided value has the same validation rules as the Name field, and may be truncated by the length of the suffix required to make the value unique on the server.  If this field is specified and the generated name exists, the server will return a 409.  Applied only if Name is not specified. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#idempotency
  @BuiltValueField(wireName: r'generateName')
  String? get generateName;

  /// A sequence number representing a specific generation of the desired state. Populated by the system. Read-only.
  @BuiltValueField(wireName: r'generation')
  int? get generation;

  /// Map of string keys and values that can be used to organize and categorize (scope and select) objects. May match selectors of replication controllers and services. More info: http://kubernetes.io/docs/user-guide/labels
  @BuiltValueField(wireName: r'labels')
  BuiltMap<String, String>? get labels;

  /// ManagedFields maps workflow-id and version to the set of fields that are managed by that workflow. This is mostly for internal housekeeping, and users typically shouldn't need to set or understand this field. A workflow can be the user's name, a controller's name, or the name of a specific apply path like \"ci-cd\". The set of fields is always in the version that the workflow used when modifying the object.
  @BuiltValueField(wireName: r'managedFields')
  BuiltList<IoK8sApimachineryPkgApisMetaV1ManagedFieldsEntry>? get managedFields;

  /// Name must be unique within a namespace. Is required when creating resources, although some resources may allow a client to request the generation of an appropriate name automatically. Name is primarily intended for creation idempotence and configuration definition. Cannot be updated. More info: http://kubernetes.io/docs/user-guide/identifiers#names
  @BuiltValueField(wireName: r'name')
  String? get name;

  /// Namespace defines the space within which each name must be unique. An empty namespace is equivalent to the \"default\" namespace, but \"default\" is the canonical representation. Not all objects are required to be scoped to a namespace - the value of this field for those objects will be empty.  Must be a DNS_LABEL. Cannot be updated. More info: http://kubernetes.io/docs/user-guide/namespaces
  @BuiltValueField(wireName: r'namespace')
  String? get namespace;

  /// List of objects depended by this object. If ALL objects in the list have been deleted, this object will be garbage collected. If this object is managed by a controller, then an entry in this list will point to this controller, with the controller field set to true. There cannot be more than one managing controller.
  @BuiltValueField(wireName: r'ownerReferences')
  BuiltList<IoK8sApimachineryPkgApisMetaV1OwnerReference>? get ownerReferences;

  /// An opaque value that represents the internal version of this object that can be used by clients to determine when objects have changed. May be used for optimistic concurrency, change detection, and the watch operation on a resource or set of resources. Clients must treat these values as opaque and passed unmodified back to the server. They may only be valid for a particular resource or set of resources.  Populated by the system. Read-only. Value must be treated as opaque by clients and . More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#concurrency-control-and-consistency
  @BuiltValueField(wireName: r'resourceVersion')
  String? get resourceVersion;

  /// Deprecated: selfLink is a legacy read-only field that is no longer populated by the system.
  @BuiltValueField(wireName: r'selfLink')
  String? get selfLink;

  /// UID is the unique in time and space value for this object. It is typically generated by the server on successful creation of a resource and is not allowed to change on PUT operations.  Populated by the system. Read-only. More info: http://kubernetes.io/docs/user-guide/identifiers#uids
  @BuiltValueField(wireName: r'uid')
  String? get uid;

  IoK8sApimachineryPkgApisMetaV1ObjectMeta._();

  factory IoK8sApimachineryPkgApisMetaV1ObjectMeta([void updates(IoK8sApimachineryPkgApisMetaV1ObjectMetaBuilder b)]) = _$IoK8sApimachineryPkgApisMetaV1ObjectMeta;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApimachineryPkgApisMetaV1ObjectMetaBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApimachineryPkgApisMetaV1ObjectMeta> get serializer => _$IoK8sApimachineryPkgApisMetaV1ObjectMetaSerializer();
}

class _$IoK8sApimachineryPkgApisMetaV1ObjectMetaSerializer implements PrimitiveSerializer<IoK8sApimachineryPkgApisMetaV1ObjectMeta> {
  @override
  final Iterable<Type> types = const [IoK8sApimachineryPkgApisMetaV1ObjectMeta, _$IoK8sApimachineryPkgApisMetaV1ObjectMeta];

  @override
  final String wireName = r'IoK8sApimachineryPkgApisMetaV1ObjectMeta';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApimachineryPkgApisMetaV1ObjectMeta object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.annotations != null) {
      yield r'annotations';
      yield serializers.serialize(
        object.annotations,
        specifiedType: const FullType(BuiltMap, [FullType(String), FullType(String)]),
      );
    }
    if (object.creationTimestamp != null) {
      yield r'creationTimestamp';
      yield serializers.serialize(
        object.creationTimestamp,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.deletionGracePeriodSeconds != null) {
      yield r'deletionGracePeriodSeconds';
      yield serializers.serialize(
        object.deletionGracePeriodSeconds,
        specifiedType: const FullType(int),
      );
    }
    if (object.deletionTimestamp != null) {
      yield r'deletionTimestamp';
      yield serializers.serialize(
        object.deletionTimestamp,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.finalizers != null) {
      yield r'finalizers';
      yield serializers.serialize(
        object.finalizers,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.generateName != null) {
      yield r'generateName';
      yield serializers.serialize(
        object.generateName,
        specifiedType: const FullType(String),
      );
    }
    if (object.generation != null) {
      yield r'generation';
      yield serializers.serialize(
        object.generation,
        specifiedType: const FullType(int),
      );
    }
    if (object.labels != null) {
      yield r'labels';
      yield serializers.serialize(
        object.labels,
        specifiedType: const FullType(BuiltMap, [FullType(String), FullType(String)]),
      );
    }
    if (object.managedFields != null) {
      yield r'managedFields';
      yield serializers.serialize(
        object.managedFields,
        specifiedType: const FullType(BuiltList, [FullType(IoK8sApimachineryPkgApisMetaV1ManagedFieldsEntry)]),
      );
    }
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
    if (object.namespace != null) {
      yield r'namespace';
      yield serializers.serialize(
        object.namespace,
        specifiedType: const FullType(String),
      );
    }
    if (object.ownerReferences != null) {
      yield r'ownerReferences';
      yield serializers.serialize(
        object.ownerReferences,
        specifiedType: const FullType(BuiltList, [FullType(IoK8sApimachineryPkgApisMetaV1OwnerReference)]),
      );
    }
    if (object.resourceVersion != null) {
      yield r'resourceVersion';
      yield serializers.serialize(
        object.resourceVersion,
        specifiedType: const FullType(String),
      );
    }
    if (object.selfLink != null) {
      yield r'selfLink';
      yield serializers.serialize(
        object.selfLink,
        specifiedType: const FullType(String),
      );
    }
    if (object.uid != null) {
      yield r'uid';
      yield serializers.serialize(
        object.uid,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApimachineryPkgApisMetaV1ObjectMeta object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApimachineryPkgApisMetaV1ObjectMetaBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'annotations':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltMap, [FullType(String), FullType(String)]),
          ) as BuiltMap<String, String>;
          result.annotations.replace(valueDes);
          break;
        case r'creationTimestamp':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.creationTimestamp = valueDes;
          break;
        case r'deletionGracePeriodSeconds':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.deletionGracePeriodSeconds = valueDes;
          break;
        case r'deletionTimestamp':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.deletionTimestamp = valueDes;
          break;
        case r'finalizers':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.finalizers.replace(valueDes);
          break;
        case r'generateName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.generateName = valueDes;
          break;
        case r'generation':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.generation = valueDes;
          break;
        case r'labels':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltMap, [FullType(String), FullType(String)]),
          ) as BuiltMap<String, String>;
          result.labels.replace(valueDes);
          break;
        case r'managedFields':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(IoK8sApimachineryPkgApisMetaV1ManagedFieldsEntry)]),
          ) as BuiltList<IoK8sApimachineryPkgApisMetaV1ManagedFieldsEntry>;
          result.managedFields.replace(valueDes);
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'namespace':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.namespace = valueDes;
          break;
        case r'ownerReferences':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(IoK8sApimachineryPkgApisMetaV1OwnerReference)]),
          ) as BuiltList<IoK8sApimachineryPkgApisMetaV1OwnerReference>;
          result.ownerReferences.replace(valueDes);
          break;
        case r'resourceVersion':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.resourceVersion = valueDes;
          break;
        case r'selfLink':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.selfLink = valueDes;
          break;
        case r'uid':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.uid = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApimachineryPkgApisMetaV1ObjectMeta deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApimachineryPkgApisMetaV1ObjectMetaBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}

