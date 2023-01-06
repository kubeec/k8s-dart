import 'package:test/test.dart';
import 'package:k8s/k8s.dart';

// tests for IoK8sApiCoreV1SecurityContext
void main() {
  final instance = IoK8sApiCoreV1SecurityContextBuilder();
  // TODO add properties to the builder and call build()

  group(IoK8sApiCoreV1SecurityContext, () {
    // AllowPrivilegeEscalation controls whether a process can gain more privileges than its parent process. This bool directly controls if the no_new_privs flag will be set on the container process. AllowPrivilegeEscalation is true always when the container is: 1) run as Privileged 2) has CAP_SYS_ADMIN Note that this field cannot be set when spec.os.name is windows.
    // bool allowPrivilegeEscalation
    test('to test the property `allowPrivilegeEscalation`', () async {
      // TODO
    });

    // IoK8sApiCoreV1Capabilities capabilities
    test('to test the property `capabilities`', () async {
      // TODO
    });

    // Run container in privileged mode. Processes in privileged containers are essentially equivalent to root on the host. Defaults to false. Note that this field cannot be set when spec.os.name is windows.
    // bool privileged
    test('to test the property `privileged`', () async {
      // TODO
    });

    // procMount denotes the type of proc mount to use for the containers. The default is DefaultProcMount which uses the container runtime defaults for readonly paths and masked paths. This requires the ProcMountType feature flag to be enabled. Note that this field cannot be set when spec.os.name is windows.
    // String procMount
    test('to test the property `procMount`', () async {
      // TODO
    });

    // Whether this container has a read-only root filesystem. Default is false. Note that this field cannot be set when spec.os.name is windows.
    // bool readOnlyRootFilesystem
    test('to test the property `readOnlyRootFilesystem`', () async {
      // TODO
    });

    // The GID to run the entrypoint of the container process. Uses runtime default if unset. May also be set in PodSecurityContext.  If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence. Note that this field cannot be set when spec.os.name is windows.
    // int runAsGroup
    test('to test the property `runAsGroup`', () async {
      // TODO
    });

    // Indicates that the container must run as a non-root user. If true, the Kubelet will validate the image at runtime to ensure that it does not run as UID 0 (root) and fail to start the container if it does. If unset or false, no such validation will be performed. May also be set in PodSecurityContext.  If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence.
    // bool runAsNonRoot
    test('to test the property `runAsNonRoot`', () async {
      // TODO
    });

    // The UID to run the entrypoint of the container process. Defaults to user specified in image metadata if unspecified. May also be set in PodSecurityContext.  If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence. Note that this field cannot be set when spec.os.name is windows.
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

    // IoK8sApiCoreV1WindowsSecurityContextOptions windowsOptions
    test('to test the property `windowsOptions`', () async {
      // TODO
    });

  });
}
