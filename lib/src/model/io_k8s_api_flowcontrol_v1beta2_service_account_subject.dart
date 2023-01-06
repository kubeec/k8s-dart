//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_flowcontrol_v1beta2_service_account_subject.g.dart';

/// ServiceAccountSubject holds detailed information for service-account-kind subject.
///
/// Properties:
/// * [name] - `name` is the name of matching ServiceAccount objects, or \"*\" to match regardless of name. Required.
/// * [namespace] - `namespace` is the namespace of matching ServiceAccount objects. Required.
@BuiltValue()
abstract class IoK8sApiFlowcontrolV1beta2ServiceAccountSubject implements Built<IoK8sApiFlowcontrolV1beta2ServiceAccountSubject, IoK8sApiFlowcontrolV1beta2ServiceAccountSubjectBuilder> {
  /// `name` is the name of matching ServiceAccount objects, or \"*\" to match regardless of name. Required.
  @BuiltValueField(wireName: r'name')
  String get name;

  /// `namespace` is the namespace of matching ServiceAccount objects. Required.
  @BuiltValueField(wireName: r'namespace')
  String get namespace;

  IoK8sApiFlowcontrolV1beta2ServiceAccountSubject._();

  factory IoK8sApiFlowcontrolV1beta2ServiceAccountSubject([void updates(IoK8sApiFlowcontrolV1beta2ServiceAccountSubjectBuilder b)]) = _$IoK8sApiFlowcontrolV1beta2ServiceAccountSubject;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiFlowcontrolV1beta2ServiceAccountSubjectBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiFlowcontrolV1beta2ServiceAccountSubject> get serializer => _$IoK8sApiFlowcontrolV1beta2ServiceAccountSubjectSerializer();
}

class _$IoK8sApiFlowcontrolV1beta2ServiceAccountSubjectSerializer implements PrimitiveSerializer<IoK8sApiFlowcontrolV1beta2ServiceAccountSubject> {
  @override
  final Iterable<Type> types = const [IoK8sApiFlowcontrolV1beta2ServiceAccountSubject, _$IoK8sApiFlowcontrolV1beta2ServiceAccountSubject];

  @override
  final String wireName = r'IoK8sApiFlowcontrolV1beta2ServiceAccountSubject';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiFlowcontrolV1beta2ServiceAccountSubject object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    yield r'namespace';
    yield serializers.serialize(
      object.namespace,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiFlowcontrolV1beta2ServiceAccountSubject object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiFlowcontrolV1beta2ServiceAccountSubjectBuilder result,
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
        case r'namespace':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.namespace = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiFlowcontrolV1beta2ServiceAccountSubject deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiFlowcontrolV1beta2ServiceAccountSubjectBuilder();
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

