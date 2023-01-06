import 'package:test/test.dart';
import 'package:k8s/k8s.dart';

// tests for IoK8sApimachineryPkgApisMetaV1OwnerReference
void main() {
  final instance = IoK8sApimachineryPkgApisMetaV1OwnerReferenceBuilder();
  // TODO add properties to the builder and call build()

  group(IoK8sApimachineryPkgApisMetaV1OwnerReference, () {
    // API version of the referent.
    // String apiVersion
    test('to test the property `apiVersion`', () async {
      // TODO
    });

    // If true, AND if the owner has the \"foregroundDeletion\" finalizer, then the owner cannot be deleted from the key-value store until this reference is removed. See https://kubernetes.io/docs/concepts/architecture/garbage-collection/#foreground-deletion for how the garbage collector interacts with this field and enforces the foreground deletion. Defaults to false. To set this field, a user needs \"delete\" permission of the owner, otherwise 422 (Unprocessable Entity) will be returned.
    // bool blockOwnerDeletion
    test('to test the property `blockOwnerDeletion`', () async {
      // TODO
    });

    // If true, this reference points to the managing controller.
    // bool controller
    test('to test the property `controller`', () async {
      // TODO
    });

    // Kind of the referent. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
    // String kind
    test('to test the property `kind`', () async {
      // TODO
    });

    // Name of the referent. More info: http://kubernetes.io/docs/user-guide/identifiers#names
    // String name
    test('to test the property `name`', () async {
      // TODO
    });

    // UID of the referent. More info: http://kubernetes.io/docs/user-guide/identifiers#uids
    // String uid
    test('to test the property `uid`', () async {
      // TODO
    });

  });
}
