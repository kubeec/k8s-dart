//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of k8s;

class ApiClient {
  ApiClient({this.basePath = 'http://localhost', this.authentication,});

  final String basePath;
  final Authentication? authentication;

  var _client = Client();
  final _defaultHeaderMap = <String, String>{};

  /// Returns the current HTTP [Client] instance to use in this class.
  ///
  /// The return value is guaranteed to never be null.
  Client get client => _client;

  /// Requests to use a new HTTP [Client] in this class.
  set client(Client newClient) {
    _client = newClient;
  }

  Map<String, String> get defaultHeaderMap => _defaultHeaderMap;

  void addDefaultHeader(String key, String value) {
     _defaultHeaderMap[key] = value;
  }

  // We don't use a Map<String, String> for queryParams.
  // If collectionFormat is 'multi', a key might appear multiple times.
  Future<Response> invokeAPI(
    String path,
    String method,
    List<QueryParam> queryParams,
    Object? body,
    Map<String, String> headerParams,
    Map<String, String> formParams,
    String? contentType,
  ) async {
    await authentication?.applyToParams(queryParams, headerParams);

    headerParams.addAll(_defaultHeaderMap);
    if (contentType != null) {
      headerParams['Content-Type'] = contentType;
    }

    final urlEncodedQueryParams = queryParams.map((param) => '$param');
    final queryString = urlEncodedQueryParams.isNotEmpty ? '?${urlEncodedQueryParams.join('&')}' : '';
    final uri = Uri.parse('$basePath$path$queryString');

    try {
      // Special case for uploading a single file which isn't a 'multipart/form-data'.
      if (
        body is MultipartFile && (contentType == null ||
        !contentType.toLowerCase().startsWith('multipart/form-data'))
      ) {
        final request = StreamedRequest(method, uri);
        request.headers.addAll(headerParams);
        request.contentLength = body.length;
        body.finalize().listen(
          request.sink.add,
          onDone: request.sink.close,
          // ignore: avoid_types_on_closure_parameters
          onError: (Object error, StackTrace trace) => request.sink.close(),
          cancelOnError: true,
        );
        final response = await _client.send(request);
        return Response.fromStream(response);
      }

      if (body is MultipartRequest) {
        final request = MultipartRequest(method, uri);
        request.fields.addAll(body.fields);
        request.files.addAll(body.files);
        request.headers.addAll(body.headers);
        request.headers.addAll(headerParams);
        final response = await _client.send(request);
        return Response.fromStream(response);
      }

      final msgBody = contentType == 'application/x-www-form-urlencoded'
        ? formParams
        : await serializeAsync(body);
      final nullableHeaderParams = headerParams.isEmpty ? null : headerParams;

      switch(method) {
        case 'POST': return await _client.post(uri, headers: nullableHeaderParams, body: msgBody,);
        case 'PUT': return await _client.put(uri, headers: nullableHeaderParams, body: msgBody,);
        case 'DELETE': return await _client.delete(uri, headers: nullableHeaderParams, body: msgBody,);
        case 'PATCH': return await _client.patch(uri, headers: nullableHeaderParams, body: msgBody,);
        case 'HEAD': return await _client.head(uri, headers: nullableHeaderParams,);
        case 'GET': return await _client.get(uri, headers: nullableHeaderParams,);
      }
    } on SocketException catch (error, trace) {
      throw ApiException.withInner(
        HttpStatus.badRequest,
        'Socket operation failed: $method $path',
        error,
        trace,
      );
    } on TlsException catch (error, trace) {
      throw ApiException.withInner(
        HttpStatus.badRequest,
        'TLS/SSL communication failed: $method $path',
        error,
        trace,
      );
    } on IOException catch (error, trace) {
      throw ApiException.withInner(
        HttpStatus.badRequest,
        'I/O operation failed: $method $path',
        error,
        trace,
      );
    } on ClientException catch (error, trace) {
      throw ApiException.withInner(
        HttpStatus.badRequest,
        'HTTP connection failed: $method $path',
        error,
        trace,
      );
    } on Exception catch (error, trace) {
      throw ApiException.withInner(
        HttpStatus.badRequest,
        'Exception occurred: $method $path',
        error,
        trace,
      );
    }

    throw ApiException(
      HttpStatus.badRequest,
      'Invalid HTTP operation: $method $path',
    );
  }

  Future<dynamic> deserializeAsync(String json, String targetType, {bool growable = false,}) async =>
    // ignore: deprecated_member_use_from_same_package
    deserialize(json, targetType, growable: growable);

  @Deprecated('Scheduled for removal in OpenAPI Generator 6.x. Use deserializeAsync() instead.')
  dynamic deserialize(String json, String targetType, {bool growable = false,}) {
    // Remove all spaces. Necessary for regular expressions as well.
    targetType = targetType.replaceAll(' ', ''); // ignore: parameter_assignments

    // If the expected target type is String, nothing to do...
    return targetType == 'String'
      ? json
      : _deserialize(jsonDecode(json), targetType, growable: growable);
  }

  // ignore: deprecated_member_use_from_same_package
  Future<String> serializeAsync(Object? value) async => serialize(value);

  @Deprecated('Scheduled for removal in OpenAPI Generator 6.x. Use serializeAsync() instead.')
  String serialize(Object? value) => value == null ? '' : json.encode(value);

