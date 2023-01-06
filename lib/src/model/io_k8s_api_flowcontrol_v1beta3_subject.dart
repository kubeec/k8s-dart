//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/io_k8s_api_flowcontrol_v1beta3_group_subject.dart';
import 'package:k8s/src/model/io_k8s_api_flowcontrol_v1beta3_service_account_subject.dart';
import 'package:k8s/src/model/io_k8s_api_flowcontrol_v1beta3_user_subject.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_flowcontrol_v1beta3_subject.g.dart';

/// Subject matches the originator of a request, as identified by the request authentication system. There are three ways of matching an originator; by user, group, or service account.
///
/// Properties:
/// * [group] 
/// * [kind] - `kind` indicates which one of the other fields is non-empty. Required
/// * [serviceAccount] 
/// * [user] 
@BuiltValue()
abstract class IoK8sApiFlowcontrolV1beta3Subject implements Built<IoK8sApiFlowcontrolV1beta3Subject, IoK8sApiFlowcontrolV1beta3SubjectBuilder> {
  @BuiltValueField(wireName: r'group')
  IoK8sApiFlowcontrolV1beta3GroupSubject? get group;

  /// `kind` indicates which one of the other fields is non-empty. Required
  @BuiltValueField(wireName: r'kind')
  String get kind;

  @BuiltValueField(wireName: r'serviceAccount')
  IoK8sApiFlowcontrolV1beta3ServiceAccountSubject? get serviceAccount;

  @BuiltValueField(wireName: r'user')
  IoK8sApiFlowcontrolV1beta3UserSubject? get user;

  IoK8sApiFlowcontrolV1beta3Subject._();

  factory IoK8sApiFlowcontrolV1beta3Subject([void updates(IoK8sApiFlowcontrolV1beta3SubjectBuilder b)]) = _$IoK8sApiFlowcontrolV1beta3Subject;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiFlowcontrolV1beta3SubjectBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiFlowcontrolV1beta3Subject> get serializer => _$IoK8sApiFlowcontrolV1beta3SubjectSerializer();
}

class _$IoK8sApiFlowcontrolV1beta3SubjectSerializer implements PrimitiveSerializer<IoK8sApiFlowcontrolV1beta3Subject> {
  @override
  final Iterable<Type> types = const [IoK8sApiFlowcontrolV1beta3Subject, _$IoK8sApiFlowcontrolV1beta3Subject];

  @override
  final String wireName = r'IoK8sApiFlowcontrolV1beta3Subject';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiFlowcontrolV1beta3Subject object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.group != null) {
      yield r'group';
      yield serializers.serialize(
        object.group,
        specifiedType: const FullType(IoK8sApiFlowcontrolV1beta3GroupSubject),
      );
    }
    yield r'kind';
    yield serializers.serialize(
      object.kind,
      specifiedType: const FullType(String),
    );
    if (object.serviceAccount != null) {
      yield r'serviceAccount';
      yield serializers.serialize(
        object.serviceAccount,
        specifiedType: const FullType(IoK8sApiFlowcontrolV1beta3ServiceAccountSubject),
      );
    }
    if (object.user != null) {
      yield r'user';
      yield serializers.serialize(
        object.user,
        specifiedType: const FullType(IoK8sApiFlowcontrolV1beta3UserSubject),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiFlowcontrolV1beta3Subject object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiFlowcontrolV1beta3SubjectBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'group':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApiFlowcontrolV1beta3GroupSubject),
          ) as IoK8sApiFlowcontrolV1beta3GroupSubject;
          result.group.replace(valueDes);
          break;
        case r'kind':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.kind = valueDes;
          break;
        case r'serviceAccount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApiFlowcontrolV1beta3ServiceAccountSubject),
          ) as IoK8sApiFlowcontrolV1beta3ServiceAccountSubject;
          result.serviceAccount.replace(valueDes);
          break;
        case r'user':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApiFlowcontrolV1beta3UserSubject),
          ) as IoK8sApiFlowcontrolV1beta3UserSubject;
          result.user.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiFlowcontrolV1beta3Subject deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiFlowcontrolV1beta3SubjectBuilder();
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

