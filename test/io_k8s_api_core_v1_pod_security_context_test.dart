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

// tests for IoK8sApiCoreV1PodSecurityContext
void main() {
  // final instance = IoK8sApiCoreV1PodSecurityContext();

  group('test IoK8sApiCoreV1PodSecurityContext', () {
    // A special supplemental group that applies to all containers in a pod. Some volume types allow the Kubelet to change the ownership of that volume to be owned by the pod:  1. The owning GID will be the FSGroup 2. The setgid bit is set (new files created in the volume will be owned by FSGroup) 3. The permission bits are OR'd with rw-rw----  If unset, the Kubelet will not modify the ownership and permissions of any volume. Note that this field cannot be set when spec.os.name is windows.
    // int fsGroup
    test('to test the property `fsGroup`', () async {
      // TODO
    });

    // fsGroupChangePolicy defines behavior of changing ownership and permission of the volume before being exposed inside Pod. This field will only apply to volume types which support fsGroup based ownership(and permissions). It will have no effect on ephemeral volume types such as: secret, configmaps and emptydir. Valid values are \"OnRootMismatch\" and \"Always\". If not specified, \"Always\" is used. Note that this field cannot be set when spec.os.name is windows.
    // String fsGroupChangePolicy
    test('to test the property `fsGroupChangePolicy`', () async {
      // TODO
    });

    // The GID to run the entrypoint of the container process. Uses runtime default if unset. May also be set in SecurityContext.  If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence for that container. Note that this field cannot be set when spec.os.name is windows.
    // int runAsGroup
    test('to test the property `runAsGroup`', () async {
      // TODO
    });

    // Indicates that the container must run as a non-root user. If true, the Kubelet will validate the image at runtime to ensure that it does not run as UID 0 (root) and fail to start the container if it does. If unset or false, no such validation will be performed. May also be set in SecurityContext.  If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence.
    // bool runAsNonRoot
    test('to test the property `runAsNonRoot`', () async {
      // TODO
    });

    // The UID to run the entrypoint of the container process. Defaults to user specified in image metadata if unspecified. May also be set in SecurityContext.  If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence for that container. Note that this field cannot be set when spec.os.name is windows.
    // int runAsUser
    test('to test the property `runAsUser`', () async {
      // TODO
    });

    // IoK8sApiCoreV1SELinuxOptions seLinuxOptions
    test('to test the property `seLinuxOptions`', () async {
      // TODO
    });

    // IoK8sApiCoreV1SeccompProfile seccompProfile
    test('to test the property `seccompProfile`', () async {
      // TODO
    });

    // A list of groups applied to the first process run in each container, in addition to the container's primary GID, the fsGroup (if specified), and group memberships defined in the container image for the uid of the container process. If unspecified, no additional groups are added to any container. Note that group memberships defined in the container image for the uid of the container process are still effective, even if they are not included in this list. Note that this field cannot be set when spec.os.name is windows.
    // List<int> supplementalGroups (default value: const [])
    test('to test the property `supplementalGroups`', () async {
      // TODO
    });

    // Sysctls hold a list of namespaced sysctls used for the pod. Pods with unsupported sysctls (by the container runtime) might fail to launch. Note that this field cannot be set when spec.os.name is windows.
    // List<IoK8sApiCoreV1Sysctl> sysctls (default value: const [])
    test('to test the property `sysctls`', () async {
      // TODO
    });

    // IoK8sApiCoreV1WindowsSecurityContextOptions windowsOptions
    test('to test the property `windowsOptions`', () async {
      // TODO
    });


  });

}
