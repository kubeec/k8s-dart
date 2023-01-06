//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_core_v1_resource_claim.g.dart';

/// ResourceClaim references one entry in PodSpec.ResourceClaims.
///
/// Properties:
/// * [name] - Name must match the name of one entry in pod.spec.resourceClaims of the Pod where this field is used. It makes that resource available inside a container.
@BuiltValue()
abstract class IoK8sApiCoreV1ResourceClaim implements Built<IoK8sApiCoreV1ResourceClaim, IoK8sApiCoreV1ResourceClaimBuilder> {
  /// Name must match the name of one entry in pod.spec.resourceClaims of the Pod where this field is used. It makes that resource available inside a container.
  @BuiltValueField(wireName: r'name')
  String get name;

  IoK8sApiCoreV1ResourceClaim._();

  factory IoK8sApiCoreV1ResourceClaim([void updates(IoK8sApiCoreV1ResourceClaimBuilder b)]) = _$IoK8sApiCoreV1ResourceClaim;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiCoreV1ResourceClaimBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiCoreV1ResourceClaim> get serializer => _$IoK8sApiCoreV1ResourceClaimSerializer();
}

class _$IoK8sApiCoreV1ResourceClaimSerializer implements PrimitiveSerializer<IoK8sApiCoreV1ResourceClaim> {
  @override
  final Iterable<Type> types = const [IoK8sApiCoreV1ResourceClaim, _$IoK8sApiCoreV1ResourceClaim];

  @override
  final String wireName = r'IoK8sApiCoreV1ResourceClaim';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiCoreV1ResourceClaim object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiCoreV1ResourceClaim object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiCoreV1ResourceClaimBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiCoreV1ResourceClaim deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiCoreV1ResourceClaimBuilder();
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