  static dynamic _deserialize(dynamic value, String targetType, {bool growable = false}) {
    try {
      switch (targetType) {
        case 'String':
          return value is String ? value : value.toString();
        case 'int':
          return value is int ? value : int.parse('$value');
        case 'double':
          return value is double ? value : double.parse('$value');
        case 'bool':
          if (value is bool) {
            return value;
          }
          final valueString = '$value'.toLowerCase();
          return valueString == 'true' || valueString == '1';
        case 'DateTime':
          return value is DateTime ? value : DateTime.tryParse(value);
        case 'IoK8sApiAdmissionregistrationV1MutatingWebhook':
          return IoK8sApiAdmissionregistrationV1MutatingWebhook.fromJson(value);
        case 'IoK8sApiAdmissionregistrationV1MutatingWebhookConfiguration':
          return IoK8sApiAdmissionregistrationV1MutatingWebhookConfiguration.fromJson(value);
        case 'IoK8sApiAdmissionregistrationV1MutatingWebhookConfigurationList':
          return IoK8sApiAdmissionregistrationV1MutatingWebhookConfigurationList.fromJson(value);
        case 'IoK8sApiAdmissionregistrationV1RuleWithOperations':
          return IoK8sApiAdmissionregistrationV1RuleWithOperations.fromJson(value);
        case 'IoK8sApiAdmissionregistrationV1ServiceReference':
          return IoK8sApiAdmissionregistrationV1ServiceReference.fromJson(value);
        case 'IoK8sApiAdmissionregistrationV1ValidatingWebhook':
          return IoK8sApiAdmissionregistrationV1ValidatingWebhook.fromJson(value);
        case 'IoK8sApiAdmissionregistrationV1ValidatingWebhookConfiguration':
          return IoK8sApiAdmissionregistrationV1ValidatingWebhookConfiguration.fromJson(value);
        case 'IoK8sApiAdmissionregistrationV1ValidatingWebhookConfigurationList':
          return IoK8sApiAdmissionregistrationV1ValidatingWebhookConfigurationList.fromJson(value);
        case 'IoK8sApiAdmissionregistrationV1WebhookClientConfig':
          return IoK8sApiAdmissionregistrationV1WebhookClientConfig.fromJson(value);
        case 'IoK8sApiAdmissionregistrationV1alpha1MatchResources':
          return IoK8sApiAdmissionregistrationV1alpha1MatchResources.fromJson(value);
        case 'IoK8sApiAdmissionregistrationV1alpha1NamedRuleWithOperations':
          return IoK8sApiAdmissionregistrationV1alpha1NamedRuleWithOperations.fromJson(value);
        case 'IoK8sApiAdmissionregistrationV1alpha1ParamKind':
          return IoK8sApiAdmissionregistrationV1alpha1ParamKind.fromJson(value);
        case 'IoK8sApiAdmissionregistrationV1alpha1ParamRef':
          return IoK8sApiAdmissionregistrationV1alpha1ParamRef.fromJson(value);
        case 'IoK8sApiAdmissionregistrationV1alpha1ValidatingAdmissionPolicy':
          return IoK8sApiAdmissionregistrationV1alpha1ValidatingAdmissionPolicy.fromJson(value);
        case 'IoK8sApiAdmissionregistrationV1alpha1ValidatingAdmissionPolicyBinding':
          return IoK8sApiAdmissionregistrationV1alpha1ValidatingAdmissionPolicyBinding.fromJson(value);
        case 'IoK8sApiAdmissionregistrationV1alpha1ValidatingAdmissionPolicyBindingList':
          return IoK8sApiAdmissionregistrationV1alpha1ValidatingAdmissionPolicyBindingList.fromJson(value);
        case 'IoK8sApiAdmissionregistrationV1alpha1ValidatingAdmissionPolicyBindingSpec':
          return IoK8sApiAdmissionregistrationV1alpha1ValidatingAdmissionPolicyBindingSpec.fromJson(value);
        case 'IoK8sApiAdmissionregistrationV1alpha1ValidatingAdmissionPolicyList':
          return IoK8sApiAdmissionregistrationV1alpha1ValidatingAdmissionPolicyList.fromJson(value);
        case 'IoK8sApiAdmissionregistrationV1alpha1ValidatingAdmissionPolicySpec':
          return IoK8sApiAdmissionregistrationV1alpha1ValidatingAdmissionPolicySpec.fromJson(value);
        case 'IoK8sApiAdmissionregistrationV1alpha1Validation':
          return IoK8sApiAdmissionregistrationV1alpha1Validation.fromJson(value);
        case 'IoK8sApiApiserverinternalV1alpha1ServerStorageVersion':
          return IoK8sApiApiserverinternalV1alpha1ServerStorageVersion.fromJson(value);
        case 'IoK8sApiApiserverinternalV1alpha1StorageVersion':
          return IoK8sApiApiserverinternalV1alpha1StorageVersion.fromJson(value);
        case 'IoK8sApiApiserverinternalV1alpha1StorageVersionCondition':
          return IoK8sApiApiserverinternalV1alpha1StorageVersionCondition.fromJson(value);
        case 'IoK8sApiApiserverinternalV1alpha1StorageVersionList':
          return IoK8sApiApiserverinternalV1alpha1StorageVersionList.fromJson(value);
        case 'IoK8sApiApiserverinternalV1alpha1StorageVersionStatus':
          return IoK8sApiApiserverinternalV1alpha1StorageVersionStatus.fromJson(value);
        case 'IoK8sApiAppsV1ControllerRevision':
          return IoK8sApiAppsV1ControllerRevision.fromJson(value);
        case 'IoK8sApiAppsV1ControllerRevisionList':
          return IoK8sApiAppsV1ControllerRevisionList.fromJson(value);
        case 'IoK8sApiAppsV1DaemonSet':
          return IoK8sApiAppsV1DaemonSet.fromJson(value);
        case 'IoK8sApiAppsV1DaemonSetCondition':
          return IoK8sApiAppsV1DaemonSetCondition.fromJson(value);
        case 'IoK8sApiAppsV1DaemonSetList':
          return IoK8sApiAppsV1DaemonSetList.fromJson(value);
        case 'IoK8sApiAppsV1DaemonSetSpec':
          return IoK8sApiAppsV1DaemonSetSpec.fromJson(value);
        case 'IoK8sApiAppsV1DaemonSetStatus':
          return IoK8sApiAppsV1DaemonSetStatus.fromJson(value);
        case 'IoK8sApiAppsV1DaemonSetUpdateStrategy':
          return IoK8sApiAppsV1DaemonSetUpdateStrategy.fromJson(value);
        case 'IoK8sApiAppsV1Deployment':
          return IoK8sApiAppsV1Deployment.fromJson(value);
        case 'IoK8sApiAppsV1DeploymentCondition':
          return IoK8sApiAppsV1DeploymentCondition.fromJson(value);
        case 'IoK8sApiAppsV1DeploymentList':
          return IoK8sApiAppsV1DeploymentList.fromJson(value);
        case 'IoK8sApiAppsV1DeploymentSpec':
          return IoK8sApiAppsV1DeploymentSpec.fromJson(value);
        case 'IoK8sApiAppsV1DeploymentStatus':
          return IoK8sApiAppsV1DeploymentStatus.fromJson(value);
        case 'IoK8sApiAppsV1DeploymentStrategy':
          return IoK8sApiAppsV1DeploymentStrategy.fromJson(value);
        case 'IoK8sApiAppsV1ReplicaSet':
          return IoK8sApiAppsV1ReplicaSet.fromJson(value);
        case 'IoK8sApiAppsV1ReplicaSetCondition':
          return IoK8sApiAppsV1ReplicaSetCondition.fromJson(value);
        case 'IoK8sApiAppsV1ReplicaSetList':
          return IoK8sApiAppsV1ReplicaSetList.fromJson(value);
        case 'IoK8sApiAppsV1ReplicaSetSpec':
          return IoK8sApiAppsV1ReplicaSetSpec.fromJson(value);
        case 'IoK8sApiAppsV1ReplicaSetStatus':
          return IoK8sApiAppsV1ReplicaSetStatus.fromJson(value);
        case 'IoK8sApiAppsV1RollingUpdateDaemonSet':
          return IoK8sApiAppsV1RollingUpdateDaemonSet.fromJson(value);
        case 'IoK8sApiAppsV1RollingUpdateDeployment':
          return IoK8sApiAppsV1RollingUpdateDeployment.fromJson(value);
        case 'IoK8sApiAppsV1RollingUpdateStatefulSetStrategy':
          return IoK8sApiAppsV1RollingUpdateStatefulSetStrategy.fromJson(value);
        case 'IoK8sApiAppsV1StatefulSet':
          return IoK8sApiAppsV1StatefulSet.fromJson(value);
        case 'IoK8sApiAppsV1StatefulSetCondition':
          return IoK8sApiAppsV1StatefulSetCondition.fromJson(value);
        case 'IoK8sApiAppsV1StatefulSetList':
          return IoK8sApiAppsV1StatefulSetList.fromJson(value);
        case 'IoK8sApiAppsV1StatefulSetOrdinals':
          return IoK8sApiAppsV1StatefulSetOrdinals.fromJson(value);
        case 'IoK8sApiAppsV1StatefulSetPersistentVolumeClaimRetentionPolicy':
          return IoK8sApiAppsV1StatefulSetPersistentVolumeClaimRetentionPolicy.fromJson(value);
        case 'IoK8sApiAppsV1StatefulSetSpec':
          return IoK8sApiAppsV1StatefulSetSpec.fromJson(value);
        case 'IoK8sApiAppsV1StatefulSetStatus':
          return IoK8sApiAppsV1StatefulSetStatus.fromJson(value);
        case 'IoK8sApiAppsV1StatefulSetUpdateStrategy':
          return IoK8sApiAppsV1StatefulSetUpdateStrategy.fromJson(value);
        case 'IoK8sApiAuthenticationV1BoundObjectReference':
          return IoK8sApiAuthenticationV1BoundObjectReference.fromJson(value);
        case 'IoK8sApiAuthenticationV1TokenRequest':
          return IoK8sApiAuthenticationV1TokenRequest.fromJson(value);
        case 'IoK8sApiAuthenticationV1TokenRequestSpec':
          return IoK8sApiAuthenticationV1TokenRequestSpec.fromJson(value);
        case 'IoK8sApiAuthenticationV1TokenRequestStatus':
          return IoK8sApiAuthenticationV1TokenRequestStatus.fromJson(value);
        case 'IoK8sApiAuthenticationV1TokenReview':
          return IoK8sApiAuthenticationV1TokenReview.fromJson(value);
        case 'IoK8sApiAuthenticationV1TokenReviewSpec':
          return IoK8sApiAuthenticationV1TokenReviewSpec.fromJson(value);
        case 'IoK8sApiAuthenticationV1TokenReviewStatus':
          return IoK8sApiAuthenticationV1TokenReviewStatus.fromJson(value);
        case 'IoK8sApiAuthenticationV1UserInfo':
          return IoK8sApiAuthenticationV1UserInfo.fromJson(value);
        case 'IoK8sApiAuthenticationV1alpha1SelfSubjectReview':
          return IoK8sApiAuthenticationV1alpha1SelfSubjectReview.fromJson(value);
        case 'IoK8sApiAuthenticationV1alpha1SelfSubjectReviewStatus':
          return IoK8sApiAuthenticationV1alpha1SelfSubjectReviewStatus.fromJson(value);
        case 'IoK8sApiAuthorizationV1LocalSubjectAccessReview':
          return IoK8sApiAuthorizationV1LocalSubjectAccessReview.fromJson(value);
        case 'IoK8sApiAuthorizationV1NonResourceAttributes':
          return IoK8sApiAuthorizationV1NonResourceAttributes.fromJson(value);
        case 'IoK8sApiAuthorizationV1NonResourceRule':
          return IoK8sApiAuthorizationV1NonResourceRule.fromJson(value);
        case 'IoK8sApiAuthorizationV1ResourceAttributes':
          return IoK8sApiAuthorizationV1ResourceAttributes.fromJson(value);
        case 'IoK8sApiAuthorizationV1ResourceRule':
          return IoK8sApiAuthorizationV1ResourceRule.fromJson(value);
        case 'IoK8sApiAuthorizationV1SelfSubjectAccessReview':
          return IoK8sApiAuthorizationV1SelfSubjectAccessReview.fromJson(value);
        case 'IoK8sApiAuthorizationV1SelfSubjectAccessReviewSpec':
          return IoK8sApiAuthorizationV1SelfSubjectAccessReviewSpec.fromJson(value);
        case 'IoK8sApiAuthorizationV1SelfSubjectRulesReview':
          return IoK8sApiAuthorizationV1SelfSubjectRulesReview.fromJson(value);
        case 'IoK8sApiAuthorizationV1SelfSubjectRulesReviewSpec':
          return IoK8sApiAuthorizationV1SelfSubjectRulesReviewSpec.fromJson(value);
        case 'IoK8sApiAuthorizationV1SubjectAccessReview':
          return IoK8sApiAuthorizationV1SubjectAccessReview.fromJson(value);
        case 'IoK8sApiAuthorizationV1SubjectAccessReviewSpec':
          return IoK8sApiAuthorizationV1SubjectAccessReviewSpec.fromJson(value);
        case 'IoK8sApiAuthorizationV1SubjectAccessReviewStatus':
          return IoK8sApiAuthorizationV1SubjectAccessReviewStatus.fromJson(value);
        case 'IoK8sApiAuthorizationV1SubjectRulesReviewStatus':
          return IoK8sApiAuthorizationV1SubjectRulesReviewStatus.fromJson(value);
        case 'IoK8sApiAutoscalingV1CrossVersionObjectReference':
          return IoK8sApiAutoscalingV1CrossVersionObjectReference.fromJson(value);
        case 'IoK8sApiAutoscalingV1HorizontalPodAutoscaler':
          return IoK8sApiAutoscalingV1HorizontalPodAutoscaler.fromJson(value);
        case 'IoK8sApiAutoscalingV1HorizontalPodAutoscalerList':
          return IoK8sApiAutoscalingV1HorizontalPodAutoscalerList.fromJson(value);
        case 'IoK8sApiAutoscalingV1HorizontalPodAutoscalerSpec':
          return IoK8sApiAutoscalingV1HorizontalPodAutoscalerSpec.fromJson(value);
        case 'IoK8sApiAutoscalingV1HorizontalPodAutoscalerStatus':
          return IoK8sApiAutoscalingV1HorizontalPodAutoscalerStatus.fromJson(value);
        case 'IoK8sApiAutoscalingV1Scale':
          return IoK8sApiAutoscalingV1Scale.fromJson(value);
        case 'IoK8sApiAutoscalingV1ScaleSpec':
          return IoK8sApiAutoscalingV1ScaleSpec.fromJson(value);
        case 'IoK8sApiAutoscalingV1ScaleStatus':
          return IoK8sApiAutoscalingV1ScaleStatus.fromJson(value);
        case 'IoK8sApiAutoscalingV2ContainerResourceMetricSource':
          return IoK8sApiAutoscalingV2ContainerResourceMetricSource.fromJson(value);
        case 'IoK8sApiAutoscalingV2ContainerResourceMetricStatus':
          return IoK8sApiAutoscalingV2ContainerResourceMetricStatus.fromJson(value);
        case 'IoK8sApiAutoscalingV2CrossVersionObjectReference':
          return IoK8sApiAutoscalingV2CrossVersionObjectReference.fromJson(value);
        case 'IoK8sApiAutoscalingV2ExternalMetricSource':
          return IoK8sApiAutoscalingV2ExternalMetricSource.fromJson(value);
        case 'IoK8sApiAutoscalingV2ExternalMetricStatus':
          return IoK8sApiAutoscalingV2ExternalMetricStatus.fromJson(value);
        case 'IoK8sApiAutoscalingV2HPAScalingPolicy':
          return IoK8sApiAutoscalingV2HPAScalingPolicy.fromJson(value);
        case 'IoK8sApiAutoscalingV2HPAScalingRules':
          return IoK8sApiAutoscalingV2HPAScalingRules.fromJson(value);
        case 'IoK8sApiAutoscalingV2HorizontalPodAutoscaler':
          return IoK8sApiAutoscalingV2HorizontalPodAutoscaler.fromJson(value);
        case 'IoK8sApiAutoscalingV2HorizontalPodAutoscalerBehavior':
          return IoK8sApiAutoscalingV2HorizontalPodAutoscalerBehavior.fromJson(value);
        case 'IoK8sApiAutoscalingV2HorizontalPodAutoscalerCondition':
          return IoK8sApiAutoscalingV2HorizontalPodAutoscalerCondition.fromJson(value);
        case 'IoK8sApiAutoscalingV2HorizontalPodAutoscalerList':
          return IoK8sApiAutoscalingV2HorizontalPodAutoscalerList.fromJson(value);
        case 'IoK8sApiAutoscalingV2HorizontalPodAutoscalerSpec':
          return IoK8sApiAutoscalingV2HorizontalPodAutoscalerSpec.fromJson(value);
        case 'IoK8sApiAutoscalingV2HorizontalPodAutoscalerStatus':
          return IoK8sApiAutoscalingV2HorizontalPodAutoscalerStatus.fromJson(value);
        case 'IoK8sApiAutoscalingV2MetricIdentifier':
          return IoK8sApiAutoscalingV2MetricIdentifier.fromJson(value);
        case 'IoK8sApiAutoscalingV2MetricSpec':
          return IoK8sApiAutoscalingV2MetricSpec.fromJson(value);
        case 'IoK8sApiAutoscalingV2MetricStatus':
          return IoK8sApiAutoscalingV2MetricStatus.fromJson(value);
        case 'IoK8sApiAutoscalingV2MetricTarget':
          return IoK8sApiAutoscalingV2MetricTarget.fromJson(value);
        case 'IoK8sApiAutoscalingV2MetricValueStatus':
          return IoK8sApiAutoscalingV2MetricValueStatus.fromJson(value);
        case 'IoK8sApiAutoscalingV2ObjectMetricSource':
          return IoK8sApiAutoscalingV2ObjectMetricSource.fromJson(value);
        case 'IoK8sApiAutoscalingV2ObjectMetricStatus':
          return IoK8sApiAutoscalingV2ObjectMetricStatus.fromJson(value);
        case 'IoK8sApiAutoscalingV2PodsMetricSource':
          return IoK8sApiAutoscalingV2PodsMetricSource.fromJson(value);
        case 'IoK8sApiAutoscalingV2PodsMetricStatus':
          return IoK8sApiAutoscalingV2PodsMetricStatus.fromJson(value);
        case 'IoK8sApiAutoscalingV2ResourceMetricSource':
          return IoK8sApiAutoscalingV2ResourceMetricSource.fromJson(value);
        case 'IoK8sApiAutoscalingV2ResourceMetricStatus':
          return IoK8sApiAutoscalingV2ResourceMetricStatus.fromJson(value);
        case 'IoK8sApiBatchV1CronJob':
          return IoK8sApiBatchV1CronJob.fromJson(value);
        case 'IoK8sApiBatchV1CronJobList':
          return IoK8sApiBatchV1CronJobList.fromJson(value);
        case 'IoK8sApiBatchV1CronJobSpec':
          return IoK8sApiBatchV1CronJobSpec.fromJson(value);
        case 'IoK8sApiBatchV1CronJobStatus':
          return IoK8sApiBatchV1CronJobStatus.fromJson(value);
        case 'IoK8sApiBatchV1Job':
          return IoK8sApiBatchV1Job.fromJson(value);
        case 'IoK8sApiBatchV1JobCondition':
          return IoK8sApiBatchV1JobCondition.fromJson(value);
        case 'IoK8sApiBatchV1JobList':
          return IoK8sApiBatchV1JobList.fromJson(value);
        case 'IoK8sApiBatchV1JobSpec':
          return IoK8sApiBatchV1JobSpec.fromJson(value);
        case 'IoK8sApiBatchV1JobStatus':
          return IoK8sApiBatchV1JobStatus.fromJson(value);
        case 'IoK8sApiBatchV1JobTemplateSpec':
          return IoK8sApiBatchV1JobTemplateSpec.fromJson(value);
        case 'IoK8sApiBatchV1PodFailurePolicy':
          return IoK8sApiBatchV1PodFailurePolicy.fromJson(value);
        case 'IoK8sApiBatchV1PodFailurePolicyOnExitCodesRequirement':
          return IoK8sApiBatchV1PodFailurePolicyOnExitCodesRequirement.fromJson(value);
        case 'IoK8sApiBatchV1PodFailurePolicyOnPodConditionsPattern':
          return IoK8sApiBatchV1PodFailurePolicyOnPodConditionsPattern.fromJson(value);
        case 'IoK8sApiBatchV1PodFailurePolicyRule':
          return IoK8sApiBatchV1PodFailurePolicyRule.fromJson(value);
        case 'IoK8sApiBatchV1UncountedTerminatedPods':
          return IoK8sApiBatchV1UncountedTerminatedPods.fromJson(value);
        case 'IoK8sApiCertificatesV1CertificateSigningRequest':
          return IoK8sApiCertificatesV1CertificateSigningRequest.fromJson(value);
        case 'IoK8sApiCertificatesV1CertificateSigningRequestCondition':
          return IoK8sApiCertificatesV1CertificateSigningRequestCondition.fromJson(value);
        case 'IoK8sApiCertificatesV1CertificateSigningRequestList':
          return IoK8sApiCertificatesV1CertificateSigningRequestList.fromJson(value);
        case 'IoK8sApiCertificatesV1CertificateSigningRequestSpec':
          return IoK8sApiCertificatesV1CertificateSigningRequestSpec.fromJson(value);
        case 'IoK8sApiCertificatesV1CertificateSigningRequestStatus':
          return IoK8sApiCertificatesV1CertificateSigningRequestStatus.fromJson(value);
        case 'IoK8sApiCoordinationV1Lease':
          return IoK8sApiCoordinationV1Lease.fromJson(value);
        case 'IoK8sApiCoordinationV1LeaseList':
          return IoK8sApiCoordinationV1LeaseList.fromJson(value);
        case 'IoK8sApiCoordinationV1LeaseSpec':
          return IoK8sApiCoordinationV1LeaseSpec.fromJson(value);
        case 'IoK8sApiCoreV1AWSElasticBlockStoreVolumeSource':
          return IoK8sApiCoreV1AWSElasticBlockStoreVolumeSource.fromJson(value);
        case 'IoK8sApiCoreV1Affinity':
          return IoK8sApiCoreV1Affinity.fromJson(value);
        case 'IoK8sApiCoreV1AttachedVolume':
          return IoK8sApiCoreV1AttachedVolume.fromJson(value);
        case 'IoK8sApiCoreV1AzureDiskVolumeSource':
          return IoK8sApiCoreV1AzureDiskVolumeSource.fromJson(value);
        case 'IoK8sApiCoreV1AzureFilePersistentVolumeSource':
          return IoK8sApiCoreV1AzureFilePersistentVolumeSource.fromJson(value);
        case 'IoK8sApiCoreV1AzureFileVolumeSource':
          return IoK8sApiCoreV1AzureFileVolumeSource.fromJson(value);
        case 'IoK8sApiCoreV1Binding':
          return IoK8sApiCoreV1Binding.fromJson(value);
        case 'IoK8sApiCoreV1CSIPersistentVolumeSource':
          return IoK8sApiCoreV1CSIPersistentVolumeSource.fromJson(value);
        case 'IoK8sApiCoreV1CSIVolumeSource':
          return IoK8sApiCoreV1CSIVolumeSource.fromJson(value);
        case 'IoK8sApiCoreV1Capabilities':
          return IoK8sApiCoreV1Capabilities.fromJson(value);
        case 'IoK8sApiCoreV1CephFSPersistentVolumeSource':
          return IoK8sApiCoreV1CephFSPersistentVolumeSource.fromJson(value);
        case 'IoK8sApiCoreV1CephFSVolumeSource':
          return IoK8sApiCoreV1CephFSVolumeSource.fromJson(value);
        case 'IoK8sApiCoreV1CinderPersistentVolumeSource':
          return IoK8sApiCoreV1CinderPersistentVolumeSource.fromJson(value);
        case 'IoK8sApiCoreV1CinderVolumeSource':
          return IoK8sApiCoreV1CinderVolumeSource.fromJson(value);
        case 'IoK8sApiCoreV1ClaimSource':
          return IoK8sApiCoreV1ClaimSource.fromJson(value);
        case 'IoK8sApiCoreV1ClientIPConfig':
          return IoK8sApiCoreV1ClientIPConfig.fromJson(value);
        case 'IoK8sApiCoreV1ComponentCondition':
          return IoK8sApiCoreV1ComponentCondition.fromJson(value);
        case 'IoK8sApiCoreV1ComponentStatus':
          return IoK8sApiCoreV1ComponentStatus.fromJson(value);
        case 'IoK8sApiCoreV1ComponentStatusList':
          return IoK8sApiCoreV1ComponentStatusList.fromJson(value);
        case 'IoK8sApiCoreV1ConfigMap':
          return IoK8sApiCoreV1ConfigMap.fromJson(value);
        case 'IoK8sApiCoreV1ConfigMapEnvSource':
          return IoK8sApiCoreV1ConfigMapEnvSource.fromJson(value);
        case 'IoK8sApiCoreV1ConfigMapKeySelector':
          return IoK8sApiCoreV1ConfigMapKeySelector.fromJson(value);
        case 'IoK8sApiCoreV1ConfigMapList':
          return IoK8sApiCoreV1ConfigMapList.fromJson(value);
        case 'IoK8sApiCoreV1ConfigMapNodeConfigSource':
          return IoK8sApiCoreV1ConfigMapNodeConfigSource.fromJson(value);
        case 'IoK8sApiCoreV1ConfigMapProjection':
          return IoK8sApiCoreV1ConfigMapProjection.fromJson(value);
        case 'IoK8sApiCoreV1ConfigMapVolumeSource':
          return IoK8sApiCoreV1ConfigMapVolumeSource.fromJson(value);
        case 'IoK8sApiCoreV1Container':
          return IoK8sApiCoreV1Container.fromJson(value);
        case 'IoK8sApiCoreV1ContainerImage':
          return IoK8sApiCoreV1ContainerImage.fromJson(value);
        case 'IoK8sApiCoreV1ContainerPort':
          return IoK8sApiCoreV1ContainerPort.fromJson(value);
        case 'IoK8sApiCoreV1ContainerState':
          return IoK8sApiCoreV1ContainerState.fromJson(value);
        case 'IoK8sApiCoreV1ContainerStateRunning':
          return IoK8sApiCoreV1ContainerStateRunning.fromJson(value);
        case 'IoK8sApiCoreV1ContainerStateTerminated':
          return IoK8sApiCoreV1ContainerStateTerminated.fromJson(value);
        case 'IoK8sApiCoreV1ContainerStateWaiting':
          return IoK8sApiCoreV1ContainerStateWaiting.fromJson(value);
        case 'IoK8sApiCoreV1ContainerStatus':
          return IoK8sApiCoreV1ContainerStatus.fromJson(value);
        case 'IoK8sApiCoreV1DaemonEndpoint':
          return IoK8sApiCoreV1DaemonEndpoint.fromJson(value);
        case 'IoK8sApiCoreV1DownwardAPIProjection':
          return IoK8sApiCoreV1DownwardAPIProjection.fromJson(value);
        case 'IoK8sApiCoreV1DownwardAPIVolumeFile':
          return IoK8sApiCoreV1DownwardAPIVolumeFile.fromJson(value);
        case 'IoK8sApiCoreV1DownwardAPIVolumeSource':
          return IoK8sApiCoreV1DownwardAPIVolumeSource.fromJson(value);
        case 'IoK8sApiCoreV1EmptyDirVolumeSource':
          return IoK8sApiCoreV1EmptyDirVolumeSource.fromJson(value);
        case 'IoK8sApiCoreV1EndpointAddress':
          return IoK8sApiCoreV1EndpointAddress.fromJson(value);
        case 'IoK8sApiCoreV1EndpointPort':
          return IoK8sApiCoreV1EndpointPort.fromJson(value);
        case 'IoK8sApiCoreV1EndpointSubset':
          return IoK8sApiCoreV1EndpointSubset.fromJson(value);
        case 'IoK8sApiCoreV1Endpoints':
          return IoK8sApiCoreV1Endpoints.fromJson(value);
        case 'IoK8sApiCoreV1EndpointsList':
          return IoK8sApiCoreV1EndpointsList.fromJson(value);
        case 'IoK8sApiCoreV1EnvFromSource':
          return IoK8sApiCoreV1EnvFromSource.fromJson(value);
        case 'IoK8sApiCoreV1EnvVar':
          return IoK8sApiCoreV1EnvVar.fromJson(value);
        case 'IoK8sApiCoreV1EnvVarSource':
          return IoK8sApiCoreV1EnvVarSource.fromJson(value);
        case 'IoK8sApiCoreV1EphemeralContainer':
          return IoK8sApiCoreV1EphemeralContainer.fromJson(value);
        case 'IoK8sApiCoreV1EphemeralVolumeSource':
          return IoK8sApiCoreV1EphemeralVolumeSource.fromJson(value);
        case 'IoK8sApiCoreV1Event':
          return IoK8sApiCoreV1Event.fromJson(value);
        case 'IoK8sApiCoreV1EventList':
          return IoK8sApiCoreV1EventList.fromJson(value);
        case 'IoK8sApiCoreV1EventSeries':
          return IoK8sApiCoreV1EventSeries.fromJson(value);
        case 'IoK8sApiCoreV1EventSource':
          return IoK8sApiCoreV1EventSource.fromJson(value);
        case 'IoK8sApiCoreV1ExecAction':
          return IoK8sApiCoreV1ExecAction.fromJson(value);
        case 'IoK8sApiCoreV1FCVolumeSource':
          return IoK8sApiCoreV1FCVolumeSource.fromJson(value);
        case 'IoK8sApiCoreV1FlexPersistentVolumeSource':
          return IoK8sApiCoreV1FlexPersistentVolumeSource.fromJson(value);
        case 'IoK8sApiCoreV1FlexVolumeSource':
          return IoK8sApiCoreV1FlexVolumeSource.fromJson(value);
        case 'IoK8sApiCoreV1FlockerVolumeSource':
          return IoK8sApiCoreV1FlockerVolumeSource.fromJson(value);
        case 'IoK8sApiCoreV1GCEPersistentDiskVolumeSource':
          return IoK8sApiCoreV1GCEPersistentDiskVolumeSource.fromJson(value);
        case 'IoK8sApiCoreV1GRPCAction':
          return IoK8sApiCoreV1GRPCAction.fromJson(value);
        case 'IoK8sApiCoreV1GitRepoVolumeSource':
          return IoK8sApiCoreV1GitRepoVolumeSource.fromJson(value);
        case 'IoK8sApiCoreV1GlusterfsPersistentVolumeSource':
          return IoK8sApiCoreV1GlusterfsPersistentVolumeSource.fromJson(value);
        case 'IoK8sApiCoreV1GlusterfsVolumeSource':
          return IoK8sApiCoreV1GlusterfsVolumeSource.fromJson(value);
        case 'IoK8sApiCoreV1HTTPGetAction':
          return IoK8sApiCoreV1HTTPGetAction.fromJson(value);
        case 'IoK8sApiCoreV1HTTPHeader':
          return IoK8sApiCoreV1HTTPHeader.fromJson(value);
        case 'IoK8sApiCoreV1HostAlias':
          return IoK8sApiCoreV1HostAlias.fromJson(value);
        case 'IoK8sApiCoreV1HostPathVolumeSource':
          return IoK8sApiCoreV1HostPathVolumeSource.fromJson(value);
        case 'IoK8sApiCoreV1ISCSIPersistentVolumeSource':
          return IoK8sApiCoreV1ISCSIPersistentVolumeSource.fromJson(value);
        case 'IoK8sApiCoreV1ISCSIVolumeSource':
          return IoK8sApiCoreV1ISCSIVolumeSource.fromJson(value);
        case 'IoK8sApiCoreV1KeyToPath':
          return IoK8sApiCoreV1KeyToPath.fromJson(value);
        case 'IoK8sApiCoreV1Lifecycle':
          return IoK8sApiCoreV1Lifecycle.fromJson(value);
        case 'IoK8sApiCoreV1LifecycleHandler':
          return IoK8sApiCoreV1LifecycleHandler.fromJson(value);
        case 'IoK8sApiCoreV1LimitRange':
          return IoK8sApiCoreV1LimitRange.fromJson(value);
        case 'IoK8sApiCoreV1LimitRangeItem':
          return IoK8sApiCoreV1LimitRangeItem.fromJson(value);
        case 'IoK8sApiCoreV1LimitRangeList':
          return IoK8sApiCoreV1LimitRangeList.fromJson(value);
        case 'IoK8sApiCoreV1LimitRangeSpec':
          return IoK8sApiCoreV1LimitRangeSpec.fromJson(value);
        case 'IoK8sApiCoreV1LoadBalancerIngress':
          return IoK8sApiCoreV1LoadBalancerIngress.fromJson(value);
        case 'IoK8sApiCoreV1LoadBalancerStatus':
          return IoK8sApiCoreV1LoadBalancerStatus.fromJson(value);
        case 'IoK8sApiCoreV1LocalObjectReference':
          return IoK8sApiCoreV1LocalObjectReference.fromJson(value);
        case 'IoK8sApiCoreV1LocalVolumeSource':
          return IoK8sApiCoreV1LocalVolumeSource.fromJson(value);
        case 'IoK8sApiCoreV1NFSVolumeSource':
          return IoK8sApiCoreV1NFSVolumeSource.fromJson(value);
        case 'IoK8sApiCoreV1Namespace':
          return IoK8sApiCoreV1Namespace.fromJson(value);
        case 'IoK8sApiCoreV1NamespaceCondition':
          return IoK8sApiCoreV1NamespaceCondition.fromJson(value);
        case 'IoK8sApiCoreV1NamespaceList':
          return IoK8sApiCoreV1NamespaceList.fromJson(value);
        case 'IoK8sApiCoreV1NamespaceSpec':
          return IoK8sApiCoreV1NamespaceSpec.fromJson(value);
        case 'IoK8sApiCoreV1NamespaceStatus':
          return IoK8sApiCoreV1NamespaceStatus.fromJson(value);
        case 'IoK8sApiCoreV1Node':
          return IoK8sApiCoreV1Node.fromJson(value);
        case 'IoK8sApiCoreV1NodeAddress':
          return IoK8sApiCoreV1NodeAddress.fromJson(value);
        case 'IoK8sApiCoreV1NodeAffinity':
          return IoK8sApiCoreV1NodeAffinity.fromJson(value);
        case 'IoK8sApiCoreV1NodeCondition':
          return IoK8sApiCoreV1NodeCondition.fromJson(value);
        case 'IoK8sApiCoreV1NodeConfigSource':
          return IoK8sApiCoreV1NodeConfigSource.fromJson(value);
        case 'IoK8sApiCoreV1NodeConfigStatus':
          return IoK8sApiCoreV1NodeConfigStatus.fromJson(value);
        case 'IoK8sApiCoreV1NodeDaemonEndpoints':
          return IoK8sApiCoreV1NodeDaemonEndpoints.fromJson(value);
        case 'IoK8sApiCoreV1NodeList':
          return IoK8sApiCoreV1NodeList.fromJson(value);
        case 'IoK8sApiCoreV1NodeSelector':
          return IoK8sApiCoreV1NodeSelector.fromJson(value);
        case 'IoK8sApiCoreV1NodeSelectorRequirement':
          return IoK8sApiCoreV1NodeSelectorRequirement.fromJson(value);
        case 'IoK8sApiCoreV1NodeSelectorTerm':
          return IoK8sApiCoreV1NodeSelectorTerm.fromJson(value);
        case 'IoK8sApiCoreV1NodeSpec':
          return IoK8sApiCoreV1NodeSpec.fromJson(value);
        case 'IoK8sApiCoreV1NodeStatus':
          return IoK8sApiCoreV1NodeStatus.fromJson(value);
        case 'IoK8sApiCoreV1NodeSystemInfo':
          return IoK8sApiCoreV1NodeSystemInfo.fromJson(value);
        case 'IoK8sApiCoreV1ObjectFieldSelector':
          return IoK8sApiCoreV1ObjectFieldSelector.fromJson(value);
        case 'IoK8sApiCoreV1ObjectReference':
          return IoK8sApiCoreV1ObjectReference.fromJson(value);
        case 'IoK8sApiCoreV1PersistentVolume':
          return IoK8sApiCoreV1PersistentVolume.fromJson(value);
        case 'IoK8sApiCoreV1PersistentVolumeClaim':
          return IoK8sApiCoreV1PersistentVolumeClaim.fromJson(value);
        case 'IoK8sApiCoreV1PersistentVolumeClaimCondition':
          return IoK8sApiCoreV1PersistentVolumeClaimCondition.fromJson(value);
        case 'IoK8sApiCoreV1PersistentVolumeClaimList':
          return IoK8sApiCoreV1PersistentVolumeClaimList.fromJson(value);
        case 'IoK8sApiCoreV1PersistentVolumeClaimSpec':
          return IoK8sApiCoreV1PersistentVolumeClaimSpec.fromJson(value);
        case 'IoK8sApiCoreV1PersistentVolumeClaimStatus':
          return IoK8sApiCoreV1PersistentVolumeClaimStatus.fromJson(value);
        case 'IoK8sApiCoreV1PersistentVolumeClaimTemplate':
          return IoK8sApiCoreV1PersistentVolumeClaimTemplate.fromJson(value);
        case 'IoK8sApiCoreV1PersistentVolumeClaimVolumeSource':
          return IoK8sApiCoreV1PersistentVolumeClaimVolumeSource.fromJson(value);
        case 'IoK8sApiCoreV1PersistentVolumeList':
          return IoK8sApiCoreV1PersistentVolumeList.fromJson(value);
        case 'IoK8sApiCoreV1PersistentVolumeSpec':
          return IoK8sApiCoreV1PersistentVolumeSpec.fromJson(value);
        case 'IoK8sApiCoreV1PersistentVolumeStatus':
          return IoK8sApiCoreV1PersistentVolumeStatus.fromJson(value);
        case 'IoK8sApiCoreV1PhotonPersistentDiskVolumeSource':
          return IoK8sApiCoreV1PhotonPersistentDiskVolumeSource.fromJson(value);
        case 'IoK8sApiCoreV1Pod':
          return IoK8sApiCoreV1Pod.fromJson(value);
        case 'IoK8sApiCoreV1PodAffinity':
          return IoK8sApiCoreV1PodAffinity.fromJson(value);
        case 'IoK8sApiCoreV1PodAffinityTerm':
          return IoK8sApiCoreV1PodAffinityTerm.fromJson(value);
        case 'IoK8sApiCoreV1PodAntiAffinity':
          return IoK8sApiCoreV1PodAntiAffinity.fromJson(value);
        case 'IoK8sApiCoreV1PodCondition':
          return IoK8sApiCoreV1PodCondition.fromJson(value);
        case 'IoK8sApiCoreV1PodDNSConfig':
          return IoK8sApiCoreV1PodDNSConfig.fromJson(value);
        case 'IoK8sApiCoreV1PodDNSConfigOption':
          return IoK8sApiCoreV1PodDNSConfigOption.fromJson(value);
        case 'IoK8sApiCoreV1PodIP':
          return IoK8sApiCoreV1PodIP.fromJson(value);
        case 'IoK8sApiCoreV1PodList':
          return IoK8sApiCoreV1PodList.fromJson(value);
        case 'IoK8sApiCoreV1PodOS':
          return IoK8sApiCoreV1PodOS.fromJson(value);
        case 'IoK8sApiCoreV1PodReadinessGate':
          return IoK8sApiCoreV1PodReadinessGate.fromJson(value);
        case 'IoK8sApiCoreV1PodResourceClaim':
          return IoK8sApiCoreV1PodResourceClaim.fromJson(value);
        case 'IoK8sApiCoreV1PodSchedulingGate':
          return IoK8sApiCoreV1PodSchedulingGate.fromJson(value);
        case 'IoK8sApiCoreV1PodSecurityContext':
          return IoK8sApiCoreV1PodSecurityContext.fromJson(value);
        case 'IoK8sApiCoreV1PodSpec':
          return IoK8sApiCoreV1PodSpec.fromJson(value);
        case 'IoK8sApiCoreV1PodStatus':
          return IoK8sApiCoreV1PodStatus.fromJson(value);
        case 'IoK8sApiCoreV1PodTemplate':
          return IoK8sApiCoreV1PodTemplate.fromJson(value);
        case 'IoK8sApiCoreV1PodTemplateList':
          return IoK8sApiCoreV1PodTemplateList.fromJson(value);
        case 'IoK8sApiCoreV1PodTemplateSpec':
          return IoK8sApiCoreV1PodTemplateSpec.fromJson(value);
        case 'IoK8sApiCoreV1PortStatus':
          return IoK8sApiCoreV1PortStatus.fromJson(value);
        case 'IoK8sApiCoreV1PortworxVolumeSource':
          return IoK8sApiCoreV1PortworxVolumeSource.fromJson(value);
        case 'IoK8sApiCoreV1PreferredSchedulingTerm':
          return IoK8sApiCoreV1PreferredSchedulingTerm.fromJson(value);
        case 'IoK8sApiCoreV1Probe':
          return IoK8sApiCoreV1Probe.fromJson(value);
        case 'IoK8sApiCoreV1ProjectedVolumeSource':
          return IoK8sApiCoreV1ProjectedVolumeSource.fromJson(value);
        case 'IoK8sApiCoreV1QuobyteVolumeSource':
          return IoK8sApiCoreV1QuobyteVolumeSource.fromJson(value);
        case 'IoK8sApiCoreV1RBDPersistentVolumeSource':
          return IoK8sApiCoreV1RBDPersistentVolumeSource.fromJson(value);
        case 'IoK8sApiCoreV1RBDVolumeSource':
          return IoK8sApiCoreV1RBDVolumeSource.fromJson(value);
        case 'IoK8sApiCoreV1ReplicationController':
          return IoK8sApiCoreV1ReplicationController.fromJson(value);
        case 'IoK8sApiCoreV1ReplicationControllerCondition':
          return IoK8sApiCoreV1ReplicationControllerCondition.fromJson(value);
        case 'IoK8sApiCoreV1ReplicationControllerList':
          return IoK8sApiCoreV1ReplicationControllerList.fromJson(value);
        case 'IoK8sApiCoreV1ReplicationControllerSpec':
          return IoK8sApiCoreV1ReplicationControllerSpec.fromJson(value);
        case 'IoK8sApiCoreV1ReplicationControllerStatus':
          return IoK8sApiCoreV1ReplicationControllerStatus.fromJson(value);
        case 'IoK8sApiCoreV1ResourceClaim':
          return IoK8sApiCoreV1ResourceClaim.fromJson(value);
        case 'IoK8sApiCoreV1ResourceFieldSelector':
          return IoK8sApiCoreV1ResourceFieldSelector.fromJson(value);
        case 'IoK8sApiCoreV1ResourceQuota':
          return IoK8sApiCoreV1ResourceQuota.fromJson(value);
        case 'IoK8sApiCoreV1ResourceQuotaList':
          return IoK8sApiCoreV1ResourceQuotaList.fromJson(value);
        case 'IoK8sApiCoreV1ResourceQuotaSpec':
          return IoK8sApiCoreV1ResourceQuotaSpec.fromJson(value);
        case 'IoK8sApiCoreV1ResourceQuotaStatus':
          return IoK8sApiCoreV1ResourceQuotaStatus.fromJson(value);
        case 'IoK8sApiCoreV1ResourceRequirements':
          return IoK8sApiCoreV1ResourceRequirements.fromJson(value);
        case 'IoK8sApiCoreV1SELinuxOptions':
          return IoK8sApiCoreV1SELinuxOptions.fromJson(value);
        case 'IoK8sApiCoreV1ScaleIOPersistentVolumeSource':
          return IoK8sApiCoreV1ScaleIOPersistentVolumeSource.fromJson(value);
        case 'IoK8sApiCoreV1ScaleIOVolumeSource':
          return IoK8sApiCoreV1ScaleIOVolumeSource.fromJson(value);
        case 'IoK8sApiCoreV1ScopeSelector':
          return IoK8sApiCoreV1ScopeSelector.fromJson(value);
        case 'IoK8sApiCoreV1ScopedResourceSelectorRequirement':
          return IoK8sApiCoreV1ScopedResourceSelectorRequirement.fromJson(value);
        case 'IoK8sApiCoreV1SeccompProfile':
          return IoK8sApiCoreV1SeccompProfile.fromJson(value);
        case 'IoK8sApiCoreV1Secret':
          return IoK8sApiCoreV1Secret.fromJson(value);
        case 'IoK8sApiCoreV1SecretEnvSource':
          return IoK8sApiCoreV1SecretEnvSource.fromJson(value);
        case 'IoK8sApiCoreV1SecretKeySelector':
          return IoK8sApiCoreV1SecretKeySelector.fromJson(value);
        case 'IoK8sApiCoreV1SecretList':
          return IoK8sApiCoreV1SecretList.fromJson(value);
        case 'IoK8sApiCoreV1SecretProjection':
          return IoK8sApiCoreV1SecretProjection.fromJson(value);
        case 'IoK8sApiCoreV1SecretReference':
          return IoK8sApiCoreV1SecretReference.fromJson(value);
        case 'IoK8sApiCoreV1SecretVolumeSource':
          return IoK8sApiCoreV1SecretVolumeSource.fromJson(value);
        case 'IoK8sApiCoreV1SecurityContext':
          return IoK8sApiCoreV1SecurityContext.fromJson(value);
        case 'IoK8sApiCoreV1Service':
          return IoK8sApiCoreV1Service.fromJson(value);
        case 'IoK8sApiCoreV1ServiceAccount':
          return IoK8sApiCoreV1ServiceAccount.fromJson(value);
        case 'IoK8sApiCoreV1ServiceAccountList':
          return IoK8sApiCoreV1ServiceAccountList.fromJson(value);
        case 'IoK8sApiCoreV1ServiceAccountTokenProjection':
          return IoK8sApiCoreV1ServiceAccountTokenProjection.fromJson(value);
        case 'IoK8sApiCoreV1ServiceList':
          return IoK8sApiCoreV1ServiceList.fromJson(value);
        case 'IoK8sApiCoreV1ServicePort':
          return IoK8sApiCoreV1ServicePort.fromJson(value);
        case 'IoK8sApiCoreV1ServiceSpec':
          return IoK8sApiCoreV1ServiceSpec.fromJson(value);
        case 'IoK8sApiCoreV1ServiceStatus':
          return IoK8sApiCoreV1ServiceStatus.fromJson(value);
        case 'IoK8sApiCoreV1SessionAffinityConfig':
          return IoK8sApiCoreV1SessionAffinityConfig.fromJson(value);
        case 'IoK8sApiCoreV1StorageOSPersistentVolumeSource':
          return IoK8sApiCoreV1StorageOSPersistentVolumeSource.fromJson(value);
        case 'IoK8sApiCoreV1StorageOSVolumeSource':
          return IoK8sApiCoreV1StorageOSVolumeSource.fromJson(value);
        case 'IoK8sApiCoreV1Sysctl':
          return IoK8sApiCoreV1Sysctl.fromJson(value);
        case 'IoK8sApiCoreV1TCPSocketAction':
          return IoK8sApiCoreV1TCPSocketAction.fromJson(value);
        case 'IoK8sApiCoreV1Taint':
          return IoK8sApiCoreV1Taint.fromJson(value);
        case 'IoK8sApiCoreV1Toleration':
          return IoK8sApiCoreV1Toleration.fromJson(value);
        case 'IoK8sApiCoreV1TopologySelectorLabelRequirement':
          return IoK8sApiCoreV1TopologySelectorLabelRequirement.fromJson(value);
        case 'IoK8sApiCoreV1TopologySelectorTerm':
          return IoK8sApiCoreV1TopologySelectorTerm.fromJson(value);
        case 'IoK8sApiCoreV1TopologySpreadConstraint':
          return IoK8sApiCoreV1TopologySpreadConstraint.fromJson(value);
        case 'IoK8sApiCoreV1TypedLocalObjectReference':
          return IoK8sApiCoreV1TypedLocalObjectReference.fromJson(value);
        case 'IoK8sApiCoreV1TypedObjectReference':
          return IoK8sApiCoreV1TypedObjectReference.fromJson(value);
        case 'IoK8sApiCoreV1Volume':
          return IoK8sApiCoreV1Volume.fromJson(value);
        case 'IoK8sApiCoreV1VolumeDevice':
          return IoK8sApiCoreV1VolumeDevice.fromJson(value);
        case 'IoK8sApiCoreV1VolumeMount':
          return IoK8sApiCoreV1VolumeMount.fromJson(value);
        case 'IoK8sApiCoreV1VolumeNodeAffinity':
          return IoK8sApiCoreV1VolumeNodeAffinity.fromJson(value);
        case 'IoK8sApiCoreV1VolumeProjection':
          return IoK8sApiCoreV1VolumeProjection.fromJson(value);
        case 'IoK8sApiCoreV1VsphereVirtualDiskVolumeSource':
          return IoK8sApiCoreV1VsphereVirtualDiskVolumeSource.fromJson(value);
        case 'IoK8sApiCoreV1WeightedPodAffinityTerm':
          return IoK8sApiCoreV1WeightedPodAffinityTerm.fromJson(value);
        case 'IoK8sApiCoreV1WindowsSecurityContextOptions':
          return IoK8sApiCoreV1WindowsSecurityContextOptions.fromJson(value);
        case 'IoK8sApiDiscoveryV1Endpoint':
          return IoK8sApiDiscoveryV1Endpoint.fromJson(value);
        case 'IoK8sApiDiscoveryV1EndpointConditions':
          return IoK8sApiDiscoveryV1EndpointConditions.fromJson(value);
        case 'IoK8sApiDiscoveryV1EndpointHints':
          return IoK8sApiDiscoveryV1EndpointHints.fromJson(value);
        case 'IoK8sApiDiscoveryV1EndpointPort':
          return IoK8sApiDiscoveryV1EndpointPort.fromJson(value);
        case 'IoK8sApiDiscoveryV1EndpointSlice':
          return IoK8sApiDiscoveryV1EndpointSlice.fromJson(value);
        case 'IoK8sApiDiscoveryV1EndpointSliceList':
          return IoK8sApiDiscoveryV1EndpointSliceList.fromJson(value);
        case 'IoK8sApiDiscoveryV1ForZone':
          return IoK8sApiDiscoveryV1ForZone.fromJson(value);
        case 'IoK8sApiEventsV1Event':
          return IoK8sApiEventsV1Event.fromJson(value);
        case 'IoK8sApiEventsV1EventList':
          return IoK8sApiEventsV1EventList.fromJson(value);
        case 'IoK8sApiEventsV1EventSeries':
          return IoK8sApiEventsV1EventSeries.fromJson(value);
        case 'IoK8sApiFlowcontrolV1beta2FlowDistinguisherMethod':
          return IoK8sApiFlowcontrolV1beta2FlowDistinguisherMethod.fromJson(value);
        case 'IoK8sApiFlowcontrolV1beta2FlowSchema':
          return IoK8sApiFlowcontrolV1beta2FlowSchema.fromJson(value);
        case 'IoK8sApiFlowcontrolV1beta2FlowSchemaCondition':
          return IoK8sApiFlowcontrolV1beta2FlowSchemaCondition.fromJson(value);
        case 'IoK8sApiFlowcontrolV1beta2FlowSchemaList':
          return IoK8sApiFlowcontrolV1beta2FlowSchemaList.fromJson(value);
        case 'IoK8sApiFlowcontrolV1beta2FlowSchemaSpec':
          return IoK8sApiFlowcontrolV1beta2FlowSchemaSpec.fromJson(value);
        case 'IoK8sApiFlowcontrolV1beta2FlowSchemaStatus':
          return IoK8sApiFlowcontrolV1beta2FlowSchemaStatus.fromJson(value);
        case 'IoK8sApiFlowcontrolV1beta2GroupSubject':
          return IoK8sApiFlowcontrolV1beta2GroupSubject.fromJson(value);
        case 'IoK8sApiFlowcontrolV1beta2LimitResponse':
          return IoK8sApiFlowcontrolV1beta2LimitResponse.fromJson(value);
        case 'IoK8sApiFlowcontrolV1beta2LimitedPriorityLevelConfiguration':
          return IoK8sApiFlowcontrolV1beta2LimitedPriorityLevelConfiguration.fromJson(value);
        case 'IoK8sApiFlowcontrolV1beta2NonResourcePolicyRule':
          return IoK8sApiFlowcontrolV1beta2NonResourcePolicyRule.fromJson(value);
        case 'IoK8sApiFlowcontrolV1beta2PolicyRulesWithSubjects':
          return IoK8sApiFlowcontrolV1beta2PolicyRulesWithSubjects.fromJson(value);
        case 'IoK8sApiFlowcontrolV1beta2PriorityLevelConfiguration':
          return IoK8sApiFlowcontrolV1beta2PriorityLevelConfiguration.fromJson(value);
        case 'IoK8sApiFlowcontrolV1beta2PriorityLevelConfigurationCondition':
          return IoK8sApiFlowcontrolV1beta2PriorityLevelConfigurationCondition.fromJson(value);
        case 'IoK8sApiFlowcontrolV1beta2PriorityLevelConfigurationList':
          return IoK8sApiFlowcontrolV1beta2PriorityLevelConfigurationList.fromJson(value);
        case 'IoK8sApiFlowcontrolV1beta2PriorityLevelConfigurationReference':
          return IoK8sApiFlowcontrolV1beta2PriorityLevelConfigurationReference.fromJson(value);
        case 'IoK8sApiFlowcontrolV1beta2PriorityLevelConfigurationSpec':
          return IoK8sApiFlowcontrolV1beta2PriorityLevelConfigurationSpec.fromJson(value);
        case 'IoK8sApiFlowcontrolV1beta2PriorityLevelConfigurationStatus':
          return IoK8sApiFlowcontrolV1beta2PriorityLevelConfigurationStatus.fromJson(value);
        case 'IoK8sApiFlowcontrolV1beta2QueuingConfiguration':
          return IoK8sApiFlowcontrolV1beta2QueuingConfiguration.fromJson(value);
        case 'IoK8sApiFlowcontrolV1beta2ResourcePolicyRule':
          return IoK8sApiFlowcontrolV1beta2ResourcePolicyRule.fromJson(value);
        case 'IoK8sApiFlowcontrolV1beta2ServiceAccountSubject':
          return IoK8sApiFlowcontrolV1beta2ServiceAccountSubject.fromJson(value);
        case 'IoK8sApiFlowcontrolV1beta2Subject':
          return IoK8sApiFlowcontrolV1beta2Subject.fromJson(value);
        case 'IoK8sApiFlowcontrolV1beta2UserSubject':
          return IoK8sApiFlowcontrolV1beta2UserSubject.fromJson(value);
        case 'IoK8sApiFlowcontrolV1beta3FlowDistinguisherMethod':
          return IoK8sApiFlowcontrolV1beta3FlowDistinguisherMethod.fromJson(value);
        case 'IoK8sApiFlowcontrolV1beta3FlowSchema':
          return IoK8sApiFlowcontrolV1beta3FlowSchema.fromJson(value);
        case 'IoK8sApiFlowcontrolV1beta3FlowSchemaCondition':
          return IoK8sApiFlowcontrolV1beta3FlowSchemaCondition.fromJson(value);
        case 'IoK8sApiFlowcontrolV1beta3FlowSchemaList':
          return IoK8sApiFlowcontrolV1beta3FlowSchemaList.fromJson(value);
        case 'IoK8sApiFlowcontrolV1beta3FlowSchemaSpec':
          return IoK8sApiFlowcontrolV1beta3FlowSchemaSpec.fromJson(value);
        case 'IoK8sApiFlowcontrolV1beta3FlowSchemaStatus':
          return IoK8sApiFlowcontrolV1beta3FlowSchemaStatus.fromJson(value);
        case 'IoK8sApiFlowcontrolV1beta3GroupSubject':
          return IoK8sApiFlowcontrolV1beta3GroupSubject.fromJson(value);
        case 'IoK8sApiFlowcontrolV1beta3LimitResponse':
          return IoK8sApiFlowcontrolV1beta3LimitResponse.fromJson(value);
        case 'IoK8sApiFlowcontrolV1beta3LimitedPriorityLevelConfiguration':
          return IoK8sApiFlowcontrolV1beta3LimitedPriorityLevelConfiguration.fromJson(value);
        case 'IoK8sApiFlowcontrolV1beta3NonResourcePolicyRule':
          return IoK8sApiFlowcontrolV1beta3NonResourcePolicyRule.fromJson(value);
        case 'IoK8sApiFlowcontrolV1beta3PolicyRulesWithSubjects':
          return IoK8sApiFlowcontrolV1beta3PolicyRulesWithSubjects.fromJson(value);
        case 'IoK8sApiFlowcontrolV1beta3PriorityLevelConfiguration':
          return IoK8sApiFlowcontrolV1beta3PriorityLevelConfiguration.fromJson(value);
        case 'IoK8sApiFlowcontrolV1beta3PriorityLevelConfigurationCondition':
          return IoK8sApiFlowcontrolV1beta3PriorityLevelConfigurationCondition.fromJson(value);
        case 'IoK8sApiFlowcontrolV1beta3PriorityLevelConfigurationList':
          return IoK8sApiFlowcontrolV1beta3PriorityLevelConfigurationList.fromJson(value);
        case 'IoK8sApiFlowcontrolV1beta3PriorityLevelConfigurationReference':
          return IoK8sApiFlowcontrolV1beta3PriorityLevelConfigurationReference.fromJson(value);
        case 'IoK8sApiFlowcontrolV1beta3PriorityLevelConfigurationSpec':
          return IoK8sApiFlowcontrolV1beta3PriorityLevelConfigurationSpec.fromJson(value);
        case 'IoK8sApiFlowcontrolV1beta3PriorityLevelConfigurationStatus':
          return IoK8sApiFlowcontrolV1beta3PriorityLevelConfigurationStatus.fromJson(value);
        case 'IoK8sApiFlowcontrolV1beta3QueuingConfiguration':
          return IoK8sApiFlowcontrolV1beta3QueuingConfiguration.fromJson(value);
        case 'IoK8sApiFlowcontrolV1beta3ResourcePolicyRule':
          return IoK8sApiFlowcontrolV1beta3ResourcePolicyRule.fromJson(value);
        case 'IoK8sApiFlowcontrolV1beta3ServiceAccountSubject':
          return IoK8sApiFlowcontrolV1beta3ServiceAccountSubject.fromJson(value);
        case 'IoK8sApiFlowcontrolV1beta3Subject':
          return IoK8sApiFlowcontrolV1beta3Subject.fromJson(value);
        case 'IoK8sApiFlowcontrolV1beta3UserSubject':
          return IoK8sApiFlowcontrolV1beta3UserSubject.fromJson(value);
        case 'IoK8sApiNetworkingV1HTTPIngressPath':
          return IoK8sApiNetworkingV1HTTPIngressPath.fromJson(value);
        case 'IoK8sApiNetworkingV1HTTPIngressRuleValue':
          return IoK8sApiNetworkingV1HTTPIngressRuleValue.fromJson(value);
        case 'IoK8sApiNetworkingV1IPBlock':
          return IoK8sApiNetworkingV1IPBlock.fromJson(value);
        case 'IoK8sApiNetworkingV1Ingress':
          return IoK8sApiNetworkingV1Ingress.fromJson(value);
        case 'IoK8sApiNetworkingV1IngressBackend':
          return IoK8sApiNetworkingV1IngressBackend.fromJson(value);
        case 'IoK8sApiNetworkingV1IngressClass':
          return IoK8sApiNetworkingV1IngressClass.fromJson(value);
        case 'IoK8sApiNetworkingV1IngressClassList':
          return IoK8sApiNetworkingV1IngressClassList.fromJson(value);
        case 'IoK8sApiNetworkingV1IngressClassParametersReference':
          return IoK8sApiNetworkingV1IngressClassParametersReference.fromJson(value);
        case 'IoK8sApiNetworkingV1IngressClassSpec':
          return IoK8sApiNetworkingV1IngressClassSpec.fromJson(value);
        case 'IoK8sApiNetworkingV1IngressList':
          return IoK8sApiNetworkingV1IngressList.fromJson(value);
        case 'IoK8sApiNetworkingV1IngressLoadBalancerIngress':
          return IoK8sApiNetworkingV1IngressLoadBalancerIngress.fromJson(value);
        case 'IoK8sApiNetworkingV1IngressLoadBalancerStatus':
          return IoK8sApiNetworkingV1IngressLoadBalancerStatus.fromJson(value);
        case 'IoK8sApiNetworkingV1IngressPortStatus':
          return IoK8sApiNetworkingV1IngressPortStatus.fromJson(value);
        case 'IoK8sApiNetworkingV1IngressRule':
          return IoK8sApiNetworkingV1IngressRule.fromJson(value);
        case 'IoK8sApiNetworkingV1IngressServiceBackend':
          return IoK8sApiNetworkingV1IngressServiceBackend.fromJson(value);
        case 'IoK8sApiNetworkingV1IngressSpec':
          return IoK8sApiNetworkingV1IngressSpec.fromJson(value);
        case 'IoK8sApiNetworkingV1IngressStatus':
          return IoK8sApiNetworkingV1IngressStatus.fromJson(value);
        case 'IoK8sApiNetworkingV1IngressTLS':
          return IoK8sApiNetworkingV1IngressTLS.fromJson(value);
        case 'IoK8sApiNetworkingV1NetworkPolicy':
          return IoK8sApiNetworkingV1NetworkPolicy.fromJson(value);
        case 'IoK8sApiNetworkingV1NetworkPolicyEgressRule':
          return IoK8sApiNetworkingV1NetworkPolicyEgressRule.fromJson(value);
        case 'IoK8sApiNetworkingV1NetworkPolicyIngressRule':
          return IoK8sApiNetworkingV1NetworkPolicyIngressRule.fromJson(value);
        case 'IoK8sApiNetworkingV1NetworkPolicyList':
          return IoK8sApiNetworkingV1NetworkPolicyList.fromJson(value);
        case 'IoK8sApiNetworkingV1NetworkPolicyPeer':
          return IoK8sApiNetworkingV1NetworkPolicyPeer.fromJson(value);
        case 'IoK8sApiNetworkingV1NetworkPolicyPort':
          return IoK8sApiNetworkingV1NetworkPolicyPort.fromJson(value);
        case 'IoK8sApiNetworkingV1NetworkPolicySpec':
          return IoK8sApiNetworkingV1NetworkPolicySpec.fromJson(value);
        case 'IoK8sApiNetworkingV1NetworkPolicyStatus':
          return IoK8sApiNetworkingV1NetworkPolicyStatus.fromJson(value);
        case 'IoK8sApiNetworkingV1ServiceBackendPort':
          return IoK8sApiNetworkingV1ServiceBackendPort.fromJson(value);
        case 'IoK8sApiNetworkingV1alpha1ClusterCIDR':
          return IoK8sApiNetworkingV1alpha1ClusterCIDR.fromJson(value);
        case 'IoK8sApiNetworkingV1alpha1ClusterCIDRList':
          return IoK8sApiNetworkingV1alpha1ClusterCIDRList.fromJson(value);
        case 'IoK8sApiNetworkingV1alpha1ClusterCIDRSpec':
          return IoK8sApiNetworkingV1alpha1ClusterCIDRSpec.fromJson(value);
        case 'IoK8sApiNodeV1Overhead':
          return IoK8sApiNodeV1Overhead.fromJson(value);
        case 'IoK8sApiNodeV1RuntimeClass':
          return IoK8sApiNodeV1RuntimeClass.fromJson(value);
        case 'IoK8sApiNodeV1RuntimeClassList':
          return IoK8sApiNodeV1RuntimeClassList.fromJson(value);
        case 'IoK8sApiNodeV1Scheduling':
          return IoK8sApiNodeV1Scheduling.fromJson(value);
        case 'IoK8sApiPolicyV1Eviction':
          return IoK8sApiPolicyV1Eviction.fromJson(value);
        case 'IoK8sApiPolicyV1PodDisruptionBudget':
          return IoK8sApiPolicyV1PodDisruptionBudget.fromJson(value);
        case 'IoK8sApiPolicyV1PodDisruptionBudgetList':
          return IoK8sApiPolicyV1PodDisruptionBudgetList.fromJson(value);
        case 'IoK8sApiPolicyV1PodDisruptionBudgetSpec':
          return IoK8sApiPolicyV1PodDisruptionBudgetSpec.fromJson(value);
        case 'IoK8sApiPolicyV1PodDisruptionBudgetStatus':
          return IoK8sApiPolicyV1PodDisruptionBudgetStatus.fromJson(value);
        case 'IoK8sApiRbacV1AggregationRule':
          return IoK8sApiRbacV1AggregationRule.fromJson(value);
        case 'IoK8sApiRbacV1ClusterRole':
          return IoK8sApiRbacV1ClusterRole.fromJson(value);
        case 'IoK8sApiRbacV1ClusterRoleBinding':
          return IoK8sApiRbacV1ClusterRoleBinding.fromJson(value);
        case 'IoK8sApiRbacV1ClusterRoleBindingList':
          return IoK8sApiRbacV1ClusterRoleBindingList.fromJson(value);
        case 'IoK8sApiRbacV1ClusterRoleList':
          return IoK8sApiRbacV1ClusterRoleList.fromJson(value);
        case 'IoK8sApiRbacV1PolicyRule':
          return IoK8sApiRbacV1PolicyRule.fromJson(value);
        case 'IoK8sApiRbacV1Role':
          return IoK8sApiRbacV1Role.fromJson(value);
        case 'IoK8sApiRbacV1RoleBinding':
          return IoK8sApiRbacV1RoleBinding.fromJson(value);
        case 'IoK8sApiRbacV1RoleBindingList':
          return IoK8sApiRbacV1RoleBindingList.fromJson(value);
        case 'IoK8sApiRbacV1RoleList':
          return IoK8sApiRbacV1RoleList.fromJson(value);
        case 'IoK8sApiRbacV1RoleRef':
          return IoK8sApiRbacV1RoleRef.fromJson(value);
        case 'IoK8sApiRbacV1Subject':
          return IoK8sApiRbacV1Subject.fromJson(value);
        case 'IoK8sApiResourceV1alpha1AllocationResult':
          return IoK8sApiResourceV1alpha1AllocationResult.fromJson(value);
        case 'IoK8sApiResourceV1alpha1PodScheduling':
          return IoK8sApiResourceV1alpha1PodScheduling.fromJson(value);
        case 'IoK8sApiResourceV1alpha1PodSchedulingList':
          return IoK8sApiResourceV1alpha1PodSchedulingList.fromJson(value);
        case 'IoK8sApiResourceV1alpha1PodSchedulingSpec':
          return IoK8sApiResourceV1alpha1PodSchedulingSpec.fromJson(value);
        case 'IoK8sApiResourceV1alpha1PodSchedulingStatus':
          return IoK8sApiResourceV1alpha1PodSchedulingStatus.fromJson(value);
        case 'IoK8sApiResourceV1alpha1ResourceClaim':
          return IoK8sApiResourceV1alpha1ResourceClaim.fromJson(value);
        case 'IoK8sApiResourceV1alpha1ResourceClaimConsumerReference':
          return IoK8sApiResourceV1alpha1ResourceClaimConsumerReference.fromJson(value);
        case 'IoK8sApiResourceV1alpha1ResourceClaimList':
          return IoK8sApiResourceV1alpha1ResourceClaimList.fromJson(value);
        case 'IoK8sApiResourceV1alpha1ResourceClaimParametersReference':
          return IoK8sApiResourceV1alpha1ResourceClaimParametersReference.fromJson(value);
        case 'IoK8sApiResourceV1alpha1ResourceClaimSchedulingStatus':
          return IoK8sApiResourceV1alpha1ResourceClaimSchedulingStatus.fromJson(value);
        case 'IoK8sApiResourceV1alpha1ResourceClaimSpec':
          return IoK8sApiResourceV1alpha1ResourceClaimSpec.fromJson(value);
        case 'IoK8sApiResourceV1alpha1ResourceClaimStatus':
          return IoK8sApiResourceV1alpha1ResourceClaimStatus.fromJson(value);
        case 'IoK8sApiResourceV1alpha1ResourceClaimTemplate':
          return IoK8sApiResourceV1alpha1ResourceClaimTemplate.fromJson(value);
        case 'IoK8sApiResourceV1alpha1ResourceClaimTemplateList':
          return IoK8sApiResourceV1alpha1ResourceClaimTemplateList.fromJson(value);
        case 'IoK8sApiResourceV1alpha1ResourceClaimTemplateSpec':
          return IoK8sApiResourceV1alpha1ResourceClaimTemplateSpec.fromJson(value);
        case 'IoK8sApiResourceV1alpha1ResourceClass':
          return IoK8sApiResourceV1alpha1ResourceClass.fromJson(value);
        case 'IoK8sApiResourceV1alpha1ResourceClassList':
          return IoK8sApiResourceV1alpha1ResourceClassList.fromJson(value);
        case 'IoK8sApiResourceV1alpha1ResourceClassParametersReference':
          return IoK8sApiResourceV1alpha1ResourceClassParametersReference.fromJson(value);
        case 'IoK8sApiSchedulingV1PriorityClass':
          return IoK8sApiSchedulingV1PriorityClass.fromJson(value);
        case 'IoK8sApiSchedulingV1PriorityClassList':
          return IoK8sApiSchedulingV1PriorityClassList.fromJson(value);
        case 'IoK8sApiStorageV1CSIDriver':
          return IoK8sApiStorageV1CSIDriver.fromJson(value);
        case 'IoK8sApiStorageV1CSIDriverList':
          return IoK8sApiStorageV1CSIDriverList.fromJson(value);
        case 'IoK8sApiStorageV1CSIDriverSpec':
          return IoK8sApiStorageV1CSIDriverSpec.fromJson(value);
        case 'IoK8sApiStorageV1CSINode':
          return IoK8sApiStorageV1CSINode.fromJson(value);
        case 'IoK8sApiStorageV1CSINodeDriver':
          return IoK8sApiStorageV1CSINodeDriver.fromJson(value);
        case 'IoK8sApiStorageV1CSINodeList':
          return IoK8sApiStorageV1CSINodeList.fromJson(value);
        case 'IoK8sApiStorageV1CSINodeSpec':
          return IoK8sApiStorageV1CSINodeSpec.fromJson(value);
        case 'IoK8sApiStorageV1CSIStorageCapacity':
          return IoK8sApiStorageV1CSIStorageCapacity.fromJson(value);
        case 'IoK8sApiStorageV1CSIStorageCapacityList':
          return IoK8sApiStorageV1CSIStorageCapacityList.fromJson(value);
        case 'IoK8sApiStorageV1StorageClass':
          return IoK8sApiStorageV1StorageClass.fromJson(value);
        case 'IoK8sApiStorageV1StorageClassList':
          return IoK8sApiStorageV1StorageClassList.fromJson(value);
        case 'IoK8sApiStorageV1TokenRequest':
          return IoK8sApiStorageV1TokenRequest.fromJson(value);
        case 'IoK8sApiStorageV1VolumeAttachment':
          return IoK8sApiStorageV1VolumeAttachment.fromJson(value);
        case 'IoK8sApiStorageV1VolumeAttachmentList':
          return IoK8sApiStorageV1VolumeAttachmentList.fromJson(value);
        case 'IoK8sApiStorageV1VolumeAttachmentSource':
          return IoK8sApiStorageV1VolumeAttachmentSource.fromJson(value);
        case 'IoK8sApiStorageV1VolumeAttachmentSpec':
          return IoK8sApiStorageV1VolumeAttachmentSpec.fromJson(value);
        case 'IoK8sApiStorageV1VolumeAttachmentStatus':
          return IoK8sApiStorageV1VolumeAttachmentStatus.fromJson(value);
        case 'IoK8sApiStorageV1VolumeError':
          return IoK8sApiStorageV1VolumeError.fromJson(value);
        case 'IoK8sApiStorageV1VolumeNodeResources':
          return IoK8sApiStorageV1VolumeNodeResources.fromJson(value);
        case 'IoK8sApiStorageV1beta1CSIStorageCapacity':
          return IoK8sApiStorageV1beta1CSIStorageCapacity.fromJson(value);
        case 'IoK8sApiStorageV1beta1CSIStorageCapacityList':
          return IoK8sApiStorageV1beta1CSIStorageCapacityList.fromJson(value);
        case 'IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceColumnDefinition':
          return IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceColumnDefinition.fromJson(value);
        case 'IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceConversion':
          return IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceConversion.fromJson(value);
        case 'IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceDefinition':
          return IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceDefinition.fromJson(value);
        case 'IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceDefinitionCondition':
          return IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceDefinitionCondition.fromJson(value);
        case 'IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceDefinitionList':
          return IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceDefinitionList.fromJson(value);
        case 'IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceDefinitionNames':
          return IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceDefinitionNames.fromJson(value);
        case 'IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceDefinitionSpec':
          return IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceDefinitionSpec.fromJson(value);
        case 'IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceDefinitionStatus':
          return IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceDefinitionStatus.fromJson(value);
        case 'IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceDefinitionVersion':
          return IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceDefinitionVersion.fromJson(value);
        case 'IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceSubresourceScale':
          return IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceSubresourceScale.fromJson(value);
        case 'IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceSubresources':
          return IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceSubresources.fromJson(value);
        case 'IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceValidation':
          return IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceValidation.fromJson(value);
        case 'IoK8sApiextensionsApiserverPkgApisApiextensionsV1ExternalDocumentation':
          return IoK8sApiextensionsApiserverPkgApisApiextensionsV1ExternalDocumentation.fromJson(value);
        case 'IoK8sApiextensionsApiserverPkgApisApiextensionsV1JSONSchemaProps':
          return IoK8sApiextensionsApiserverPkgApisApiextensionsV1JSONSchemaProps.fromJson(value);
        case 'IoK8sApiextensionsApiserverPkgApisApiextensionsV1ServiceReference':
          return IoK8sApiextensionsApiserverPkgApisApiextensionsV1ServiceReference.fromJson(value);
        case 'IoK8sApiextensionsApiserverPkgApisApiextensionsV1ValidationRule':
          return IoK8sApiextensionsApiserverPkgApisApiextensionsV1ValidationRule.fromJson(value);
        case 'IoK8sApiextensionsApiserverPkgApisApiextensionsV1WebhookClientConfig':
          return IoK8sApiextensionsApiserverPkgApisApiextensionsV1WebhookClientConfig.fromJson(value);
        case 'IoK8sApiextensionsApiserverPkgApisApiextensionsV1WebhookConversion':
          return IoK8sApiextensionsApiserverPkgApisApiextensionsV1WebhookConversion.fromJson(value);
        case 'IoK8sApimachineryPkgApisMetaV1APIGroup':
          return IoK8sApimachineryPkgApisMetaV1APIGroup.fromJson(value);
        case 'IoK8sApimachineryPkgApisMetaV1APIGroupList':
          return IoK8sApimachineryPkgApisMetaV1APIGroupList.fromJson(value);
        case 'IoK8sApimachineryPkgApisMetaV1APIResource':
          return IoK8sApimachineryPkgApisMetaV1APIResource.fromJson(value);
        case 'IoK8sApimachineryPkgApisMetaV1APIResourceList':
          return IoK8sApimachineryPkgApisMetaV1APIResourceList.fromJson(value);
        case 'IoK8sApimachineryPkgApisMetaV1APIVersions':
          return IoK8sApimachineryPkgApisMetaV1APIVersions.fromJson(value);
        case 'IoK8sApimachineryPkgApisMetaV1Condition':
          return IoK8sApimachineryPkgApisMetaV1Condition.fromJson(value);
        case 'IoK8sApimachineryPkgApisMetaV1DeleteOptions':
          return IoK8sApimachineryPkgApisMetaV1DeleteOptions.fromJson(value);
        case 'IoK8sApimachineryPkgApisMetaV1GroupVersionForDiscovery':
          return IoK8sApimachineryPkgApisMetaV1GroupVersionForDiscovery.fromJson(value);
        case 'IoK8sApimachineryPkgApisMetaV1LabelSelector':
          return IoK8sApimachineryPkgApisMetaV1LabelSelector.fromJson(value);
        case 'IoK8sApimachineryPkgApisMetaV1LabelSelectorRequirement':
          return IoK8sApimachineryPkgApisMetaV1LabelSelectorRequirement.fromJson(value);
        case 'IoK8sApimachineryPkgApisMetaV1ListMeta':
          return IoK8sApimachineryPkgApisMetaV1ListMeta.fromJson(value);
        case 'IoK8sApimachineryPkgApisMetaV1ManagedFieldsEntry':
          return IoK8sApimachineryPkgApisMetaV1ManagedFieldsEntry.fromJson(value);
        case 'IoK8sApimachineryPkgApisMetaV1ObjectMeta':
          return IoK8sApimachineryPkgApisMetaV1ObjectMeta.fromJson(value);
        case 'IoK8sApimachineryPkgApisMetaV1OwnerReference':
          return IoK8sApimachineryPkgApisMetaV1OwnerReference.fromJson(value);
        case 'IoK8sApimachineryPkgApisMetaV1Preconditions':
          return IoK8sApimachineryPkgApisMetaV1Preconditions.fromJson(value);
        case 'IoK8sApimachineryPkgApisMetaV1ServerAddressByClientCIDR':
          return IoK8sApimachineryPkgApisMetaV1ServerAddressByClientCIDR.fromJson(value);
        case 'IoK8sApimachineryPkgApisMetaV1Status':
          return IoK8sApimachineryPkgApisMetaV1Status.fromJson(value);
        case 'IoK8sApimachineryPkgApisMetaV1StatusCause':
          return IoK8sApimachineryPkgApisMetaV1StatusCause.fromJson(value);
        case 'IoK8sApimachineryPkgApisMetaV1StatusDetails':
          return IoK8sApimachineryPkgApisMetaV1StatusDetails.fromJson(value);
        case 'IoK8sApimachineryPkgApisMetaV1WatchEvent':
          return IoK8sApimachineryPkgApisMetaV1WatchEvent.fromJson(value);
        case 'IoK8sApimachineryPkgVersionInfo':
          return IoK8sApimachineryPkgVersionInfo.fromJson(value);
        case 'IoK8sKubeAggregatorPkgApisApiregistrationV1APIService':
          return IoK8sKubeAggregatorPkgApisApiregistrationV1APIService.fromJson(value);
        case 'IoK8sKubeAggregatorPkgApisApiregistrationV1APIServiceCondition':
          return IoK8sKubeAggregatorPkgApisApiregistrationV1APIServiceCondition.fromJson(value);
        case 'IoK8sKubeAggregatorPkgApisApiregistrationV1APIServiceList':
          return IoK8sKubeAggregatorPkgApisApiregistrationV1APIServiceList.fromJson(value);
        case 'IoK8sKubeAggregatorPkgApisApiregistrationV1APIServiceSpec':
          return IoK8sKubeAggregatorPkgApisApiregistrationV1APIServiceSpec.fromJson(value);
        case 'IoK8sKubeAggregatorPkgApisApiregistrationV1APIServiceStatus':
          return IoK8sKubeAggregatorPkgApisApiregistrationV1APIServiceStatus.fromJson(value);
        case 'IoK8sKubeAggregatorPkgApisApiregistrationV1ServiceReference':
          return IoK8sKubeAggregatorPkgApisApiregistrationV1ServiceReference.fromJson(value);
        default:
          dynamic match;
          if (value is List && (match = _regList.firstMatch(targetType)?.group(1)) != null) {
            return value
              .map<dynamic>((dynamic v) => _deserialize(v, match, growable: growable,))
              .toList(growable: growable);
          }
          if (value is Set && (match = _regSet.firstMatch(targetType)?.group(1)) != null) {
            return value
              .map<dynamic>((dynamic v) => _deserialize(v, match, growable: growable,))
              .toSet();
          }
          if (value is Map && (match = _regMap.firstMatch(targetType)?.group(1)) != null) {
            return Map<String, dynamic>.fromIterables(
              value.keys.cast<String>(),
              value.values.map<dynamic>((dynamic v) => _deserialize(v, match, growable: growable,)),
            );
          }
      }
    } on Exception catch (error, trace) {
      throw ApiException.withInner(HttpStatus.internalServerError, 'Exception during deserialization.', error, trace,);
    }
    throw ApiException(HttpStatus.internalServerError, 'Could not find a suitable class for deserialization',);
  }
}

/// Primarily intended for use in an isolate.
class DeserializationMessage {
  const DeserializationMessage({
    required this.json,
    required this.targetType,
    this.growable = false,
  });

  /// The JSON value to deserialize.
  final String json;

  /// Target type to deserialize to.
  final String targetType;

  /// Whether to make deserialized lists or maps growable.
  final bool growable;
}

/// Primarily intended for use in an isolate.
Future<dynamic> deserializeAsync(DeserializationMessage message) async {
  // Remove all spaces. Necessary for regular expressions as well.
  final targetType = message.targetType.replaceAll(' ', '');

  // If the expected target type is String, nothing to do...
  return targetType == 'String'
    ? message.json
    : ApiClient._deserialize(
        jsonDecode(message.json),
        targetType,
        growable: message.growable,
      );
}

/// Primarily intended for use in an isolate.
Future<String> serializeAsync(Object? value) async => value == null ? '' : json.encode(value);
