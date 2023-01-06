//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_apimachinery_pkg_apis_meta_v1_list_meta.g.dart';

/// ListMeta describes metadata that synthetic resources must have, including lists and various status objects. A resource may have only one of {ObjectMeta, ListMeta}.
///
/// Properties:
/// * [continue_] - continue may be set if the user set a limit on the number of items returned, and indicates that the server has more data available. The value is opaque and may be used to issue another request to the endpoint that served this list to retrieve the next set of available objects. Continuing a consistent list may not be possible if the server configuration has changed or more than a few minutes have passed. The resourceVersion field returned when using this continue value will be identical to the value in the first response, unless you have received this token from an error message.
/// * [remainingItemCount] - remainingItemCount is the number of subsequent items in the list which are not included in this list response. If the list request contained label or field selectors, then the number of remaining items is unknown and the field will be left unset and omitted during serialization. If the list is complete (either because it is not chunking or because this is the last chunk), then there are no more remaining items and this field will be left unset and omitted during serialization. Servers older than v1.15 do not set this field. The intended use of the remainingItemCount is *estimating* the size of a collection. Clients should not rely on the remainingItemCount to be set or to be exact.
/// * [resourceVersion] - String that identifies the server's internal version of this object that can be used by clients to determine when objects have changed. Value must be treated as opaque by clients and passed unmodified back to the server. Populated by the system. Read-only. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#concurrency-control-and-consistency
/// * [selfLink] - Deprecated: selfLink is a legacy read-only field that is no longer populated by the system.
@BuiltValue()
abstract class IoK8sApimachineryPkgApisMetaV1ListMeta implements Built<IoK8sApimachineryPkgApisMetaV1ListMeta, IoK8sApimachineryPkgApisMetaV1ListMetaBuilder> {
  /// continue may be set if the user set a limit on the number of items returned, and indicates that the server has more data available. The value is opaque and may be used to issue another request to the endpoint that served this list to retrieve the next set of available objects. Continuing a consistent list may not be possible if the server configuration has changed or more than a few minutes have passed. The resourceVersion field returned when using this continue value will be identical to the value in the first response, unless you have received this token from an error message.
  @BuiltValueField(wireName: r'continue')
  String? get continue_;

  /// remainingItemCount is the number of subsequent items in the list which are not included in this list response. If the list request contained label or field selectors, then the number of remaining items is unknown and the field will be left unset and omitted during serialization. If the list is complete (either because it is not chunking or because this is the last chunk), then there are no more remaining items and this field will be left unset and omitted during serialization. Servers older than v1.15 do not set this field. The intended use of the remainingItemCount is *estimating* the size of a collection. Clients should not rely on the remainingItemCount to be set or to be exact.
  @BuiltValueField(wireName: r'remainingItemCount')
  int? get remainingItemCount;

  /// String that identifies the server's internal version of this object that can be used by clients to determine when objects have changed. Value must be treated as opaque by clients and passed unmodified back to the server. Populated by the system. Read-only. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#concurrency-control-and-consistency
  @BuiltValueField(wireName: r'resourceVersion')
  String? get resourceVersion;

  /// Deprecated: selfLink is a legacy read-only field that is no longer populated by the system.
  @BuiltValueField(wireName: r'selfLink')
  String? get selfLink;

  IoK8sApimachineryPkgApisMetaV1ListMeta._();

  factory IoK8sApimachineryPkgApisMetaV1ListMeta([void updates(IoK8sApimachineryPkgApisMetaV1ListMetaBuilder b)]) = _$IoK8sApimachineryPkgApisMetaV1ListMeta;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApimachineryPkgApisMetaV1ListMetaBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApimachineryPkgApisMetaV1ListMeta> get serializer => _$IoK8sApimachineryPkgApisMetaV1ListMetaSerializer();
}

class _$IoK8sApimachineryPkgApisMetaV1ListMetaSerializer implements PrimitiveSerializer<IoK8sApimachineryPkgApisMetaV1ListMeta> {
  @override
  final Iterable<Type> types = const [IoK8sApimachineryPkgApisMetaV1ListMeta, _$IoK8sApimachineryPkgApisMetaV1ListMeta];

  @override
  final String wireName = r'IoK8sApimachineryPkgApisMetaV1ListMeta';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApimachineryPkgApisMetaV1ListMeta object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.continue_ != null) {
      yield r'continue';
      yield serializers.serialize(
        object.continue_,
        specifiedType: const FullType(String),
      );
    }
    if (object.remainingItemCount != null) {
      yield r'remainingItemCount';
      yield serializers.serialize(
        object.remainingItemCount,
        specifiedType: const FullType(int),
      );
    }
    if (object.resourceVersion != null) {
      yield r'resourceVersion';
      yield serializers.serialize(
        object.resourceVersion,
        specifiedType: const FullType(String),
      );
    }
    if (object.selfLink != null) {
      yield r'selfLink';
      yield serializers.serialize(
        object.selfLink,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApimachineryPkgApisMetaV1ListMeta object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApimachineryPkgApisMetaV1ListMetaBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'continue':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.continue_ = valueDes;
          break;
        case r'remainingItemCount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.remainingItemCount = valueDes;
          break;
        case r'resourceVersion':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.resourceVersion = valueDes;
          break;
        case r'selfLink':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.selfLink = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApimachineryPkgApisMetaV1ListMeta deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApimachineryPkgApisMetaV1ListMetaBuilder();
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

