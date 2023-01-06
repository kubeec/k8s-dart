import 'package:test/test.dart';
import 'package:k8s/k8s.dart';

// tests for IoK8sApiAdmissionregistrationV1alpha1NamedRuleWithOperations
void main() {
  final instance = IoK8sApiAdmissionregistrationV1alpha1NamedRuleWithOperationsBuilder();
  // TODO add properties to the builder and call build()

  group(IoK8sApiAdmissionregistrationV1alpha1NamedRuleWithOperations, () {
    // APIGroups is the API groups the resources belong to. '*' is all groups. If '*' is present, the length of the slice must be one. Required.
    // BuiltList<String> apiGroups
    test('to test the property `apiGroups`', () async {
      // TODO
    });

    // APIVersions is the API versions the resources belong to. '*' is all versions. If '*' is present, the length of the slice must be one. Required.
    // BuiltList<String> apiVersions
    test('to test the property `apiVersions`', () async {
      // TODO
    });

    // Operations is the operations the admission hook cares about - CREATE, UPDATE, DELETE, CONNECT or * for all of those operations and any future admission operations that are added. If '*' is present, the length of the slice must be one. Required.
    // BuiltList<String> operations
    test('to test the property `operations`', () async {
      // TODO
    });

    // ResourceNames is an optional white list of names that the rule applies to.  An empty set means that everything is allowed.
    // BuiltList<String> resourceNames
    test('to test the property `resourceNames`', () async {
      // TODO
    });

    // Resources is a list of resources this rule applies to.  For example: 'pods' means pods. 'pods/log' means the log subresource of pods. '*' means all resources, but not subresources. 'pods/_*' means all subresources of pods. '*_/scale' means all scale subresources. '*_/_*' means all resources and their subresources.  If wildcard is present, the validation rule will ensure resources do not overlap with each other.  Depending on the enclosing object, subresources might not be allowed. Required.
    // BuiltList<String> resources
    test('to test the property `resources`', () async {
      // TODO
    });

    // scope specifies the scope of this rule. Valid values are \"Cluster\", \"Namespaced\", and \"*\" \"Cluster\" means that only cluster-scoped resources will match this rule. Namespace API objects are cluster-scoped. \"Namespaced\" means that only namespaced resources will match this rule. \"*\" means that there are no scope restrictions. Subresources match the scope of their parent resource. Default is \"*\".
    // String scope
    test('to test the property `scope`', () async {
      // TODO
    });

  });
}
