//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_admissionregistration_v1alpha1_param_kind.g.dart';

/// ParamKind is a tuple of Group Kind and Version.
///
/// Properties:
/// * [apiVersion] - APIVersion is the API group version the resources belong to. In format of \"group/version\". Required.
/// * [kind] - Kind is the API kind the resources belong to. Required.
@BuiltValue()
abstract class IoK8sApiAdmissionregistrationV1alpha1ParamKind implements Built<IoK8sApiAdmissionregistrationV1alpha1ParamKind, IoK8sApiAdmissionregistrationV1alpha1ParamKindBuilder> {
  /// APIVersion is the API group version the resources belong to. In format of \"group/version\". Required.
  @BuiltValueField(wireName: r'apiVersion')
  String? get apiVersion;

  /// Kind is the API kind the resources belong to. Required.
  @BuiltValueField(wireName: r'kind')
  String? get kind;

  IoK8sApiAdmissionregistrationV1alpha1ParamKind._();

  factory IoK8sApiAdmissionregistrationV1alpha1ParamKind([void updates(IoK8sApiAdmissionregistrationV1alpha1ParamKindBuilder b)]) = _$IoK8sApiAdmissionregistrationV1alpha1ParamKind;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiAdmissionregistrationV1alpha1ParamKindBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiAdmissionregistrationV1alpha1ParamKind> get serializer => _$IoK8sApiAdmissionregistrationV1alpha1ParamKindSerializer();
}

class _$IoK8sApiAdmissionregistrationV1alpha1ParamKindSerializer implements PrimitiveSerializer<IoK8sApiAdmissionregistrationV1alpha1ParamKind> {
  @override
  final Iterable<Type> types = const [IoK8sApiAdmissionregistrationV1alpha1ParamKind, _$IoK8sApiAdmissionregistrationV1alpha1ParamKind];

  @override
  final String wireName = r'IoK8sApiAdmissionregistrationV1alpha1ParamKind';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiAdmissionregistrationV1alpha1ParamKind object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.apiVersion != null) {
      yield r'apiVersion';
      yield serializers.serialize(
        object.apiVersion,
        specifiedType: const FullType(String),
      );
    }
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
    IoK8sApiAdmissionregistrationV1alpha1ParamKind object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiAdmissionregistrationV1alpha1ParamKindBuilder result,
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiAdmissionregistrationV1alpha1ParamKind deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiAdmissionregistrationV1alpha1ParamKindBuilder();
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

