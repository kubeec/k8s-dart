//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_apimachinery_pkg_apis_meta_v1_managed_fields_entry.g.dart';

/// ManagedFieldsEntry is a workflow-id, a FieldSet and the group version of the resource that the fieldset applies to.
///
/// Properties:
/// * [apiVersion] - APIVersion defines the version of this resource that this field set applies to. The format is \"group/version\" just like the top-level APIVersion field. It is necessary to track the version of a field set because it cannot be automatically converted.
/// * [fieldsType] - FieldsType is the discriminator for the different fields format and version. There is currently only one possible value: \"FieldsV1\"
/// * [fieldsV1] - FieldsV1 stores a set of fields in a data structure like a Trie, in JSON format.  Each key is either a '.' representing the field itself, and will always map to an empty set, or a string representing a sub-field or item. The string will follow one of these four formats: 'f:<name>', where <name> is the name of a field in a struct, or key in a map 'v:<value>', where <value> is the exact json formatted value of a list item 'i:<index>', where <index> is position of a item in a list 'k:<keys>', where <keys> is a map of  a list item's key fields to their unique values If a key maps to an empty Fields value, the field that key represents is part of the set.  The exact format is defined in sigs.k8s.io/structured-merge-diff
/// * [manager] - Manager is an identifier of the workflow managing these fields.
/// * [operation] - Operation is the type of operation which lead to this ManagedFieldsEntry being created. The only valid values for this field are 'Apply' and 'Update'.
/// * [subresource] - Subresource is the name of the subresource used to update that object, or empty string if the object was updated through the main resource. The value of this field is used to distinguish between managers, even if they share the same name. For example, a status update will be distinct from a regular update using the same manager name. Note that the APIVersion field is not related to the Subresource field and it always corresponds to the version of the main resource.
/// * [time] - Time is a wrapper around time.Time which supports correct marshaling to YAML and JSON.  Wrappers are provided for many of the factory methods that the time package offers.
@BuiltValue()
abstract class IoK8sApimachineryPkgApisMetaV1ManagedFieldsEntry implements Built<IoK8sApimachineryPkgApisMetaV1ManagedFieldsEntry, IoK8sApimachineryPkgApisMetaV1ManagedFieldsEntryBuilder> {
  /// APIVersion defines the version of this resource that this field set applies to. The format is \"group/version\" just like the top-level APIVersion field. It is necessary to track the version of a field set because it cannot be automatically converted.
  @BuiltValueField(wireName: r'apiVersion')
  String? get apiVersion;

  /// FieldsType is the discriminator for the different fields format and version. There is currently only one possible value: \"FieldsV1\"
  @BuiltValueField(wireName: r'fieldsType')
  String? get fieldsType;

  /// FieldsV1 stores a set of fields in a data structure like a Trie, in JSON format.  Each key is either a '.' representing the field itself, and will always map to an empty set, or a string representing a sub-field or item. The string will follow one of these four formats: 'f:<name>', where <name> is the name of a field in a struct, or key in a map 'v:<value>', where <value> is the exact json formatted value of a list item 'i:<index>', where <index> is position of a item in a list 'k:<keys>', where <keys> is a map of  a list item's key fields to their unique values If a key maps to an empty Fields value, the field that key represents is part of the set.  The exact format is defined in sigs.k8s.io/structured-merge-diff
  @BuiltValueField(wireName: r'fieldsV1')
  JsonObject? get fieldsV1;

  /// Manager is an identifier of the workflow managing these fields.
  @BuiltValueField(wireName: r'manager')
  String? get manager;

  /// Operation is the type of operation which lead to this ManagedFieldsEntry being created. The only valid values for this field are 'Apply' and 'Update'.
  @BuiltValueField(wireName: r'operation')
  String? get operation;

  /// Subresource is the name of the subresource used to update that object, or empty string if the object was updated through the main resource. The value of this field is used to distinguish between managers, even if they share the same name. For example, a status update will be distinct from a regular update using the same manager name. Note that the APIVersion field is not related to the Subresource field and it always corresponds to the version of the main resource.
  @BuiltValueField(wireName: r'subresource')
  String? get subresource;

  /// Time is a wrapper around time.Time which supports correct marshaling to YAML and JSON.  Wrappers are provided for many of the factory methods that the time package offers.
  @BuiltValueField(wireName: r'time')
  DateTime? get time;

  IoK8sApimachineryPkgApisMetaV1ManagedFieldsEntry._();

  factory IoK8sApimachineryPkgApisMetaV1ManagedFieldsEntry([void updates(IoK8sApimachineryPkgApisMetaV1ManagedFieldsEntryBuilder b)]) = _$IoK8sApimachineryPkgApisMetaV1ManagedFieldsEntry;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApimachineryPkgApisMetaV1ManagedFieldsEntryBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApimachineryPkgApisMetaV1ManagedFieldsEntry> get serializer => _$IoK8sApimachineryPkgApisMetaV1ManagedFieldsEntrySerializer();
}

class _$IoK8sApimachineryPkgApisMetaV1ManagedFieldsEntrySerializer implements PrimitiveSerializer<IoK8sApimachineryPkgApisMetaV1ManagedFieldsEntry> {
  @override
  final Iterable<Type> types = const [IoK8sApimachineryPkgApisMetaV1ManagedFieldsEntry, _$IoK8sApimachineryPkgApisMetaV1ManagedFieldsEntry];

  @override
  final String wireName = r'IoK8sApimachineryPkgApisMetaV1ManagedFieldsEntry';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApimachineryPkgApisMetaV1ManagedFieldsEntry object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.apiVersion != null) {
      yield r'apiVersion';
      yield serializers.serialize(
        object.apiVersion,
        specifiedType: const FullType(String),
      );
    }
    if (object.fieldsType != null) {
      yield r'fieldsType';
      yield serializers.serialize(
        object.fieldsType,
        specifiedType: const FullType(String),
      );
    }
    if (object.fieldsV1 != null) {
      yield r'fieldsV1';
      yield serializers.serialize(
        object.fieldsV1,
        specifiedType: const FullType(JsonObject),
      );
    }
    if (object.manager != null) {
      yield r'manager';
      yield serializers.serialize(
        object.manager,
        specifiedType: const FullType(String),
      );
    }
    if (object.operation != null) {
      yield r'operation';
      yield serializers.serialize(
        object.operation,
        specifiedType: const FullType(String),
      );
    }
    if (object.subresource != null) {
      yield r'subresource';
      yield serializers.serialize(
        object.subresource,
        specifiedType: const FullType(String),
      );
    }
    if (object.time != null) {
      yield r'time';
      yield serializers.serialize(
        object.time,
        specifiedType: const FullType(DateTime),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApimachineryPkgApisMetaV1ManagedFieldsEntry object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApimachineryPkgApisMetaV1ManagedFieldsEntryBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'apiVersion':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.apiVersion = valueDes;
          break;
        case r'fieldsType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.fieldsType = valueDes;
          break;
        case r'fieldsV1':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(JsonObject),
          ) as JsonObject;
          result.fieldsV1 = valueDes;
          break;
        case r'manager':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.manager = valueDes;
          break;
        case r'operation':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.operation = valueDes;
          break;
        case r'subresource':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.subresource = valueDes;
          break;
        case r'time':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.time = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApimachineryPkgApisMetaV1ManagedFieldsEntry deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApimachineryPkgApisMetaV1ManagedFieldsEntryBuilder();
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

