//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_apimachinery_pkg_apis_meta_v1_owner_reference.g.dart';

/// OwnerReference contains enough information to let you identify an owning object. An owning object must be in the same namespace as the dependent, or be cluster-scoped, so there is no namespace field.
///
/// Properties:
/// * [apiVersion] - API version of the referent.
/// * [blockOwnerDeletion] - If true, AND if the owner has the \"foregroundDeletion\" finalizer, then the owner cannot be deleted from the key-value store until this reference is removed. See https://kubernetes.io/docs/concepts/architecture/garbage-collection/#foreground-deletion for how the garbage collector interacts with this field and enforces the foreground deletion. Defaults to false. To set this field, a user needs \"delete\" permission of the owner, otherwise 422 (Unprocessable Entity) will be returned.
/// * [controller] - If true, this reference points to the managing controller.
/// * [kind] - Kind of the referent. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
/// * [name] - Name of the referent. More info: http://kubernetes.io/docs/user-guide/identifiers#names
/// * [uid] - UID of the referent. More info: http://kubernetes.io/docs/user-guide/identifiers#uids
@BuiltValue()
abstract class IoK8sApimachineryPkgApisMetaV1OwnerReference implements Built<IoK8sApimachineryPkgApisMetaV1OwnerReference, IoK8sApimachineryPkgApisMetaV1OwnerReferenceBuilder> {
  /// API version of the referent.
  @BuiltValueField(wireName: r'apiVersion')
  String get apiVersion;

  /// If true, AND if the owner has the \"foregroundDeletion\" finalizer, then the owner cannot be deleted from the key-value store until this reference is removed. See https://kubernetes.io/docs/concepts/architecture/garbage-collection/#foreground-deletion for how the garbage collector interacts with this field and enforces the foreground deletion. Defaults to false. To set this field, a user needs \"delete\" permission of the owner, otherwise 422 (Unprocessable Entity) will be returned.
  @BuiltValueField(wireName: r'blockOwnerDeletion')
  bool? get blockOwnerDeletion;

  /// If true, this reference points to the managing controller.
  @BuiltValueField(wireName: r'controller')
  bool? get controller;

  /// Kind of the referent. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  @BuiltValueField(wireName: r'kind')
  String get kind;

  /// Name of the referent. More info: http://kubernetes.io/docs/user-guide/identifiers#names
  @BuiltValueField(wireName: r'name')
  String get name;

  /// UID of the referent. More info: http://kubernetes.io/docs/user-guide/identifiers#uids
  @BuiltValueField(wireName: r'uid')
  String get uid;

  IoK8sApimachineryPkgApisMetaV1OwnerReference._();

  factory IoK8sApimachineryPkgApisMetaV1OwnerReference([void updates(IoK8sApimachineryPkgApisMetaV1OwnerReferenceBuilder b)]) = _$IoK8sApimachineryPkgApisMetaV1OwnerReference;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApimachineryPkgApisMetaV1OwnerReferenceBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApimachineryPkgApisMetaV1OwnerReference> get serializer => _$IoK8sApimachineryPkgApisMetaV1OwnerReferenceSerializer();
}

class _$IoK8sApimachineryPkgApisMetaV1OwnerReferenceSerializer implements PrimitiveSerializer<IoK8sApimachineryPkgApisMetaV1OwnerReference> {
  @override
  final Iterable<Type> types = const [IoK8sApimachineryPkgApisMetaV1OwnerReference, _$IoK8sApimachineryPkgApisMetaV1OwnerReference];

  @override
  final String wireName = r'IoK8sApimachineryPkgApisMetaV1OwnerReference';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApimachineryPkgApisMetaV1OwnerReference object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'apiVersion';
    yield serializers.serialize(
      object.apiVersion,
      specifiedType: const FullType(String),
    );
    if (object.blockOwnerDeletion != null) {
      yield r'blockOwnerDeletion';
      yield serializers.serialize(
        object.blockOwnerDeletion,
        specifiedType: const FullType(bool),
      );
    }
    if (object.controller != null) {
      yield r'controller';
      yield serializers.serialize(
        object.controller,
        specifiedType: const FullType(bool),
      );
    }
    yield r'kind';
    yield serializers.serialize(
      object.kind,
      specifiedType: const FullType(String),
    );
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    yield r'uid';
    yield serializers.serialize(
      object.uid,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApimachineryPkgApisMetaV1OwnerReference object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApimachineryPkgApisMetaV1OwnerReferenceBuilder result,
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
        case r'blockOwnerDeletion':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.blockOwnerDeletion = valueDes;
          break;
        case r'controller':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.controller = valueDes;
          break;
        case r'kind':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.kind = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
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
  IoK8sApimachineryPkgApisMetaV1OwnerReference deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApimachineryPkgApisMetaV1OwnerReferenceBuilder();
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

