//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_core_v1_git_repo_volume_source.g.dart';

/// Represents a volume that is populated with the contents of a git repository. Git repo volumes do not support ownership management. Git repo volumes support SELinux relabeling.  DEPRECATED: GitRepo is deprecated. To provision a container with a git repo, mount an EmptyDir into an InitContainer that clones the repo using git, then mount the EmptyDir into the Pod's container.
///
/// Properties:
/// * [directory] - directory is the target directory name. Must not contain or start with '..'.  If '.' is supplied, the volume directory will be the git repository.  Otherwise, if specified, the volume will contain the git repository in the subdirectory with the given name.
/// * [repository] - repository is the URL
/// * [revision] - revision is the commit hash for the specified revision.
@BuiltValue()
abstract class IoK8sApiCoreV1GitRepoVolumeSource implements Built<IoK8sApiCoreV1GitRepoVolumeSource, IoK8sApiCoreV1GitRepoVolumeSourceBuilder> {
  /// directory is the target directory name. Must not contain or start with '..'.  If '.' is supplied, the volume directory will be the git repository.  Otherwise, if specified, the volume will contain the git repository in the subdirectory with the given name.
  @BuiltValueField(wireName: r'directory')
  String? get directory;

  /// repository is the URL
  @BuiltValueField(wireName: r'repository')
  String get repository;

  /// revision is the commit hash for the specified revision.
  @BuiltValueField(wireName: r'revision')
  String? get revision;

  IoK8sApiCoreV1GitRepoVolumeSource._();

  factory IoK8sApiCoreV1GitRepoVolumeSource([void updates(IoK8sApiCoreV1GitRepoVolumeSourceBuilder b)]) = _$IoK8sApiCoreV1GitRepoVolumeSource;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiCoreV1GitRepoVolumeSourceBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiCoreV1GitRepoVolumeSource> get serializer => _$IoK8sApiCoreV1GitRepoVolumeSourceSerializer();
}

class _$IoK8sApiCoreV1GitRepoVolumeSourceSerializer implements PrimitiveSerializer<IoK8sApiCoreV1GitRepoVolumeSource> {
  @override
  final Iterable<Type> types = const [IoK8sApiCoreV1GitRepoVolumeSource, _$IoK8sApiCoreV1GitRepoVolumeSource];

  @override
  final String wireName = r'IoK8sApiCoreV1GitRepoVolumeSource';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiCoreV1GitRepoVolumeSource object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.directory != null) {
      yield r'directory';
      yield serializers.serialize(
        object.directory,
        specifiedType: const FullType(String),
      );
    }
    yield r'repository';
    yield serializers.serialize(
      object.repository,
      specifiedType: const FullType(String),
    );
    if (object.revision != null) {
      yield r'revision';
      yield serializers.serialize(
        object.revision,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiCoreV1GitRepoVolumeSource object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiCoreV1GitRepoVolumeSourceBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'directory':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.directory = valueDes;
          break;
        case r'repository':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.repository = valueDes;
          break;
        case r'revision':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.revision = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiCoreV1GitRepoVolumeSource deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiCoreV1GitRepoVolumeSourceBuilder();
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

