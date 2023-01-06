import 'package:test/test.dart';
import 'package:k8s/k8s.dart';

// tests for IoK8sApiCoreV1WindowsSecurityContextOptions
void main() {
  final instance = IoK8sApiCoreV1WindowsSecurityContextOptionsBuilder();
  // TODO add properties to the builder and call build()

  group(IoK8sApiCoreV1WindowsSecurityContextOptions, () {
    // GMSACredentialSpec is where the GMSA admission webhook (https://github.com/kubernetes-sigs/windows-gmsa) inlines the contents of the GMSA credential spec named by the GMSACredentialSpecName field.
    // String gmsaCredentialSpec
    test('to test the property `gmsaCredentialSpec`', () async {
      // TODO
    });

    // GMSACredentialSpecName is the name of the GMSA credential spec to use.
    // String gmsaCredentialSpecName
    test('to test the property `gmsaCredentialSpecName`', () async {
      // TODO
    });

    // HostProcess determines if a container should be run as a 'Host Process' container. This field is alpha-level and will only be honored by components that enable the WindowsHostProcessContainers feature flag. Setting this field without the feature flag will result in errors when validating the Pod. All of a Pod's containers must have the same effective HostProcess value (it is not allowed to have a mix of HostProcess containers and non-HostProcess containers).  In addition, if HostProcess is true then HostNetwork must also be set to true.
    // bool hostProcess
    test('to test the property `hostProcess`', () async {
      // TODO
    });

    // The UserName in Windows to run the entrypoint of the container process. Defaults to the user specified in image metadata if unspecified. May also be set in PodSecurityContext. If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence.
    // String runAsUserName
    test('to test the property `runAsUserName`', () async {
      // TODO
    });

  });
}
