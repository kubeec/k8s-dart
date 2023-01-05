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

// tests for IoK8sApiAppsV1StatefulSetSpec
void main() {
  // final instance = IoK8sApiAppsV1StatefulSetSpec();

  group('test IoK8sApiAppsV1StatefulSetSpec', () {
    // Minimum number of seconds for which a newly created pod should be ready without any of its container crashing for it to be considered available. Defaults to 0 (pod will be considered available as soon as it is ready)
    // int minReadySeconds
    test('to test the property `minReadySeconds`', () async {
      // TODO
    });

    // IoK8sApiAppsV1StatefulSetOrdinals ordinals
    test('to test the property `ordinals`', () async {
      // TODO
    });

    // IoK8sApiAppsV1StatefulSetPersistentVolumeClaimRetentionPolicy persistentVolumeClaimRetentionPolicy
    test('to test the property `persistentVolumeClaimRetentionPolicy`', () async {
      // TODO
    });

    // podManagementPolicy controls how pods are created during initial scale up, when replacing pods on nodes, or when scaling down. The default policy is `OrderedReady`, where pods are created in increasing order (pod-0, then pod-1, etc) and the controller will wait until each pod is ready before continuing. When scaling down, the pods are removed in the opposite order. The alternative policy is `Parallel` which will create pods in parallel to match the desired scale without waiting, and on scale down will delete all pods at once.  
    // String podManagementPolicy
    test('to test the property `podManagementPolicy`', () async {
      // TODO
    });

    // replicas is the desired number of replicas of the given Template. These are replicas in the sense that they are instantiations of the same Template, but individual replicas also have a consistent identity. If unspecified, defaults to 1.
    // int replicas
    test('to test the property `replicas`', () async {
      // TODO
    });

    // revisionHistoryLimit is the maximum number of revisions that will be maintained in the StatefulSet's revision history. The revision history consists of all revisions not represented by a currently applied StatefulSetSpec version. The default value is 10.
    // int revisionHistoryLimit
    test('to test the property `revisionHistoryLimit`', () async {
      // TODO
    });

    // IoK8sApimachineryPkgApisMetaV1LabelSelector selector
    test('to test the property `selector`', () async {
      // TODO
    });

    // serviceName is the name of the service that governs this StatefulSet. This service must exist before the StatefulSet, and is responsible for the network identity of the set. Pods get DNS/hostnames that follow the pattern: pod-specific-string.serviceName.default.svc.cluster.local where \"pod-specific-string\" is managed by the StatefulSet controller.
    // String serviceName
    test('to test the property `serviceName`', () async {
      // TODO
    });

    // IoK8sApiCoreV1PodTemplateSpec template
    test('to test the property `template`', () async {
      // TODO
    });

    // IoK8sApiAppsV1StatefulSetUpdateStrategy updateStrategy
    test('to test the property `updateStrategy`', () async {
      // TODO
    });

    // volumeClaimTemplates is a list of claims that pods are allowed to reference. The StatefulSet controller is responsible for mapping network identities to claims in a way that maintains the identity of a pod. Every claim in this list must have at least one matching (by name) volumeMount in one container in the template. A claim in this list takes precedence over any volumes in the template, with the same name.
    // List<IoK8sApiCoreV1PersistentVolumeClaim> volumeClaimTemplates (default value: const [])
    test('to test the property `volumeClaimTemplates`', () async {
      // TODO
    });


  });

}
