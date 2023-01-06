import 'package:test/test.dart';
import 'package:k8s/k8s.dart';

// tests for IoK8sApiAuthenticationV1UserInfo
void main() {
  final instance = IoK8sApiAuthenticationV1UserInfoBuilder();
  // TODO add properties to the builder and call build()

  group(IoK8sApiAuthenticationV1UserInfo, () {
    // Any additional information provided by the authenticator.
    // BuiltMap<String, BuiltList<String>> extra
    test('to test the property `extra`', () async {
      // TODO
    });

    // The names of groups this user is a part of.
    // BuiltList<String> groups
    test('to test the property `groups`', () async {
      // TODO
    });

    // A unique value that identifies this user across time. If this user is deleted and another user by the same name is added, they will have different UIDs.
    // String uid
    test('to test the property `uid`', () async {
      // TODO
    });

    // The name that uniquely identifies this user among all active users.
    // String username
    test('to test the property `username`', () async {
      // TODO
    });

  });
}
