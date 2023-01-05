# k8s.model.IoK8sApiCoreV1AzureFilePersistentVolumeSource

## Load the model package
```dart
import 'package:k8s/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**readOnly** | **bool** | readOnly defaults to false (read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts. | [optional] 
**secretName** | **String** | secretName is the name of secret that contains Azure Storage Account Name and Key | 
**secretNamespace** | **String** | secretNamespace is the namespace of the secret that contains Azure Storage Account Name and Key default is the same as the Pod | [optional] 
**shareName** | **String** | shareName is the azure Share Name | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


