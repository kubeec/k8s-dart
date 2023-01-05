# k8s.model.IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceConversion

## Load the model package
```dart
import 'package:k8s/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**strategy** | **String** | strategy specifies how custom resources are converted between versions. Allowed values are: - `None`: The converter only change the apiVersion and would not touch any other field in the custom resource. - `Webhook`: API Server will call to an external webhook to do the conversion. Additional information   is needed for this option. This requires spec.preserveUnknownFields to be false, and spec.conversion.webhook to be set. | 
**webhook** | [**IoK8sApiextensionsApiserverPkgApisApiextensionsV1WebhookConversion**](IoK8sApiextensionsApiserverPkgApisApiextensionsV1WebhookConversion.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


