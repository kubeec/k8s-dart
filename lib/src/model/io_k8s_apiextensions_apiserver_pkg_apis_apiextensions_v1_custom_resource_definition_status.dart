//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:k8s/src/model/io_k8s_apiextensions_apiserver_pkg_apis_apiextensions_v1_custom_resource_definition_names.dart';
import 'package:k8s/src/model/io_k8s_apiextensions_apiserver_pkg_apis_apiextensions_v1_custom_resource_definition_condition.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_apiextensions_apiserver_pkg_apis_apiextensions_v1_custom_resource_definition_status.g.dart';

/// CustomResourceDefinitionStatus indicates the state of the CustomResourceDefinition
///
/// Properties:
/// * [acceptedNames] 
/// * [conditions] - conditions indicate state for particular aspects of a CustomResourceDefinition
/// * [storedVersions] - storedVersions lists all versions of CustomResources that were ever persisted. Tracking these versions allows a migration path for stored versions in etcd. The field is mutable so a migration controller can finish a migration to another version (ensuring no old objects are left in storage), and then remove the rest of the versions from this list. Versions may not be removed from `spec.versions` while they exist in this list.
@BuiltValue()
abstract class IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceDefinitionStatus implements Built<IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceDefinitionStatus, IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceDefinitionStatusBuilder> {
  @BuiltValueField(wireName: r'acceptedNames')
  IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceDefinitionNames? get acceptedNames;

  /// conditions indicate state for particular aspects of a CustomResourceDefinition
  @BuiltValueField(wireName: r'conditions')
  BuiltList<IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceDefinitionCondition>? get conditions;

  /// storedVersions lists all versions of CustomResources that were ever persisted. Tracking these versions allows a migration path for stored versions in etcd. The field is mutable so a migration controller can finish a migration to another version (ensuring no old objects are left in storage), and then remove the rest of the versions from this list. Versions may not be removed from `spec.versions` while they exist in this list.
  @BuiltValueField(wireName: r'storedVersions')
  BuiltList<String>? get storedVersions;

  IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceDefinitionStatus._();

  factory IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceDefinitionStatus([void updates(IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceDefinitionStatusBuilder b)]) = _$IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceDefinitionStatus;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceDefinitionStatusBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceDefinitionStatus> get serializer => _$IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceDefinitionStatusSerializer();
}

class _$IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceDefinitionStatusSerializer implements PrimitiveSerializer<IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceDefinitionStatus> {
  @override
  final Iterable<Type> types = const [IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceDefinitionStatus, _$IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceDefinitionStatus];

  @override
  final String wireName = r'IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceDefinitionStatus';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceDefinitionStatus object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.acceptedNames != null) {
      yield r'acceptedNames';
      yield serializers.serialize(
        object.acceptedNames,
        specifiedType: const FullType(IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceDefinitionNames),
      );
    }
    if (object.conditions != null) {
      yield r'conditions';
      yield serializers.serialize(
        object.conditions,
        specifiedType: const FullType(BuiltList, [FullType(IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceDefinitionCondition)]),
      );
    }
    if (object.storedVersions != null) {
      yield r'storedVersions';
      yield serializers.serialize(
        object.storedVersions,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceDefinitionStatus object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceDefinitionStatusBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'acceptedNames':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceDefinitionNames),
          ) as IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceDefinitionNames;
          result.acceptedNames.replace(valueDes);
          break;
        case r'conditions':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceDefinitionCondition)]),
          ) as BuiltList<IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceDefinitionCondition>;
          result.conditions.replace(valueDes);
          break;
        case r'storedVersions':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.storedVersions.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceDefinitionStatus deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceDefinitionStatusBuilder();
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

