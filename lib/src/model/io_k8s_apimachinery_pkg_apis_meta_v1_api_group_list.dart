//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/io_k8s_apimachinery_pkg_apis_meta_v1_api_group.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_apimachinery_pkg_apis_meta_v1_api_group_list.g.dart';

/// APIGroupList is a list of APIGroup, to allow clients to discover the API at /apis.
///
/// Properties:
/// * [apiVersion] - APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
/// * [groups] - groups is a list of APIGroup.
/// * [kind] - Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
@BuiltValue()
abstract class IoK8sApimachineryPkgApisMetaV1APIGroupList implements Built<IoK8sApimachineryPkgApisMetaV1APIGroupList, IoK8sApimachineryPkgApisMetaV1APIGroupListBuilder> {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  @BuiltValueField(wireName: r'apiVersion')
  String? get apiVersion;

  /// groups is a list of APIGroup.
  @BuiltValueField(wireName: r'groups')
  BuiltList<IoK8sApimachineryPkgApisMetaV1APIGroup> get groups;

  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  @BuiltValueField(wireName: r'kind')
  String? get kind;

  IoK8sApimachineryPkgApisMetaV1APIGroupList._();

  factory IoK8sApimachineryPkgApisMetaV1APIGroupList([void updates(IoK8sApimachineryPkgApisMetaV1APIGroupListBuilder b)]) = _$IoK8sApimachineryPkgApisMetaV1APIGroupList;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApimachineryPkgApisMetaV1APIGroupListBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApimachineryPkgApisMetaV1APIGroupList> get serializer => _$IoK8sApimachineryPkgApisMetaV1APIGroupListSerializer();
}

class _$IoK8sApimachineryPkgApisMetaV1APIGroupListSerializer implements PrimitiveSerializer<IoK8sApimachineryPkgApisMetaV1APIGroupList> {
  @override
  final Iterable<Type> types = const [IoK8sApimachineryPkgApisMetaV1APIGroupList, _$IoK8sApimachineryPkgApisMetaV1APIGroupList];

  @override
  final String wireName = r'IoK8sApimachineryPkgApisMetaV1APIGroupList';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApimachineryPkgApisMetaV1APIGroupList object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.apiVersion != null) {
      yield r'apiVersion';
      yield serializers.serialize(
        object.apiVersion,
        specifiedType: const FullType(String),
      );
    }
    yield r'groups';
    yield serializers.serialize(
      object.groups,
      specifiedType: const FullType(BuiltList, [FullType(IoK8sApimachineryPkgApisMetaV1APIGroup)]),
    );
    if (object.kind != null) {
      yield r'kind';
      yield serializers.serialize(
        object.kind,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApimachineryPkgApisMetaV1APIGroupList object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApimachineryPkgApisMetaV1APIGroupListBuilder result,
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
        case r'groups':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(IoK8sApimachineryPkgApisMetaV1APIGroup)]),
          ) as BuiltList<IoK8sApimachineryPkgApisMetaV1APIGroup>;
          result.groups.replace(valueDes);
          break;
        case r'kind':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.kind = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApimachineryPkgApisMetaV1APIGroupList deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApimachineryPkgApisMetaV1APIGroupListBuilder();
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

