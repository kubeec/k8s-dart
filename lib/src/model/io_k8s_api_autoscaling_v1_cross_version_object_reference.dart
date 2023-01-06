//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_autoscaling_v1_cross_version_object_reference.g.dart';

/// CrossVersionObjectReference contains enough information to let you identify the referred resource.
///
/// Properties:
/// * [apiVersion] - API version of the referent
/// * [kind] - Kind of the referent; More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
/// * [name] - Name of the referent; More info: http://kubernetes.io/docs/user-guide/identifiers#names
@BuiltValue()
abstract class IoK8sApiAutoscalingV1CrossVersionObjectReference implements Built<IoK8sApiAutoscalingV1CrossVersionObjectReference, IoK8sApiAutoscalingV1CrossVersionObjectReferenceBuilder> {
  /// API version of the referent
  @BuiltValueField(wireName: r'apiVersion')
  String? get apiVersion;

  /// Kind of the referent; More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  @BuiltValueField(wireName: r'kind')
  String get kind;

  /// Name of the referent; More info: http://kubernetes.io/docs/user-guide/identifiers#names
  @BuiltValueField(wireName: r'name')
  String get name;

  IoK8sApiAutoscalingV1CrossVersionObjectReference._();

  factory IoK8sApiAutoscalingV1CrossVersionObjectReference([void updates(IoK8sApiAutoscalingV1CrossVersionObjectReferenceBuilder b)]) = _$IoK8sApiAutoscalingV1CrossVersionObjectReference;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiAutoscalingV1CrossVersionObjectReferenceBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiAutoscalingV1CrossVersionObjectReference> get serializer => _$IoK8sApiAutoscalingV1CrossVersionObjectReferenceSerializer();
}

class _$IoK8sApiAutoscalingV1CrossVersionObjectReferenceSerializer implements PrimitiveSerializer<IoK8sApiAutoscalingV1CrossVersionObjectReference> {
  @override
  final Iterable<Type> types = const [IoK8sApiAutoscalingV1CrossVersionObjectReference, _$IoK8sApiAutoscalingV1CrossVersionObjectReference];

  @override
  final String wireName = r'IoK8sApiAutoscalingV1CrossVersionObjectReference';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiAutoscalingV1CrossVersionObjectReference object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.apiVersion != null) {
      yield r'apiVersion';
      yield serializers.serialize(
        object.apiVersion,
        specifiedType: const FullType(String),
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
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiAutoscalingV1CrossVersionObjectReference object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiAutoscalingV1CrossVersionObjectReferenceBuilder result,
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiAutoscalingV1CrossVersionObjectReference deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiAutoscalingV1CrossVersionObjectReferenceBuilder();
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

