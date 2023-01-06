//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_admissionregistration_v1alpha1_param_ref.g.dart';

/// ParamRef references a parameter resource
///
/// Properties:
/// * [name] - Name of the resource being referenced.
/// * [namespace] - Namespace of the referenced resource. Should be empty for the cluster-scoped resources
@BuiltValue()
abstract class IoK8sApiAdmissionregistrationV1alpha1ParamRef implements Built<IoK8sApiAdmissionregistrationV1alpha1ParamRef, IoK8sApiAdmissionregistrationV1alpha1ParamRefBuilder> {
  /// Name of the resource being referenced.
  @BuiltValueField(wireName: r'name')
  String? get name;

  /// Namespace of the referenced resource. Should be empty for the cluster-scoped resources
  @BuiltValueField(wireName: r'namespace')
  String? get namespace;

  IoK8sApiAdmissionregistrationV1alpha1ParamRef._();

  factory IoK8sApiAdmissionregistrationV1alpha1ParamRef([void updates(IoK8sApiAdmissionregistrationV1alpha1ParamRefBuilder b)]) = _$IoK8sApiAdmissionregistrationV1alpha1ParamRef;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiAdmissionregistrationV1alpha1ParamRefBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiAdmissionregistrationV1alpha1ParamRef> get serializer => _$IoK8sApiAdmissionregistrationV1alpha1ParamRefSerializer();
}

class _$IoK8sApiAdmissionregistrationV1alpha1ParamRefSerializer implements PrimitiveSerializer<IoK8sApiAdmissionregistrationV1alpha1ParamRef> {
  @override
  final Iterable<Type> types = const [IoK8sApiAdmissionregistrationV1alpha1ParamRef, _$IoK8sApiAdmissionregistrationV1alpha1ParamRef];

  @override
  final String wireName = r'IoK8sApiAdmissionregistrationV1alpha1ParamRef';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiAdmissionregistrationV1alpha1ParamRef object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
    if (object.namespace != null) {
      yield r'namespace';
      yield serializers.serialize(
        object.namespace,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiAdmissionregistrationV1alpha1ParamRef object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiAdmissionregistrationV1alpha1ParamRefBuilder result,
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
  IoK8sApiAdmissionregistrationV1alpha1ParamRef deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiAdmissionregistrationV1alpha1ParamRefBuilder();
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

