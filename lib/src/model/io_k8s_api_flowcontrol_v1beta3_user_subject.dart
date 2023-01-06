//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_flowcontrol_v1beta3_user_subject.g.dart';

/// UserSubject holds detailed information for user-kind subject.
///
/// Properties:
/// * [name] - `name` is the username that matches, or \"*\" to match all usernames. Required.
@BuiltValue()
abstract class IoK8sApiFlowcontrolV1beta3UserSubject implements Built<IoK8sApiFlowcontrolV1beta3UserSubject, IoK8sApiFlowcontrolV1beta3UserSubjectBuilder> {
  /// `name` is the username that matches, or \"*\" to match all usernames. Required.
  @BuiltValueField(wireName: r'name')
  String get name;

  IoK8sApiFlowcontrolV1beta3UserSubject._();

  factory IoK8sApiFlowcontrolV1beta3UserSubject([void updates(IoK8sApiFlowcontrolV1beta3UserSubjectBuilder b)]) = _$IoK8sApiFlowcontrolV1beta3UserSubject;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiFlowcontrolV1beta3UserSubjectBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiFlowcontrolV1beta3UserSubject> get serializer => _$IoK8sApiFlowcontrolV1beta3UserSubjectSerializer();
}

class _$IoK8sApiFlowcontrolV1beta3UserSubjectSerializer implements PrimitiveSerializer<IoK8sApiFlowcontrolV1beta3UserSubject> {
  @override
  final Iterable<Type> types = const [IoK8sApiFlowcontrolV1beta3UserSubject, _$IoK8sApiFlowcontrolV1beta3UserSubject];

  @override
  final String wireName = r'IoK8sApiFlowcontrolV1beta3UserSubject';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiFlowcontrolV1beta3UserSubject object, {
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
    IoK8sApiFlowcontrolV1beta3UserSubject object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiFlowcontrolV1beta3UserSubjectBuilder result,
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
  IoK8sApiFlowcontrolV1beta3UserSubject deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiFlowcontrolV1beta3UserSubjectBuilder();
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

