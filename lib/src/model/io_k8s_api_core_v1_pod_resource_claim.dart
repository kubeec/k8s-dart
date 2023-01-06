//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/io_k8s_api_core_v1_claim_source.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_core_v1_pod_resource_claim.g.dart';

/// PodResourceClaim references exactly one ResourceClaim through a ClaimSource. It adds a name to it that uniquely identifies the ResourceClaim inside the Pod. Containers that need access to the ResourceClaim reference it with this name.
///
/// Properties:
/// * [name] - Name uniquely identifies this resource claim inside the pod. This must be a DNS_LABEL.
/// * [source_] 
@BuiltValue()
abstract class IoK8sApiCoreV1PodResourceClaim implements Built<IoK8sApiCoreV1PodResourceClaim, IoK8sApiCoreV1PodResourceClaimBuilder> {
  /// Name uniquely identifies this resource claim inside the pod. This must be a DNS_LABEL.
  @BuiltValueField(wireName: r'name')
  String get name;

  @BuiltValueField(wireName: r'source')
  IoK8sApiCoreV1ClaimSource? get source_;

  IoK8sApiCoreV1PodResourceClaim._();

  factory IoK8sApiCoreV1PodResourceClaim([void updates(IoK8sApiCoreV1PodResourceClaimBuilder b)]) = _$IoK8sApiCoreV1PodResourceClaim;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiCoreV1PodResourceClaimBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiCoreV1PodResourceClaim> get serializer => _$IoK8sApiCoreV1PodResourceClaimSerializer();
}

class _$IoK8sApiCoreV1PodResourceClaimSerializer implements PrimitiveSerializer<IoK8sApiCoreV1PodResourceClaim> {
  @override
  final Iterable<Type> types = const [IoK8sApiCoreV1PodResourceClaim, _$IoK8sApiCoreV1PodResourceClaim];

  @override
  final String wireName = r'IoK8sApiCoreV1PodResourceClaim';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiCoreV1PodResourceClaim object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    if (object.source_ != null) {
      yield r'source';
      yield serializers.serialize(
        object.source_,
        specifiedType: const FullType(IoK8sApiCoreV1ClaimSource),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiCoreV1PodResourceClaim object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiCoreV1PodResourceClaimBuilder result,
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
        case r'source':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApiCoreV1ClaimSource),
          ) as IoK8sApiCoreV1ClaimSource;
          result.source_.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiCoreV1PodResourceClaim deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiCoreV1PodResourceClaimBuilder();
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

