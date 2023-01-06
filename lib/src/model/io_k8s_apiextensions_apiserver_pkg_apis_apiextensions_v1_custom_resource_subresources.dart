//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/io_k8s_apiextensions_apiserver_pkg_apis_apiextensions_v1_custom_resource_subresource_scale.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_apiextensions_apiserver_pkg_apis_apiextensions_v1_custom_resource_subresources.g.dart';

/// CustomResourceSubresources defines the status and scale subresources for CustomResources.
///
/// Properties:
/// * [scale] 
/// * [status] - CustomResourceSubresourceStatus defines how to serve the status subresource for CustomResources. Status is represented by the `.status` JSON path inside of a CustomResource. When set, * exposes a /status subresource for the custom resource * PUT requests to the /status subresource take a custom resource object, and ignore changes to anything except the status stanza * PUT/POST/PATCH requests to the custom resource ignore changes to the status stanza
@BuiltValue()
abstract class IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceSubresources implements Built<IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceSubresources, IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceSubresourcesBuilder> {
  @BuiltValueField(wireName: r'scale')
  IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceSubresourceScale? get scale;

  /// CustomResourceSubresourceStatus defines how to serve the status subresource for CustomResources. Status is represented by the `.status` JSON path inside of a CustomResource. When set, * exposes a /status subresource for the custom resource * PUT requests to the /status subresource take a custom resource object, and ignore changes to anything except the status stanza * PUT/POST/PATCH requests to the custom resource ignore changes to the status stanza
  @BuiltValueField(wireName: r'status')
  JsonObject? get status;

  IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceSubresources._();

  factory IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceSubresources([void updates(IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceSubresourcesBuilder b)]) = _$IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceSubresources;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceSubresourcesBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceSubresources> get serializer => _$IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceSubresourcesSerializer();
}

class _$IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceSubresourcesSerializer implements PrimitiveSerializer<IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceSubresources> {
  @override
  final Iterable<Type> types = const [IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceSubresources, _$IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceSubresources];

  @override
  final String wireName = r'IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceSubresources';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceSubresources object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.scale != null) {
      yield r'scale';
      yield serializers.serialize(
        object.scale,
        specifiedType: const FullType(IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceSubresourceScale),
      );
    }
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType(JsonObject),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceSubresources object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceSubresourcesBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'scale':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceSubresourceScale),
          ) as IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceSubresourceScale;
          result.scale.replace(valueDes);
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(JsonObject),
          ) as JsonObject;
          result.status = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceSubresources deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceSubresourcesBuilder();
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

