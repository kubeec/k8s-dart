# k8s.model.IoK8sApiextensionsApiserverPkgApisApiextensionsV1WebhookConversion

## Load the model package
```dart
import 'package:k8s/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**clientConfig** | [**IoK8sApiextensionsApiserverPkgApisApiextensionsV1WebhookClientConfig**](IoK8sApiextensionsApiserverPkgApisApiextensionsV1WebhookClientConfig.md) |  | [optional] 
**conversionReviewVersions** | **List<String>** | conversionReviewVersions is an ordered list of preferred `ConversionReview` versions the Webhook expects. The API server will use the first version in the list which it supports. If none of the versions specified in this list are supported by API server, conversion will fail for the custom resource. If a persisted Webhook configuration specifies allowed versions and does not include any versions known to the API Server, calls to the webhook will fail. | [default to const []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


