# k8s.model.IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceDefinitionStatus

## Load the model package
```dart
import 'package:k8s/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**acceptedNames** | [**IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceDefinitionNames**](IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceDefinitionNames.md) |  | [optional] 
**conditions** | [**BuiltList&lt;IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceDefinitionCondition&gt;**](IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceDefinitionCondition.md) | conditions indicate state for particular aspects of a CustomResourceDefinition | [optional] 
**storedVersions** | **BuiltList&lt;String&gt;** | storedVersions lists all versions of CustomResources that were ever persisted. Tracking these versions allows a migration path for stored versions in etcd. The field is mutable so a migration controller can finish a migration to another version (ensuring no old objects are left in storage), and then remove the rest of the versions from this list. Versions may not be removed from `spec.versions` while they exist in this list. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


