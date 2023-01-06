import 'package:test/test.dart';
import 'package:k8s/k8s.dart';

// tests for IoK8sApiCoreV1GitRepoVolumeSource
void main() {
  final instance = IoK8sApiCoreV1GitRepoVolumeSourceBuilder();
  // TODO add properties to the builder and call build()

  group(IoK8sApiCoreV1GitRepoVolumeSource, () {
    // directory is the target directory name. Must not contain or start with '..'.  If '.' is supplied, the volume directory will be the git repository.  Otherwise, if specified, the volume will contain the git repository in the subdirectory with the given name.
    // String directory
    test('to test the property `directory`', () async {
      // TODO
    });

    // repository is the URL
    // String repository
    test('to test the property `repository`', () async {
      // TODO
    });

    // revision is the commit hash for the specified revision.
    // String revision
    test('to test the property `revision`', () async {
      // TODO
    });

  });
}
