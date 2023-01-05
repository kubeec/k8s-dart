# k8s.model.IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceDefinitionVersion

## Load the model package
```dart
import 'package:k8s/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**additionalPrinterColumns** | [**List<IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceColumnDefinition>**](IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceColumnDefinition.md) | additionalPrinterColumns specifies additional columns returned in Table output. See https://kubernetes.io/docs/reference/using-api/api-concepts/#receiving-resources-as-tables for details. If no columns are specified, a single column displaying the age of the custom resource is used. | [optional] [default to const []]
**deprecated** | **bool** | deprecated indicates this version of the custom resource API is deprecated. When set to true, API requests to this version receive a warning header in the server response. Defaults to false. | [optional] 
**deprecationWarning** | **String** | deprecationWarning overrides the default warning returned to API clients. May only be set when `deprecated` is true. The default warning indicates this version is deprecated and recommends use of the newest served version of equal or greater stability, if one exists. | [optional] 
**name** | **String** | name is the version name, e.g. “v1”, “v2beta1”, etc. The custom resources are served under this version at `/apis/<group>/<version>/...` if `served` is true. | 
**schema** | [**IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceValidation**](IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceValidation.md) |  | [optional] 
**served** | **bool** | served is a flag enabling/disabling this version from being served via REST APIs | 
**storage** | **bool** | storage indicates this version should be used when persisting custom resources to storage. There must be exactly one version with storage=true. | 
**subresources** | [**IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceSubresources**](IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceSubresources.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


