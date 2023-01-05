# k8s.model.IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceSubresources

## Load the model package
```dart
import 'package:k8s/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**scale** | [**IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceSubresourceScale**](IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceSubresourceScale.md) |  | [optional] 
**status** | [**Object**](.md) | CustomResourceSubresourceStatus defines how to serve the status subresource for CustomResources. Status is represented by the `.status` JSON path inside of a CustomResource. When set, * exposes a /status subresource for the custom resource * PUT requests to the /status subresource take a custom resource object, and ignore changes to anything except the status stanza * PUT/POST/PATCH requests to the custom resource ignore changes to the status stanza | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


