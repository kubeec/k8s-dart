//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

import 'package:k8s/api.dart';
import 'package:test/test.dart';

// tests for IoK8sApimachineryPkgApisMetaV1ObjectMeta
void main() {
  // final instance = IoK8sApimachineryPkgApisMetaV1ObjectMeta();

  group('test IoK8sApimachineryPkgApisMetaV1ObjectMeta', () {
    // Annotations is an unstructured key value map stored with a resource that may be set by external tools to store and retrieve arbitrary metadata. They are not queryable and should be preserved when modifying objects. More info: http://kubernetes.io/docs/user-guide/annotations
    // Map<String, String> annotations (default value: const {})
    test('to test the property `annotations`', () async {
      // TODO
    });

    // Time is a wrapper around time.Time which supports correct marshaling to YAML and JSON.  Wrappers are provided for many of the factory methods that the time package offers.
    // DateTime creationTimestamp
    test('to test the property `creationTimestamp`', () async {
      // TODO
    });

    // Number of seconds allowed for this object to gracefully terminate before it will be removed from the system. Only set when deletionTimestamp is also set. May only be shortened. Read-only.
    // int deletionGracePeriodSeconds
    test('to test the property `deletionGracePeriodSeconds`', () async {
      // TODO
    });

    // Time is a wrapper around time.Time which supports correct marshaling to YAML and JSON.  Wrappers are provided for many of the factory methods that the time package offers.
    // DateTime deletionTimestamp
    test('to test the property `deletionTimestamp`', () async {
      // TODO
    });

    // Must be empty before the object is deleted from the registry. Each entry is an identifier for the responsible component that will remove the entry from the list. If the deletionTimestamp of the object is non-nil, entries in this list can only be removed. Finalizers may be processed and removed in any order.  Order is NOT enforced because it introduces significant risk of stuck finalizers. finalizers is a shared field, any actor with permission can reorder it. If the finalizer list is processed in order, then this can lead to a situation in which the component responsible for the first finalizer in the list is waiting for a signal (field value, external system, or other) produced by a component responsible for a finalizer later in the list, resulting in a deadlock. Without enforced ordering finalizers are free to order amongst themselves and are not vulnerable to ordering changes in the list.
    // List<String> finalizers (default value: const [])
    test('to test the property `finalizers`', () async {
      // TODO
    });

    // GenerateName is an optional prefix, used by the server, to generate a unique name ONLY IF the Name field has not been provided. If this field is used, the name returned to the client will be different than the name passed. This value will also be combined with a unique suffix. The provided value has the same validation rules as the Name field, and may be truncated by the length of the suffix required to make the value unique on the server.  If this field is specified and the generated name exists, the server will return a 409.  Applied only if Name is not specified. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#idempotency
    // String generateName
    test('to test the property `generateName`', () async {
      // TODO
    });

    // A sequence number representing a specific generation of the desired state. Populated by the system. Read-only.
    // int generation
    test('to test the property `generation`', () async {
      // TODO
    });

    // Map of string keys and values that can be used to organize and categorize (scope and select) objects. May match selectors of replication controllers and services. More info: http://kubernetes.io/docs/user-guide/labels
    // Map<String, String> labels (default value: const {})
    test('to test the property `labels`', () async {
      // TODO
    });

    // ManagedFields maps workflow-id and version to the set of fields that are managed by that workflow. This is mostly for internal housekeeping, and users typically shouldn't need to set or understand this field. A workflow can be the user's name, a controller's name, or the name of a specific apply path like \"ci-cd\". The set of fields is always in the version that the workflow used when modifying the object.
    // List<IoK8sApimachineryPkgApisMetaV1ManagedFieldsEntry> managedFields (default value: const [])
    test('to test the property `managedFields`', () async {
      // TODO
    });

    // Name must be unique within a namespace. Is required when creating resources, although some resources may allow a client to request the generation of an appropriate name automatically. Name is primarily intended for creation idempotence and configuration definition. Cannot be updated. More info: http://kubernetes.io/docs/user-guide/identifiers#names
    // String name
    test('to test the property `name`', () async {
      // TODO
    });

    // Namespace defines the space within which each name must be unique. An empty namespace is equivalent to the \"default\" namespace, but \"default\" is the canonical representation. Not all objects are required to be scoped to a namespace - the value of this field for those objects will be empty.  Must be a DNS_LABEL. Cannot be updated. More info: http://kubernetes.io/docs/user-guide/namespaces
    // String namespace
    test('to test the property `namespace`', () async {
      // TODO
    });

    // List of objects depended by this object. If ALL objects in the list have been deleted, this object will be garbage collected. If this object is managed by a controller, then an entry in this list will point to this controller, with the controller field set to true. There cannot be more than one managing controller.
    // List<IoK8sApimachineryPkgApisMetaV1OwnerReference> ownerReferences (default value: const [])
    test('to test the property `ownerReferences`', () async {
      // TODO
    });

    // An opaque value that represents the internal version of this object that can be used by clients to determine when objects have changed. May be used for optimistic concurrency, change detection, and the watch operation on a resource or set of resources. Clients must treat these values as opaque and passed unmodified back to the server. They may only be valid for a particular resource or set of resources.  Populated by the system. Read-only. Value must be treated as opaque by clients and . More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#concurrency-control-and-consistency
    // String resourceVersion
    test('to test the property `resourceVersion`', () async {
      // TODO
    });

    // Deprecated: selfLink is a legacy read-only field that is no longer populated by the system.
    // String selfLink
    test('to test the property `selfLink`', () async {
      // TODO
    });

    // UID is the unique in time and space value for this object. It is typically generated by the server on successful creation of a resource and is not allowed to change on PUT operations.  Populated by the system. Read-only. More info: http://kubernetes.io/docs/user-guide/identifiers#uids
    // String uid
    test('to test the property `uid`', () async {
      // TODO
    });


  });

}
