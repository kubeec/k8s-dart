import 'package:test/test.dart';
import 'package:k8s/k8s.dart';

// tests for IoK8sApiCoreV1ClaimSource
void main() {
  final instance = IoK8sApiCoreV1ClaimSourceBuilder();
  // TODO add properties to the builder and call build()

  group(IoK8sApiCoreV1ClaimSource, () {
    // ResourceClaimName is the name of a ResourceClaim object in the same namespace as this pod.
    // String resourceClaimName
    test('to test the property `resourceClaimName`', () async {
      // TODO
    });

    // ResourceClaimTemplateName is the name of a ResourceClaimTemplate object in the same namespace as this pod.  The template will be used to create a new ResourceClaim, which will be bound to this pod. When this pod is deleted, the ResourceClaim will also be deleted. The name of the ResourceClaim will be <pod name>-<resource name>, where <resource name> is the PodResourceClaim.Name. Pod validation will reject the pod if the concatenated name is not valid for a ResourceClaim (e.g. too long).  An existing ResourceClaim with that name that is not owned by the pod will not be used for the pod to avoid using an unrelated resource by mistake. Scheduling and pod startup are then blocked until the unrelated ResourceClaim is removed.  This field is immutable and no changes will be made to the corresponding ResourceClaim by the control plane after creating the ResourceClaim.
    // String resourceClaimTemplateName
    test('to test the property `resourceClaimTemplateName`', () async {
      // TODO
    });

  });
}
