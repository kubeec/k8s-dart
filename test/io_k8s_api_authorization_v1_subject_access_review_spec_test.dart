import 'package:test/test.dart';
import 'package:k8s/k8s.dart';

// tests for IoK8sApiAuthorizationV1SubjectAccessReviewSpec
void main() {
  final instance = IoK8sApiAuthorizationV1SubjectAccessReviewSpecBuilder();
  // TODO add properties to the builder and call build()

  group(IoK8sApiAuthorizationV1SubjectAccessReviewSpec, () {
    // Extra corresponds to the user.Info.GetExtra() method from the authenticator.  Since that is input to the authorizer it needs a reflection here.
    // BuiltMap<String, BuiltList<String>> extra
    test('to test the property `extra`', () async {
      // TODO
    });

    // Groups is the groups you're testing for.
    // BuiltList<String> groups
    test('to test the property `groups`', () async {
      // TODO
    });

    // IoK8sApiAuthorizationV1NonResourceAttributes nonResourceAttributes
    test('to test the property `nonResourceAttributes`', () async {
      // TODO
    });

    // IoK8sApiAuthorizationV1ResourceAttributes resourceAttributes
    test('to test the property `resourceAttributes`', () async {
      // TODO
    });

    // UID information about the requesting user.
    // String uid
    test('to test the property `uid`', () async {
      // TODO
    });

    // User is the user you're testing for. If you specify \"User\" but not \"Groups\", then is it interpreted as \"What if User were not a member of any groups
    // String user
    test('to test the property `user`', () async {
      // TODO
    });

  });
}
