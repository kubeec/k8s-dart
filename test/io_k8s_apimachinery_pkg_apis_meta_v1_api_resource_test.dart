import 'package:test/test.dart';
import 'package:k8s/k8s.dart';

// tests for IoK8sApimachineryPkgApisMetaV1APIResource
void main() {
  final instance = IoK8sApimachineryPkgApisMetaV1APIResourceBuilder();
  // TODO add properties to the builder and call build()

  group(IoK8sApimachineryPkgApisMetaV1APIResource, () {
    // categories is a list of the grouped resources this resource belongs to (e.g. 'all')
    // BuiltList<String> categories
    test('to test the property `categories`', () async {
      // TODO
    });

    // group is the preferred group of the resource.  Empty implies the group of the containing resource list. For subresources, this may have a different value, for example: Scale\".
    // String group
    test('to test the property `group`', () async {
      // TODO
    });

    // kind is the kind for the resource (e.g. 'Foo' is the kind for a resource 'foo')
    // String kind
    test('to test the property `kind`', () async {
      // TODO
    });

    // name is the plural name of the resource.
    // String name
    test('to test the property `name`', () async {
      // TODO
    });

    // namespaced indicates if a resource is namespaced or not.
    // bool namespaced
    test('to test the property `namespaced`', () async {
      // TODO
    });

    // shortNames is a list of suggested short names of the resource.
    // BuiltList<String> shortNames
    test('to test the property `shortNames`', () async {
      // TODO
    });

    // singularName is the singular name of the resource.  This allows clients to handle plural and singular opaquely. The singularName is more correct for reporting status on a single item and both singular and plural are allowed from the kubectl CLI interface.
    // String singularName
    test('to test the property `singularName`', () async {
      // TODO
    });

    // The hash value of the storage version, the version this resource is converted to when written to the data store. Value must be treated as opaque by clients. Only equality comparison on the value is valid. This is an alpha feature and may change or be removed in the future. The field is populated by the apiserver only if the StorageVersionHash feature gate is enabled. This field will remain optional even if it graduates.
    // String storageVersionHash
    test('to test the property `storageVersionHash`', () async {
      // TODO
    });

    // verbs is a list of supported kube verbs (this includes get, list, watch, create, update, patch, delete, deletecollection, and proxy)
    // BuiltList<String> verbs
    test('to test the property `verbs`', () async {
      // TODO
    });

    // version is the preferred version of the resource.  Empty implies the version of the containing resource list For subresources, this may have a different value, for example: v1 (while inside a v1beta1 version of the core resource's group)\".
    // String version
    test('to test the property `version`', () async {
      // TODO
    });

  });
}
