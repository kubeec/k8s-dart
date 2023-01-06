//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_flowcontrol_v1beta3_group_subject.g.dart';

/// GroupSubject holds detailed information for group-kind subject.
///
/// Properties:
/// * [name] - name is the user group that matches, or \"*\" to match all user groups. See https://github.com/kubernetes/apiserver/blob/master/pkg/authentication/user/user.go for some well-known group names. Required.
@BuiltValue()
abstract class IoK8sApiFlowcontrolV1beta3GroupSubject implements Built<IoK8sApiFlowcontrolV1beta3GroupSubject, IoK8sApiFlowcontrolV1beta3GroupSubjectBuilder> {
  /// name is the user group that matches, or \"*\" to match all user groups. See https://github.com/kubernetes/apiserver/blob/master/pkg/authentication/user/user.go for some well-known group names. Required.
  @BuiltValueField(wireName: r'name')
  String get name;

  IoK8sApiFlowcontrolV1beta3GroupSubject._();

  factory IoK8sApiFlowcontrolV1beta3GroupSubject([void updates(IoK8sApiFlowcontrolV1beta3GroupSubjectBuilder b)]) = _$IoK8sApiFlowcontrolV1beta3GroupSubject;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiFlowcontrolV1beta3GroupSubjectBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiFlowcontrolV1beta3GroupSubject> get serializer => _$IoK8sApiFlowcontrolV1beta3GroupSubjectSerializer();
}

class _$IoK8sApiFlowcontrolV1beta3GroupSubjectSerializer implements PrimitiveSerializer<IoK8sApiFlowcontrolV1beta3GroupSubject> {
  @override
  final Iterable<Type> types = const [IoK8sApiFlowcontrolV1beta3GroupSubject, _$IoK8sApiFlowcontrolV1beta3GroupSubject];

  @override
  final String wireName = r'IoK8sApiFlowcontrolV1beta3GroupSubject';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiFlowcontrolV1beta3GroupSubject object, {
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
    IoK8sApiFlowcontrolV1beta3GroupSubject object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiFlowcontrolV1beta3GroupSubjectBuilder result,
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
  IoK8sApiFlowcontrolV1beta3GroupSubject deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiFlowcontrolV1beta3GroupSubjectBuilder();
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

