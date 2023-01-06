//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_import

import 'package:one_of_serializer/any_of_serializer.dart';
import 'package:one_of_serializer/one_of_serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:built_value/iso_8601_date_time_serializer.dart';
import 'package:k8s/src/date_serializer.dart';
import 'package:k8s/src/model/date.dart';

import 'package:k8s/src/model/io_k8s_api_admissionregistration_v1_mutating_webhook.dart';
import 'package:k8s/src/model/io_k8s_api_admissionregistration_v1_mutating_webhook_configuration.dart';
import 'package:k8s/src/model/io_k8s_api_admissionregistration_v1_mutating_webhook_configuration_list.dart';
import 'package:k8s/src/model/io_k8s_api_admissionregistration_v1_rule_with_operations.dart';
import 'package:k8s/src/model/io_k8s_api_admissionregistration_v1_service_reference.dart';
import 'package:k8s/src/model/io_k8s_api_admissionregistration_v1_validating_webhook.dart';
import 'package:k8s/src/model/io_k8s_api_admissionregistration_v1_validating_webhook_configuration.dart';
import 'package:k8s/src/model/io_k8s_api_admissionregistration_v1_validating_webhook_configuration_list.dart';
import 'package:k8s/src/model/io_k8s_api_admissionregistration_v1_webhook_client_config.dart';
import 'package:k8s/src/model/io_k8s_api_admissionregistration_v1alpha1_match_resources.dart';
import 'package:k8s/src/model/io_k8s_api_admissionregistration_v1alpha1_named_rule_with_operations.dart';
import 'package:k8s/src/model/io_k8s_api_admissionregistration_v1alpha1_param_kind.dart';
import 'package:k8s/src/model/io_k8s_api_admissionregistration_v1alpha1_param_ref.dart';
import 'package:k8s/src/model/io_k8s_api_admissionregistration_v1alpha1_validating_admission_policy.dart';
import 'package:k8s/src/model/io_k8s_api_admissionregistration_v1alpha1_validating_admission_policy_binding.dart';
import 'package:k8s/src/model/io_k8s_api_admissionregistration_v1alpha1_validating_admission_policy_binding_list.dart';
import 'package:k8s/src/model/io_k8s_api_admissionregistration_v1alpha1_validating_admission_policy_binding_spec.dart';
import 'package:k8s/src/model/io_k8s_api_admissionregistration_v1alpha1_validating_admission_policy_list.dart';
import 'package:k8s/src/model/io_k8s_api_admissionregistration_v1alpha1_validating_admission_policy_spec.dart';
import 'package:k8s/src/model/io_k8s_api_admissionregistration_v1alpha1_validation.dart';
import 'package:k8s/src/model/io_k8s_api_apiserverinternal_v1alpha1_server_storage_version.dart';
import 'package:k8s/src/model/io_k8s_api_apiserverinternal_v1alpha1_storage_version.dart';
import 'package:k8s/src/model/io_k8s_api_apiserverinternal_v1alpha1_storage_version_condition.dart';
import 'package:k8s/src/model/io_k8s_api_apiserverinternal_v1alpha1_storage_version_list.dart';
import 'package:k8s/src/model/io_k8s_api_apiserverinternal_v1alpha1_storage_version_status.dart';
import 'package:k8s/src/model/io_k8s_api_apps_v1_controller_revision.dart';
import 'package:k8s/src/model/io_k8s_api_apps_v1_controller_revision_list.dart';
import 'package:k8s/src/model/io_k8s_api_apps_v1_daemon_set.dart';
import 'package:k8s/src/model/io_k8s_api_apps_v1_daemon_set_condition.dart';
import 'package:k8s/src/model/io_k8s_api_apps_v1_daemon_set_list.dart';
import 'package:k8s/src/model/io_k8s_api_apps_v1_daemon_set_spec.dart';
import 'package:k8s/src/model/io_k8s_api_apps_v1_daemon_set_status.dart';
import 'package:k8s/src/model/io_k8s_api_apps_v1_daemon_set_update_strategy.dart';
import 'package:k8s/src/model/io_k8s_api_apps_v1_deployment.dart';
import 'package:k8s/src/model/io_k8s_api_apps_v1_deployment_condition.dart';
import 'package:k8s/src/model/io_k8s_api_apps_v1_deployment_list.dart';
import 'package:k8s/src/model/io_k8s_api_apps_v1_deployment_spec.dart';
import 'package:k8s/src/model/io_k8s_api_apps_v1_deployment_status.dart';
import 'package:k8s/src/model/io_k8s_api_apps_v1_deployment_strategy.dart';
import 'package:k8s/src/model/io_k8s_api_apps_v1_replica_set.dart';
import 'package:k8s/src/model/io_k8s_api_apps_v1_replica_set_condition.dart';
import 'package:k8s/src/model/io_k8s_api_apps_v1_replica_set_list.dart';
import 'package:k8s/src/model/io_k8s_api_apps_v1_replica_set_spec.dart';
import 'package:k8s/src/model/io_k8s_api_apps_v1_replica_set_status.dart';
import 'package:k8s/src/model/io_k8s_api_apps_v1_rolling_update_daemon_set.dart';
import 'package:k8s/src/model/io_k8s_api_apps_v1_rolling_update_deployment.dart';
import 'package:k8s/src/model/io_k8s_api_apps_v1_rolling_update_stateful_set_strategy.dart';
import 'package:k8s/src/model/io_k8s_api_apps_v1_stateful_set.dart';
import 'package:k8s/src/model/io_k8s_api_apps_v1_stateful_set_condition.dart';
import 'package:k8s/src/model/io_k8s_api_apps_v1_stateful_set_list.dart';
import 'package:k8s/src/model/io_k8s_api_apps_v1_stateful_set_ordinals.dart';
import 'package:k8s/src/model/io_k8s_api_apps_v1_stateful_set_persistent_volume_claim_retention_policy.dart';
import 'package:k8s/src/model/io_k8s_api_apps_v1_stateful_set_spec.dart';
import 'package:k8s/src/model/io_k8s_api_apps_v1_stateful_set_status.dart';
import 'package:k8s/src/model/io_k8s_api_apps_v1_stateful_set_update_strategy.dart';
import 'package:k8s/src/model/io_k8s_api_authentication_v1_bound_object_reference.dart';
import 'package:k8s/src/model/io_k8s_api_authentication_v1_token_request.dart';
import 'package:k8s/src/model/io_k8s_api_authentication_v1_token_request_spec.dart';
import 'package:k8s/src/model/io_k8s_api_authentication_v1_token_request_status.dart';
import 'package:k8s/src/model/io_k8s_api_authentication_v1_token_review.dart';
import 'package:k8s/src/model/io_k8s_api_authentication_v1_token_review_spec.dart';
import 'package:k8s/src/model/io_k8s_api_authentication_v1_token_review_status.dart';
import 'package:k8s/src/model/io_k8s_api_authentication_v1_user_info.dart';
import 'package:k8s/src/model/io_k8s_api_authentication_v1alpha1_self_subject_review.dart';
import 'package:k8s/src/model/io_k8s_api_authentication_v1alpha1_self_subject_review_status.dart';
import 'package:k8s/src/model/io_k8s_api_authorization_v1_local_subject_access_review.dart';
import 'package:k8s/src/model/io_k8s_api_authorization_v1_non_resource_attributes.dart';
import 'package:k8s/src/model/io_k8s_api_authorization_v1_non_resource_rule.dart';
import 'package:k8s/src/model/io_k8s_api_authorization_v1_resource_attributes.dart';
import 'package:k8s/src/model/io_k8s_api_authorization_v1_resource_rule.dart';
import 'package:k8s/src/model/io_k8s_api_authorization_v1_self_subject_access_review.dart';
import 'package:k8s/src/model/io_k8s_api_authorization_v1_self_subject_access_review_spec.dart';
import 'package:k8s/src/model/io_k8s_api_authorization_v1_self_subject_rules_review.dart';
import 'package:k8s/src/model/io_k8s_api_authorization_v1_self_subject_rules_review_spec.dart';
import 'package:k8s/src/model/io_k8s_api_authorization_v1_subject_access_review.dart';
import 'package:k8s/src/model/io_k8s_api_authorization_v1_subject_access_review_spec.dart';
import 'package:k8s/src/model/io_k8s_api_authorization_v1_subject_access_review_status.dart';
import 'package:k8s/src/model/io_k8s_api_authorization_v1_subject_rules_review_status.dart';
import 'package:k8s/src/model/io_k8s_api_autoscaling_v1_cross_version_object_reference.dart';
import 'package:k8s/src/model/io_k8s_api_autoscaling_v1_horizontal_pod_autoscaler.dart';
import 'package:k8s/src/model/io_k8s_api_autoscaling_v1_horizontal_pod_autoscaler_list.dart';
import 'package:k8s/src/model/io_k8s_api_autoscaling_v1_horizontal_pod_autoscaler_spec.dart';
import 'package:k8s/src/model/io_k8s_api_autoscaling_v1_horizontal_pod_autoscaler_status.dart';
import 'package:k8s/src/model/io_k8s_api_autoscaling_v1_scale.dart';
import 'package:k8s/src/model/io_k8s_api_autoscaling_v1_scale_spec.dart';
import 'package:k8s/src/model/io_k8s_api_autoscaling_v1_scale_status.dart';
import 'package:k8s/src/model/io_k8s_api_autoscaling_v2_container_resource_metric_source.dart';
import 'package:k8s/src/model/io_k8s_api_autoscaling_v2_container_resource_metric_status.dart';
import 'package:k8s/src/model/io_k8s_api_autoscaling_v2_cross_version_object_reference.dart';
import 'package:k8s/src/model/io_k8s_api_autoscaling_v2_external_metric_source.dart';
import 'package:k8s/src/model/io_k8s_api_autoscaling_v2_external_metric_status.dart';
import 'package:k8s/src/model/io_k8s_api_autoscaling_v2_hpa_scaling_policy.dart';
import 'package:k8s/src/model/io_k8s_api_autoscaling_v2_hpa_scaling_rules.dart';
import 'package:k8s/src/model/io_k8s_api_autoscaling_v2_horizontal_pod_autoscaler.dart';
import 'package:k8s/src/model/io_k8s_api_autoscaling_v2_horizontal_pod_autoscaler_behavior.dart';
import 'package:k8s/src/model/io_k8s_api_autoscaling_v2_horizontal_pod_autoscaler_condition.dart';
import 'package:k8s/src/model/io_k8s_api_autoscaling_v2_horizontal_pod_autoscaler_list.dart';
import 'package:k8s/src/model/io_k8s_api_autoscaling_v2_horizontal_pod_autoscaler_spec.dart';
import 'package:k8s/src/model/io_k8s_api_autoscaling_v2_horizontal_pod_autoscaler_status.dart';
import 'package:k8s/src/model/io_k8s_api_autoscaling_v2_metric_identifier.dart';
import 'package:k8s/src/model/io_k8s_api_autoscaling_v2_metric_spec.dart';
import 'package:k8s/src/model/io_k8s_api_autoscaling_v2_metric_status.dart';
import 'package:k8s/src/model/io_k8s_api_autoscaling_v2_metric_target.dart';
import 'package:k8s/src/model/io_k8s_api_autoscaling_v2_metric_value_status.dart';
import 'package:k8s/src/model/io_k8s_api_autoscaling_v2_object_metric_source.dart';
import 'package:k8s/src/model/io_k8s_api_autoscaling_v2_object_metric_status.dart';
import 'package:k8s/src/model/io_k8s_api_autoscaling_v2_pods_metric_source.dart';
import 'package:k8s/src/model/io_k8s_api_autoscaling_v2_pods_metric_status.dart';
import 'package:k8s/src/model/io_k8s_api_autoscaling_v2_resource_metric_source.dart';
import 'package:k8s/src/model/io_k8s_api_autoscaling_v2_resource_metric_status.dart';
import 'package:k8s/src/model/io_k8s_api_batch_v1_cron_job.dart';
import 'package:k8s/src/model/io_k8s_api_batch_v1_cron_job_list.dart';
import 'package:k8s/src/model/io_k8s_api_batch_v1_cron_job_spec.dart';
import 'package:k8s/src/model/io_k8s_api_batch_v1_cron_job_status.dart';
import 'package:k8s/src/model/io_k8s_api_batch_v1_job.dart';
import 'package:k8s/src/model/io_k8s_api_batch_v1_job_condition.dart';
import 'package:k8s/src/model/io_k8s_api_batch_v1_job_list.dart';
import 'package:k8s/src/model/io_k8s_api_batch_v1_job_spec.dart';
import 'package:k8s/src/model/io_k8s_api_batch_v1_job_status.dart';
import 'package:k8s/src/model/io_k8s_api_batch_v1_job_template_spec.dart';
import 'package:k8s/src/model/io_k8s_api_batch_v1_pod_failure_policy.dart';
import 'package:k8s/src/model/io_k8s_api_batch_v1_pod_failure_policy_on_exit_codes_requirement.dart';
import 'package:k8s/src/model/io_k8s_api_batch_v1_pod_failure_policy_on_pod_conditions_pattern.dart';
import 'package:k8s/src/model/io_k8s_api_batch_v1_pod_failure_policy_rule.dart';
import 'package:k8s/src/model/io_k8s_api_batch_v1_uncounted_terminated_pods.dart';
import 'package:k8s/src/model/io_k8s_api_certificates_v1_certificate_signing_request.dart';
import 'package:k8s/src/model/io_k8s_api_certificates_v1_certificate_signing_request_condition.dart';
import 'package:k8s/src/model/io_k8s_api_certificates_v1_certificate_signing_request_list.dart';
import 'package:k8s/src/model/io_k8s_api_certificates_v1_certificate_signing_request_spec.dart';
import 'package:k8s/src/model/io_k8s_api_certificates_v1_certificate_signing_request_status.dart';
import 'package:k8s/src/model/io_k8s_api_coordination_v1_lease.dart';
import 'package:k8s/src/model/io_k8s_api_coordination_v1_lease_list.dart';
import 'package:k8s/src/model/io_k8s_api_coordination_v1_lease_spec.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_aws_elastic_block_store_volume_source.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_affinity.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_attached_volume.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_azure_disk_volume_source.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_azure_file_persistent_volume_source.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_azure_file_volume_source.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_binding.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_csi_persistent_volume_source.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_csi_volume_source.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_capabilities.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_ceph_fs_persistent_volume_source.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_ceph_fs_volume_source.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_cinder_persistent_volume_source.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_cinder_volume_source.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_claim_source.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_client_ip_config.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_component_condition.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_component_status.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_component_status_list.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_config_map.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_config_map_env_source.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_config_map_key_selector.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_config_map_list.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_config_map_node_config_source.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_config_map_projection.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_config_map_volume_source.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_container.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_container_image.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_container_port.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_container_state.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_container_state_running.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_container_state_terminated.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_container_state_waiting.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_container_status.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_daemon_endpoint.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_downward_api_projection.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_downward_api_volume_file.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_downward_api_volume_source.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_empty_dir_volume_source.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_endpoint_address.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_endpoint_port.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_endpoint_subset.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_endpoints.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_endpoints_list.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_env_from_source.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_env_var.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_env_var_source.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_ephemeral_container.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_ephemeral_volume_source.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_event.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_event_list.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_event_series.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_event_source.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_exec_action.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_fc_volume_source.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_flex_persistent_volume_source.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_flex_volume_source.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_flocker_volume_source.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_gce_persistent_disk_volume_source.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_grpc_action.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_git_repo_volume_source.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_glusterfs_persistent_volume_source.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_glusterfs_volume_source.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_http_get_action.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_http_header.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_host_alias.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_host_path_volume_source.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_iscsi_persistent_volume_source.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_iscsi_volume_source.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_key_to_path.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_lifecycle.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_lifecycle_handler.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_limit_range.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_limit_range_item.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_limit_range_list.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_limit_range_spec.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_load_balancer_ingress.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_load_balancer_status.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_local_object_reference.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_local_volume_source.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_nfs_volume_source.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_namespace.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_namespace_condition.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_namespace_list.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_namespace_spec.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_namespace_status.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_node.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_node_address.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_node_affinity.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_node_condition.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_node_config_source.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_node_config_status.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_node_daemon_endpoints.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_node_list.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_node_selector.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_node_selector_requirement.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_node_selector_term.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_node_spec.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_node_status.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_node_system_info.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_object_field_selector.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_object_reference.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_persistent_volume.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_persistent_volume_claim.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_persistent_volume_claim_condition.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_persistent_volume_claim_list.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_persistent_volume_claim_spec.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_persistent_volume_claim_status.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_persistent_volume_claim_template.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_persistent_volume_claim_volume_source.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_persistent_volume_list.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_persistent_volume_spec.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_persistent_volume_status.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_photon_persistent_disk_volume_source.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_pod.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_pod_affinity.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_pod_affinity_term.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_pod_anti_affinity.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_pod_condition.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_pod_dns_config.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_pod_dns_config_option.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_pod_ip.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_pod_list.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_pod_os.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_pod_readiness_gate.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_pod_resource_claim.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_pod_scheduling_gate.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_pod_security_context.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_pod_spec.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_pod_status.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_pod_template.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_pod_template_list.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_pod_template_spec.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_port_status.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_portworx_volume_source.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_preferred_scheduling_term.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_probe.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_projected_volume_source.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_quobyte_volume_source.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_rbd_persistent_volume_source.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_rbd_volume_source.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_replication_controller.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_replication_controller_condition.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_replication_controller_list.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_replication_controller_spec.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_replication_controller_status.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_resource_claim.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_resource_field_selector.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_resource_quota.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_resource_quota_list.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_resource_quota_spec.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_resource_quota_status.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_resource_requirements.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_se_linux_options.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_scale_io_persistent_volume_source.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_scale_io_volume_source.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_scope_selector.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_scoped_resource_selector_requirement.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_seccomp_profile.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_secret.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_secret_env_source.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_secret_key_selector.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_secret_list.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_secret_projection.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_secret_reference.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_secret_volume_source.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_security_context.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_service.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_service_account.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_service_account_list.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_service_account_token_projection.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_service_list.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_service_port.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_service_spec.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_service_status.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_session_affinity_config.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_storage_os_persistent_volume_source.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_storage_os_volume_source.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_sysctl.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_tcp_socket_action.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_taint.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_toleration.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_topology_selector_label_requirement.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_topology_selector_term.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_topology_spread_constraint.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_typed_local_object_reference.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_typed_object_reference.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_volume.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_volume_device.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_volume_mount.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_volume_node_affinity.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_volume_projection.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_vsphere_virtual_disk_volume_source.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_weighted_pod_affinity_term.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_windows_security_context_options.dart';
import 'package:k8s/src/model/io_k8s_api_discovery_v1_endpoint.dart';
import 'package:k8s/src/model/io_k8s_api_discovery_v1_endpoint_conditions.dart';
import 'package:k8s/src/model/io_k8s_api_discovery_v1_endpoint_hints.dart';
import 'package:k8s/src/model/io_k8s_api_discovery_v1_endpoint_port.dart';
import 'package:k8s/src/model/io_k8s_api_discovery_v1_endpoint_slice.dart';
import 'package:k8s/src/model/io_k8s_api_discovery_v1_endpoint_slice_list.dart';
import 'package:k8s/src/model/io_k8s_api_discovery_v1_for_zone.dart';
import 'package:k8s/src/model/io_k8s_api_events_v1_event.dart';
import 'package:k8s/src/model/io_k8s_api_events_v1_event_list.dart';
import 'package:k8s/src/model/io_k8s_api_events_v1_event_series.dart';
import 'package:k8s/src/model/io_k8s_api_flowcontrol_v1beta2_flow_distinguisher_method.dart';
import 'package:k8s/src/model/io_k8s_api_flowcontrol_v1beta2_flow_schema.dart';
import 'package:k8s/src/model/io_k8s_api_flowcontrol_v1beta2_flow_schema_condition.dart';
import 'package:k8s/src/model/io_k8s_api_flowcontrol_v1beta2_flow_schema_list.dart';
import 'package:k8s/src/model/io_k8s_api_flowcontrol_v1beta2_flow_schema_spec.dart';
import 'package:k8s/src/model/io_k8s_api_flowcontrol_v1beta2_flow_schema_status.dart';
import 'package:k8s/src/model/io_k8s_api_flowcontrol_v1beta2_group_subject.dart';
import 'package:k8s/src/model/io_k8s_api_flowcontrol_v1beta2_limit_response.dart';
import 'package:k8s/src/model/io_k8s_api_flowcontrol_v1beta2_limited_priority_level_configuration.dart';
import 'package:k8s/src/model/io_k8s_api_flowcontrol_v1beta2_non_resource_policy_rule.dart';
import 'package:k8s/src/model/io_k8s_api_flowcontrol_v1beta2_policy_rules_with_subjects.dart';
import 'package:k8s/src/model/io_k8s_api_flowcontrol_v1beta2_priority_level_configuration.dart';
import 'package:k8s/src/model/io_k8s_api_flowcontrol_v1beta2_priority_level_configuration_condition.dart';
import 'package:k8s/src/model/io_k8s_api_flowcontrol_v1beta2_priority_level_configuration_list.dart';
import 'package:k8s/src/model/io_k8s_api_flowcontrol_v1beta2_priority_level_configuration_reference.dart';
import 'package:k8s/src/model/io_k8s_api_flowcontrol_v1beta2_priority_level_configuration_spec.dart';
import 'package:k8s/src/model/io_k8s_api_flowcontrol_v1beta2_priority_level_configuration_status.dart';
import 'package:k8s/src/model/io_k8s_api_flowcontrol_v1beta2_queuing_configuration.dart';
import 'package:k8s/src/model/io_k8s_api_flowcontrol_v1beta2_resource_policy_rule.dart';
import 'package:k8s/src/model/io_k8s_api_flowcontrol_v1beta2_service_account_subject.dart';
import 'package:k8s/src/model/io_k8s_api_flowcontrol_v1beta2_subject.dart';
import 'package:k8s/src/model/io_k8s_api_flowcontrol_v1beta2_user_subject.dart';
import 'package:k8s/src/model/io_k8s_api_flowcontrol_v1beta3_flow_distinguisher_method.dart';
import 'package:k8s/src/model/io_k8s_api_flowcontrol_v1beta3_flow_schema.dart';
import 'package:k8s/src/model/io_k8s_api_flowcontrol_v1beta3_flow_schema_condition.dart';
import 'package:k8s/src/model/io_k8s_api_flowcontrol_v1beta3_flow_schema_list.dart';
import 'package:k8s/src/model/io_k8s_api_flowcontrol_v1beta3_flow_schema_spec.dart';
import 'package:k8s/src/model/io_k8s_api_flowcontrol_v1beta3_flow_schema_status.dart';
import 'package:k8s/src/model/io_k8s_api_flowcontrol_v1beta3_group_subject.dart';
import 'package:k8s/src/model/io_k8s_api_flowcontrol_v1beta3_limit_response.dart';
import 'package:k8s/src/model/io_k8s_api_flowcontrol_v1beta3_limited_priority_level_configuration.dart';
import 'package:k8s/src/model/io_k8s_api_flowcontrol_v1beta3_non_resource_policy_rule.dart';
import 'package:k8s/src/model/io_k8s_api_flowcontrol_v1beta3_policy_rules_with_subjects.dart';
import 'package:k8s/src/model/io_k8s_api_flowcontrol_v1beta3_priority_level_configuration.dart';
import 'package:k8s/src/model/io_k8s_api_flowcontrol_v1beta3_priority_level_configuration_condition.dart';
import 'package:k8s/src/model/io_k8s_api_flowcontrol_v1beta3_priority_level_configuration_list.dart';
import 'package:k8s/src/model/io_k8s_api_flowcontrol_v1beta3_priority_level_configuration_reference.dart';
import 'package:k8s/src/model/io_k8s_api_flowcontrol_v1beta3_priority_level_configuration_spec.dart';
import 'package:k8s/src/model/io_k8s_api_flowcontrol_v1beta3_priority_level_configuration_status.dart';
import 'package:k8s/src/model/io_k8s_api_flowcontrol_v1beta3_queuing_configuration.dart';
import 'package:k8s/src/model/io_k8s_api_flowcontrol_v1beta3_resource_policy_rule.dart';
import 'package:k8s/src/model/io_k8s_api_flowcontrol_v1beta3_service_account_subject.dart';
import 'package:k8s/src/model/io_k8s_api_flowcontrol_v1beta3_subject.dart';
import 'package:k8s/src/model/io_k8s_api_flowcontrol_v1beta3_user_subject.dart';
import 'package:k8s/src/model/io_k8s_api_networking_v1_http_ingress_path.dart';
import 'package:k8s/src/model/io_k8s_api_networking_v1_http_ingress_rule_value.dart';
import 'package:k8s/src/model/io_k8s_api_networking_v1_ip_block.dart';
import 'package:k8s/src/model/io_k8s_api_networking_v1_ingress.dart';
import 'package:k8s/src/model/io_k8s_api_networking_v1_ingress_backend.dart';
import 'package:k8s/src/model/io_k8s_api_networking_v1_ingress_class.dart';
import 'package:k8s/src/model/io_k8s_api_networking_v1_ingress_class_list.dart';
import 'package:k8s/src/model/io_k8s_api_networking_v1_ingress_class_parameters_reference.dart';
import 'package:k8s/src/model/io_k8s_api_networking_v1_ingress_class_spec.dart';
import 'package:k8s/src/model/io_k8s_api_networking_v1_ingress_list.dart';
import 'package:k8s/src/model/io_k8s_api_networking_v1_ingress_load_balancer_ingress.dart';
import 'package:k8s/src/model/io_k8s_api_networking_v1_ingress_load_balancer_status.dart';
import 'package:k8s/src/model/io_k8s_api_networking_v1_ingress_port_status.dart';
import 'package:k8s/src/model/io_k8s_api_networking_v1_ingress_rule.dart';
import 'package:k8s/src/model/io_k8s_api_networking_v1_ingress_service_backend.dart';
import 'package:k8s/src/model/io_k8s_api_networking_v1_ingress_spec.dart';
import 'package:k8s/src/model/io_k8s_api_networking_v1_ingress_status.dart';
import 'package:k8s/src/model/io_k8s_api_networking_v1_ingress_tls.dart';
import 'package:k8s/src/model/io_k8s_api_networking_v1_network_policy.dart';
import 'package:k8s/src/model/io_k8s_api_networking_v1_network_policy_egress_rule.dart';
import 'package:k8s/src/model/io_k8s_api_networking_v1_network_policy_ingress_rule.dart';
import 'package:k8s/src/model/io_k8s_api_networking_v1_network_policy_list.dart';
import 'package:k8s/src/model/io_k8s_api_networking_v1_network_policy_peer.dart';
import 'package:k8s/src/model/io_k8s_api_networking_v1_network_policy_port.dart';
import 'package:k8s/src/model/io_k8s_api_networking_v1_network_policy_spec.dart';
import 'package:k8s/src/model/io_k8s_api_networking_v1_network_policy_status.dart';
import 'package:k8s/src/model/io_k8s_api_networking_v1_service_backend_port.dart';
import 'package:k8s/src/model/io_k8s_api_networking_v1alpha1_cluster_cidr.dart';
import 'package:k8s/src/model/io_k8s_api_networking_v1alpha1_cluster_cidr_list.dart';
import 'package:k8s/src/model/io_k8s_api_networking_v1alpha1_cluster_cidr_spec.dart';
import 'package:k8s/src/model/io_k8s_api_node_v1_overhead.dart';
import 'package:k8s/src/model/io_k8s_api_node_v1_runtime_class.dart';
import 'package:k8s/src/model/io_k8s_api_node_v1_runtime_class_list.dart';
import 'package:k8s/src/model/io_k8s_api_node_v1_scheduling.dart';
import 'package:k8s/src/model/io_k8s_api_policy_v1_eviction.dart';
import 'package:k8s/src/model/io_k8s_api_policy_v1_pod_disruption_budget.dart';
import 'package:k8s/src/model/io_k8s_api_policy_v1_pod_disruption_budget_list.dart';
import 'package:k8s/src/model/io_k8s_api_policy_v1_pod_disruption_budget_spec.dart';
import 'package:k8s/src/model/io_k8s_api_policy_v1_pod_disruption_budget_status.dart';
import 'package:k8s/src/model/io_k8s_api_rbac_v1_aggregation_rule.dart';
import 'package:k8s/src/model/io_k8s_api_rbac_v1_cluster_role.dart';
import 'package:k8s/src/model/io_k8s_api_rbac_v1_cluster_role_binding.dart';
import 'package:k8s/src/model/io_k8s_api_rbac_v1_cluster_role_binding_list.dart';
import 'package:k8s/src/model/io_k8s_api_rbac_v1_cluster_role_list.dart';
import 'package:k8s/src/model/io_k8s_api_rbac_v1_policy_rule.dart';
import 'package:k8s/src/model/io_k8s_api_rbac_v1_role.dart';
import 'package:k8s/src/model/io_k8s_api_rbac_v1_role_binding.dart';
import 'package:k8s/src/model/io_k8s_api_rbac_v1_role_binding_list.dart';
import 'package:k8s/src/model/io_k8s_api_rbac_v1_role_list.dart';
import 'package:k8s/src/model/io_k8s_api_rbac_v1_role_ref.dart';
import 'package:k8s/src/model/io_k8s_api_rbac_v1_subject.dart';
import 'package:k8s/src/model/io_k8s_api_resource_v1alpha1_allocation_result.dart';
import 'package:k8s/src/model/io_k8s_api_resource_v1alpha1_pod_scheduling.dart';
import 'package:k8s/src/model/io_k8s_api_resource_v1alpha1_pod_scheduling_list.dart';
import 'package:k8s/src/model/io_k8s_api_resource_v1alpha1_pod_scheduling_spec.dart';
import 'package:k8s/src/model/io_k8s_api_resource_v1alpha1_pod_scheduling_status.dart';
import 'package:k8s/src/model/io_k8s_api_resource_v1alpha1_resource_claim.dart';
import 'package:k8s/src/model/io_k8s_api_resource_v1alpha1_resource_claim_consumer_reference.dart';
import 'package:k8s/src/model/io_k8s_api_resource_v1alpha1_resource_claim_list.dart';
import 'package:k8s/src/model/io_k8s_api_resource_v1alpha1_resource_claim_parameters_reference.dart';
import 'package:k8s/src/model/io_k8s_api_resource_v1alpha1_resource_claim_scheduling_status.dart';
import 'package:k8s/src/model/io_k8s_api_resource_v1alpha1_resource_claim_spec.dart';
import 'package:k8s/src/model/io_k8s_api_resource_v1alpha1_resource_claim_status.dart';
import 'package:k8s/src/model/io_k8s_api_resource_v1alpha1_resource_claim_template.dart';
import 'package:k8s/src/model/io_k8s_api_resource_v1alpha1_resource_claim_template_list.dart';
import 'package:k8s/src/model/io_k8s_api_resource_v1alpha1_resource_claim_template_spec.dart';
import 'package:k8s/src/model/io_k8s_api_resource_v1alpha1_resource_class.dart';
import 'package:k8s/src/model/io_k8s_api_resource_v1alpha1_resource_class_list.dart';
import 'package:k8s/src/model/io_k8s_api_resource_v1alpha1_resource_class_parameters_reference.dart';
import 'package:k8s/src/model/io_k8s_api_scheduling_v1_priority_class.dart';
import 'package:k8s/src/model/io_k8s_api_scheduling_v1_priority_class_list.dart';
import 'package:k8s/src/model/io_k8s_api_storage_v1_csi_driver.dart';
import 'package:k8s/src/model/io_k8s_api_storage_v1_csi_driver_list.dart';
import 'package:k8s/src/model/io_k8s_api_storage_v1_csi_driver_spec.dart';
import 'package:k8s/src/model/io_k8s_api_storage_v1_csi_node.dart';
import 'package:k8s/src/model/io_k8s_api_storage_v1_csi_node_driver.dart';
import 'package:k8s/src/model/io_k8s_api_storage_v1_csi_node_list.dart';
import 'package:k8s/src/model/io_k8s_api_storage_v1_csi_node_spec.dart';
import 'package:k8s/src/model/io_k8s_api_storage_v1_csi_storage_capacity.dart';
import 'package:k8s/src/model/io_k8s_api_storage_v1_csi_storage_capacity_list.dart';
import 'package:k8s/src/model/io_k8s_api_storage_v1_storage_class.dart';
import 'package:k8s/src/model/io_k8s_api_storage_v1_storage_class_list.dart';
import 'package:k8s/src/model/io_k8s_api_storage_v1_token_request.dart';
import 'package:k8s/src/model/io_k8s_api_storage_v1_volume_attachment.dart';
import 'package:k8s/src/model/io_k8s_api_storage_v1_volume_attachment_list.dart';
import 'package:k8s/src/model/io_k8s_api_storage_v1_volume_attachment_source.dart';
import 'package:k8s/src/model/io_k8s_api_storage_v1_volume_attachment_spec.dart';
import 'package:k8s/src/model/io_k8s_api_storage_v1_volume_attachment_status.dart';
import 'package:k8s/src/model/io_k8s_api_storage_v1_volume_error.dart';
import 'package:k8s/src/model/io_k8s_api_storage_v1_volume_node_resources.dart';
import 'package:k8s/src/model/io_k8s_api_storage_v1beta1_csi_storage_capacity.dart';
import 'package:k8s/src/model/io_k8s_api_storage_v1beta1_csi_storage_capacity_list.dart';
import 'package:k8s/src/model/io_k8s_apiextensions_apiserver_pkg_apis_apiextensions_v1_custom_resource_column_definition.dart';
import 'package:k8s/src/model/io_k8s_apiextensions_apiserver_pkg_apis_apiextensions_v1_custom_resource_conversion.dart';
import 'package:k8s/src/model/io_k8s_apiextensions_apiserver_pkg_apis_apiextensions_v1_custom_resource_definition.dart';
import 'package:k8s/src/model/io_k8s_apiextensions_apiserver_pkg_apis_apiextensions_v1_custom_resource_definition_condition.dart';
import 'package:k8s/src/model/io_k8s_apiextensions_apiserver_pkg_apis_apiextensions_v1_custom_resource_definition_list.dart';
import 'package:k8s/src/model/io_k8s_apiextensions_apiserver_pkg_apis_apiextensions_v1_custom_resource_definition_names.dart';
import 'package:k8s/src/model/io_k8s_apiextensions_apiserver_pkg_apis_apiextensions_v1_custom_resource_definition_spec.dart';
import 'package:k8s/src/model/io_k8s_apiextensions_apiserver_pkg_apis_apiextensions_v1_custom_resource_definition_status.dart';
import 'package:k8s/src/model/io_k8s_apiextensions_apiserver_pkg_apis_apiextensions_v1_custom_resource_definition_version.dart';
import 'package:k8s/src/model/io_k8s_apiextensions_apiserver_pkg_apis_apiextensions_v1_custom_resource_subresource_scale.dart';
import 'package:k8s/src/model/io_k8s_apiextensions_apiserver_pkg_apis_apiextensions_v1_custom_resource_subresources.dart';
import 'package:k8s/src/model/io_k8s_apiextensions_apiserver_pkg_apis_apiextensions_v1_custom_resource_validation.dart';
import 'package:k8s/src/model/io_k8s_apiextensions_apiserver_pkg_apis_apiextensions_v1_external_documentation.dart';
import 'package:k8s/src/model/io_k8s_apiextensions_apiserver_pkg_apis_apiextensions_v1_json_schema_props.dart';
import 'package:k8s/src/model/io_k8s_apiextensions_apiserver_pkg_apis_apiextensions_v1_service_reference.dart';
import 'package:k8s/src/model/io_k8s_apiextensions_apiserver_pkg_apis_apiextensions_v1_validation_rule.dart';
import 'package:k8s/src/model/io_k8s_apiextensions_apiserver_pkg_apis_apiextensions_v1_webhook_client_config.dart';
import 'package:k8s/src/model/io_k8s_apiextensions_apiserver_pkg_apis_apiextensions_v1_webhook_conversion.dart';
import 'package:k8s/src/model/io_k8s_apimachinery_pkg_apis_meta_v1_api_group.dart';
import 'package:k8s/src/model/io_k8s_apimachinery_pkg_apis_meta_v1_api_group_list.dart';
import 'package:k8s/src/model/io_k8s_apimachinery_pkg_apis_meta_v1_api_resource.dart';
import 'package:k8s/src/model/io_k8s_apimachinery_pkg_apis_meta_v1_api_resource_list.dart';
import 'package:k8s/src/model/io_k8s_apimachinery_pkg_apis_meta_v1_api_versions.dart';
import 'package:k8s/src/model/io_k8s_apimachinery_pkg_apis_meta_v1_condition.dart';
import 'package:k8s/src/model/io_k8s_apimachinery_pkg_apis_meta_v1_delete_options.dart';
import 'package:k8s/src/model/io_k8s_apimachinery_pkg_apis_meta_v1_group_version_for_discovery.dart';
import 'package:k8s/src/model/io_k8s_apimachinery_pkg_apis_meta_v1_label_selector.dart';
import 'package:k8s/src/model/io_k8s_apimachinery_pkg_apis_meta_v1_label_selector_requirement.dart';
import 'package:k8s/src/model/io_k8s_apimachinery_pkg_apis_meta_v1_list_meta.dart';
import 'package:k8s/src/model/io_k8s_apimachinery_pkg_apis_meta_v1_managed_fields_entry.dart';
import 'package:k8s/src/model/io_k8s_apimachinery_pkg_apis_meta_v1_object_meta.dart';
import 'package:k8s/src/model/io_k8s_apimachinery_pkg_apis_meta_v1_owner_reference.dart';
import 'package:k8s/src/model/io_k8s_apimachinery_pkg_apis_meta_v1_preconditions.dart';
import 'package:k8s/src/model/io_k8s_apimachinery_pkg_apis_meta_v1_server_address_by_client_cidr.dart';
import 'package:k8s/src/model/io_k8s_apimachinery_pkg_apis_meta_v1_status.dart';
import 'package:k8s/src/model/io_k8s_apimachinery_pkg_apis_meta_v1_status_cause.dart';
import 'package:k8s/src/model/io_k8s_apimachinery_pkg_apis_meta_v1_status_details.dart';
import 'package:k8s/src/model/io_k8s_apimachinery_pkg_apis_meta_v1_watch_event.dart';
import 'package:k8s/src/model/io_k8s_apimachinery_pkg_version_info.dart';
import 'package:k8s/src/model/io_k8s_kube_aggregator_pkg_apis_apiregistration_v1_api_service.dart';
import 'package:k8s/src/model/io_k8s_kube_aggregator_pkg_apis_apiregistration_v1_api_service_condition.dart';
import 'package:k8s/src/model/io_k8s_kube_aggregator_pkg_apis_apiregistration_v1_api_service_list.dart';
import 'package:k8s/src/model/io_k8s_kube_aggregator_pkg_apis_apiregistration_v1_api_service_spec.dart';
import 'package:k8s/src/model/io_k8s_kube_aggregator_pkg_apis_apiregistration_v1_api_service_status.dart';
import 'package:k8s/src/model/io_k8s_kube_aggregator_pkg_apis_apiregistration_v1_service_reference.dart';

part 'serializers.g.dart';

@SerializersFor([
  IoK8sApiAdmissionregistrationV1MutatingWebhook,
  IoK8sApiAdmissionregistrationV1MutatingWebhookConfiguration,
  IoK8sApiAdmissionregistrationV1MutatingWebhookConfigurationList,
  IoK8sApiAdmissionregistrationV1RuleWithOperations,
  IoK8sApiAdmissionregistrationV1ServiceReference,
  IoK8sApiAdmissionregistrationV1ValidatingWebhook,
  IoK8sApiAdmissionregistrationV1ValidatingWebhookConfiguration,
  IoK8sApiAdmissionregistrationV1ValidatingWebhookConfigurationList,
  IoK8sApiAdmissionregistrationV1WebhookClientConfig,
  IoK8sApiAdmissionregistrationV1alpha1MatchResources,
  IoK8sApiAdmissionregistrationV1alpha1NamedRuleWithOperations,
  IoK8sApiAdmissionregistrationV1alpha1ParamKind,
  IoK8sApiAdmissionregistrationV1alpha1ParamRef,
  IoK8sApiAdmissionregistrationV1alpha1ValidatingAdmissionPolicy,
  IoK8sApiAdmissionregistrationV1alpha1ValidatingAdmissionPolicyBinding,
  IoK8sApiAdmissionregistrationV1alpha1ValidatingAdmissionPolicyBindingList,
  IoK8sApiAdmissionregistrationV1alpha1ValidatingAdmissionPolicyBindingSpec,
  IoK8sApiAdmissionregistrationV1alpha1ValidatingAdmissionPolicyList,
  IoK8sApiAdmissionregistrationV1alpha1ValidatingAdmissionPolicySpec,
  IoK8sApiAdmissionregistrationV1alpha1Validation,
  IoK8sApiApiserverinternalV1alpha1ServerStorageVersion,
  IoK8sApiApiserverinternalV1alpha1StorageVersion,
  IoK8sApiApiserverinternalV1alpha1StorageVersionCondition,
  IoK8sApiApiserverinternalV1alpha1StorageVersionList,
  IoK8sApiApiserverinternalV1alpha1StorageVersionStatus,
  IoK8sApiAppsV1ControllerRevision,
  IoK8sApiAppsV1ControllerRevisionList,
  IoK8sApiAppsV1DaemonSet,
  IoK8sApiAppsV1DaemonSetCondition,
  IoK8sApiAppsV1DaemonSetList,
  IoK8sApiAppsV1DaemonSetSpec,
  IoK8sApiAppsV1DaemonSetStatus,
  IoK8sApiAppsV1DaemonSetUpdateStrategy,
  IoK8sApiAppsV1Deployment,
  IoK8sApiAppsV1DeploymentCondition,
  IoK8sApiAppsV1DeploymentList,
  IoK8sApiAppsV1DeploymentSpec,
  IoK8sApiAppsV1DeploymentStatus,
  IoK8sApiAppsV1DeploymentStrategy,
  IoK8sApiAppsV1ReplicaSet,
  IoK8sApiAppsV1ReplicaSetCondition,
  IoK8sApiAppsV1ReplicaSetList,
  IoK8sApiAppsV1ReplicaSetSpec,
  IoK8sApiAppsV1ReplicaSetStatus,
  IoK8sApiAppsV1RollingUpdateDaemonSet,
  IoK8sApiAppsV1RollingUpdateDeployment,
  IoK8sApiAppsV1RollingUpdateStatefulSetStrategy,
  IoK8sApiAppsV1StatefulSet,
  IoK8sApiAppsV1StatefulSetCondition,
  IoK8sApiAppsV1StatefulSetList,
  IoK8sApiAppsV1StatefulSetOrdinals,
  IoK8sApiAppsV1StatefulSetPersistentVolumeClaimRetentionPolicy,
  IoK8sApiAppsV1StatefulSetSpec,
  IoK8sApiAppsV1StatefulSetStatus,
  IoK8sApiAppsV1StatefulSetUpdateStrategy,
  IoK8sApiAuthenticationV1BoundObjectReference,
  IoK8sApiAuthenticationV1TokenRequest,
  IoK8sApiAuthenticationV1TokenRequestSpec,
  IoK8sApiAuthenticationV1TokenRequestStatus,
  IoK8sApiAuthenticationV1TokenReview,
  IoK8sApiAuthenticationV1TokenReviewSpec,
  IoK8sApiAuthenticationV1TokenReviewStatus,
  IoK8sApiAuthenticationV1UserInfo,
  IoK8sApiAuthenticationV1alpha1SelfSubjectReview,
  IoK8sApiAuthenticationV1alpha1SelfSubjectReviewStatus,
  IoK8sApiAuthorizationV1LocalSubjectAccessReview,
  IoK8sApiAuthorizationV1NonResourceAttributes,
  IoK8sApiAuthorizationV1NonResourceRule,
  IoK8sApiAuthorizationV1ResourceAttributes,
  IoK8sApiAuthorizationV1ResourceRule,
  IoK8sApiAuthorizationV1SelfSubjectAccessReview,
  IoK8sApiAuthorizationV1SelfSubjectAccessReviewSpec,
  IoK8sApiAuthorizationV1SelfSubjectRulesReview,
  IoK8sApiAuthorizationV1SelfSubjectRulesReviewSpec,
  IoK8sApiAuthorizationV1SubjectAccessReview,
  IoK8sApiAuthorizationV1SubjectAccessReviewSpec,
  IoK8sApiAuthorizationV1SubjectAccessReviewStatus,
  IoK8sApiAuthorizationV1SubjectRulesReviewStatus,
  IoK8sApiAutoscalingV1CrossVersionObjectReference,
  IoK8sApiAutoscalingV1HorizontalPodAutoscaler,
  IoK8sApiAutoscalingV1HorizontalPodAutoscalerList,
  IoK8sApiAutoscalingV1HorizontalPodAutoscalerSpec,
  IoK8sApiAutoscalingV1HorizontalPodAutoscalerStatus,
  IoK8sApiAutoscalingV1Scale,
  IoK8sApiAutoscalingV1ScaleSpec,
  IoK8sApiAutoscalingV1ScaleStatus,
  IoK8sApiAutoscalingV2ContainerResourceMetricSource,
  IoK8sApiAutoscalingV2ContainerResourceMetricStatus,
  IoK8sApiAutoscalingV2CrossVersionObjectReference,
  IoK8sApiAutoscalingV2ExternalMetricSource,
  IoK8sApiAutoscalingV2ExternalMetricStatus,
  IoK8sApiAutoscalingV2HPAScalingPolicy,
  IoK8sApiAutoscalingV2HPAScalingRules,
  IoK8sApiAutoscalingV2HorizontalPodAutoscaler,
  IoK8sApiAutoscalingV2HorizontalPodAutoscalerBehavior,
  IoK8sApiAutoscalingV2HorizontalPodAutoscalerCondition,
  IoK8sApiAutoscalingV2HorizontalPodAutoscalerList,
  IoK8sApiAutoscalingV2HorizontalPodAutoscalerSpec,
  IoK8sApiAutoscalingV2HorizontalPodAutoscalerStatus,
  IoK8sApiAutoscalingV2MetricIdentifier,
  IoK8sApiAutoscalingV2MetricSpec,
  IoK8sApiAutoscalingV2MetricStatus,
  IoK8sApiAutoscalingV2MetricTarget,
  IoK8sApiAutoscalingV2MetricValueStatus,
  IoK8sApiAutoscalingV2ObjectMetricSource,
  IoK8sApiAutoscalingV2ObjectMetricStatus,
  IoK8sApiAutoscalingV2PodsMetricSource,
  IoK8sApiAutoscalingV2PodsMetricStatus,
  IoK8sApiAutoscalingV2ResourceMetricSource,
  IoK8sApiAutoscalingV2ResourceMetricStatus,
  IoK8sApiBatchV1CronJob,
  IoK8sApiBatchV1CronJobList,
  IoK8sApiBatchV1CronJobSpec,
  IoK8sApiBatchV1CronJobStatus,
  IoK8sApiBatchV1Job,
  IoK8sApiBatchV1JobCondition,
  IoK8sApiBatchV1JobList,
  IoK8sApiBatchV1JobSpec,
  IoK8sApiBatchV1JobStatus,
  IoK8sApiBatchV1JobTemplateSpec,
  IoK8sApiBatchV1PodFailurePolicy,
  IoK8sApiBatchV1PodFailurePolicyOnExitCodesRequirement,
  IoK8sApiBatchV1PodFailurePolicyOnPodConditionsPattern,
  IoK8sApiBatchV1PodFailurePolicyRule,
  IoK8sApiBatchV1UncountedTerminatedPods,
  IoK8sApiCertificatesV1CertificateSigningRequest,
  IoK8sApiCertificatesV1CertificateSigningRequestCondition,
  IoK8sApiCertificatesV1CertificateSigningRequestList,
  IoK8sApiCertificatesV1CertificateSigningRequestSpec,
  IoK8sApiCertificatesV1CertificateSigningRequestStatus,
  IoK8sApiCoordinationV1Lease,
  IoK8sApiCoordinationV1LeaseList,
  IoK8sApiCoordinationV1LeaseSpec,
  IoK8sApiCoreV1AWSElasticBlockStoreVolumeSource,
  IoK8sApiCoreV1Affinity,
  IoK8sApiCoreV1AttachedVolume,
  IoK8sApiCoreV1AzureDiskVolumeSource,
  IoK8sApiCoreV1AzureFilePersistentVolumeSource,
  IoK8sApiCoreV1AzureFileVolumeSource,
  IoK8sApiCoreV1Binding,
  IoK8sApiCoreV1CSIPersistentVolumeSource,
  IoK8sApiCoreV1CSIVolumeSource,
  IoK8sApiCoreV1Capabilities,
  IoK8sApiCoreV1CephFSPersistentVolumeSource,
  IoK8sApiCoreV1CephFSVolumeSource,
  IoK8sApiCoreV1CinderPersistentVolumeSource,
  IoK8sApiCoreV1CinderVolumeSource,
  IoK8sApiCoreV1ClaimSource,
  IoK8sApiCoreV1ClientIPConfig,
  IoK8sApiCoreV1ComponentCondition,
  IoK8sApiCoreV1ComponentStatus,
  IoK8sApiCoreV1ComponentStatusList,
  IoK8sApiCoreV1ConfigMap,
  IoK8sApiCoreV1ConfigMapEnvSource,
  IoK8sApiCoreV1ConfigMapKeySelector,
  IoK8sApiCoreV1ConfigMapList,
  IoK8sApiCoreV1ConfigMapNodeConfigSource,
  IoK8sApiCoreV1ConfigMapProjection,
  IoK8sApiCoreV1ConfigMapVolumeSource,
  IoK8sApiCoreV1Container,
  IoK8sApiCoreV1ContainerImage,
  IoK8sApiCoreV1ContainerPort,
  IoK8sApiCoreV1ContainerState,
  IoK8sApiCoreV1ContainerStateRunning,
  IoK8sApiCoreV1ContainerStateTerminated,
  IoK8sApiCoreV1ContainerStateWaiting,
  IoK8sApiCoreV1ContainerStatus,
  IoK8sApiCoreV1DaemonEndpoint,
  IoK8sApiCoreV1DownwardAPIProjection,
  IoK8sApiCoreV1DownwardAPIVolumeFile,
  IoK8sApiCoreV1DownwardAPIVolumeSource,
  IoK8sApiCoreV1EmptyDirVolumeSource,
  IoK8sApiCoreV1EndpointAddress,
  IoK8sApiCoreV1EndpointPort,
  IoK8sApiCoreV1EndpointSubset,
  IoK8sApiCoreV1Endpoints,
  IoK8sApiCoreV1EndpointsList,
  IoK8sApiCoreV1EnvFromSource,
  IoK8sApiCoreV1EnvVar,
  IoK8sApiCoreV1EnvVarSource,
  IoK8sApiCoreV1EphemeralContainer,
  IoK8sApiCoreV1EphemeralVolumeSource,
  IoK8sApiCoreV1Event,
  IoK8sApiCoreV1EventList,
  IoK8sApiCoreV1EventSeries,
  IoK8sApiCoreV1EventSource,
  IoK8sApiCoreV1ExecAction,
  IoK8sApiCoreV1FCVolumeSource,
  IoK8sApiCoreV1FlexPersistentVolumeSource,
  IoK8sApiCoreV1FlexVolumeSource,
  IoK8sApiCoreV1FlockerVolumeSource,
  IoK8sApiCoreV1GCEPersistentDiskVolumeSource,
  IoK8sApiCoreV1GRPCAction,
  IoK8sApiCoreV1GitRepoVolumeSource,
  IoK8sApiCoreV1GlusterfsPersistentVolumeSource,
  IoK8sApiCoreV1GlusterfsVolumeSource,
  IoK8sApiCoreV1HTTPGetAction,
  IoK8sApiCoreV1HTTPHeader,
  IoK8sApiCoreV1HostAlias,
  IoK8sApiCoreV1HostPathVolumeSource,
  IoK8sApiCoreV1ISCSIPersistentVolumeSource,
  IoK8sApiCoreV1ISCSIVolumeSource,
  IoK8sApiCoreV1KeyToPath,
  IoK8sApiCoreV1Lifecycle,
  IoK8sApiCoreV1LifecycleHandler,
  IoK8sApiCoreV1LimitRange,
  IoK8sApiCoreV1LimitRangeItem,
  IoK8sApiCoreV1LimitRangeList,
  IoK8sApiCoreV1LimitRangeSpec,
  IoK8sApiCoreV1LoadBalancerIngress,
  IoK8sApiCoreV1LoadBalancerStatus,
  IoK8sApiCoreV1LocalObjectReference,
  IoK8sApiCoreV1LocalVolumeSource,
  IoK8sApiCoreV1NFSVolumeSource,
  IoK8sApiCoreV1Namespace,
  IoK8sApiCoreV1NamespaceCondition,
  IoK8sApiCoreV1NamespaceList,
  IoK8sApiCoreV1NamespaceSpec,
  IoK8sApiCoreV1NamespaceStatus,
  IoK8sApiCoreV1Node,
  IoK8sApiCoreV1NodeAddress,
  IoK8sApiCoreV1NodeAffinity,
  IoK8sApiCoreV1NodeCondition,
  IoK8sApiCoreV1NodeConfigSource,
  IoK8sApiCoreV1NodeConfigStatus,
  IoK8sApiCoreV1NodeDaemonEndpoints,
  IoK8sApiCoreV1NodeList,
  IoK8sApiCoreV1NodeSelector,
  IoK8sApiCoreV1NodeSelectorRequirement,
  IoK8sApiCoreV1NodeSelectorTerm,
  IoK8sApiCoreV1NodeSpec,
  IoK8sApiCoreV1NodeStatus,
  IoK8sApiCoreV1NodeSystemInfo,
  IoK8sApiCoreV1ObjectFieldSelector,
  IoK8sApiCoreV1ObjectReference,
  IoK8sApiCoreV1PersistentVolume,
  IoK8sApiCoreV1PersistentVolumeClaim,
  IoK8sApiCoreV1PersistentVolumeClaimCondition,
  IoK8sApiCoreV1PersistentVolumeClaimList,
  IoK8sApiCoreV1PersistentVolumeClaimSpec,
  IoK8sApiCoreV1PersistentVolumeClaimStatus,
  IoK8sApiCoreV1PersistentVolumeClaimTemplate,
  IoK8sApiCoreV1PersistentVolumeClaimVolumeSource,
  IoK8sApiCoreV1PersistentVolumeList,
  IoK8sApiCoreV1PersistentVolumeSpec,
  IoK8sApiCoreV1PersistentVolumeStatus,
  IoK8sApiCoreV1PhotonPersistentDiskVolumeSource,
  IoK8sApiCoreV1Pod,
  IoK8sApiCoreV1PodAffinity,
  IoK8sApiCoreV1PodAffinityTerm,
  IoK8sApiCoreV1PodAntiAffinity,
  IoK8sApiCoreV1PodCondition,
  IoK8sApiCoreV1PodDNSConfig,
  IoK8sApiCoreV1PodDNSConfigOption,
  IoK8sApiCoreV1PodIP,
  IoK8sApiCoreV1PodList,
  IoK8sApiCoreV1PodOS,
  IoK8sApiCoreV1PodReadinessGate,
  IoK8sApiCoreV1PodResourceClaim,
  IoK8sApiCoreV1PodSchedulingGate,
  IoK8sApiCoreV1PodSecurityContext,
  IoK8sApiCoreV1PodSpec,
  IoK8sApiCoreV1PodStatus,
  IoK8sApiCoreV1PodTemplate,
  IoK8sApiCoreV1PodTemplateList,
  IoK8sApiCoreV1PodTemplateSpec,
  IoK8sApiCoreV1PortStatus,
  IoK8sApiCoreV1PortworxVolumeSource,
  IoK8sApiCoreV1PreferredSchedulingTerm,
  IoK8sApiCoreV1Probe,
  IoK8sApiCoreV1ProjectedVolumeSource,
  IoK8sApiCoreV1QuobyteVolumeSource,
  IoK8sApiCoreV1RBDPersistentVolumeSource,
  IoK8sApiCoreV1RBDVolumeSource,
  IoK8sApiCoreV1ReplicationController,
  IoK8sApiCoreV1ReplicationControllerCondition,
  IoK8sApiCoreV1ReplicationControllerList,
  IoK8sApiCoreV1ReplicationControllerSpec,
  IoK8sApiCoreV1ReplicationControllerStatus,
  IoK8sApiCoreV1ResourceClaim,
  IoK8sApiCoreV1ResourceFieldSelector,
  IoK8sApiCoreV1ResourceQuota,
  IoK8sApiCoreV1ResourceQuotaList,
  IoK8sApiCoreV1ResourceQuotaSpec,
  IoK8sApiCoreV1ResourceQuotaStatus,
  IoK8sApiCoreV1ResourceRequirements,
  IoK8sApiCoreV1SELinuxOptions,
  IoK8sApiCoreV1ScaleIOPersistentVolumeSource,
  IoK8sApiCoreV1ScaleIOVolumeSource,
  IoK8sApiCoreV1ScopeSelector,
  IoK8sApiCoreV1ScopedResourceSelectorRequirement,
  IoK8sApiCoreV1SeccompProfile,
  IoK8sApiCoreV1Secret,
  IoK8sApiCoreV1SecretEnvSource,
  IoK8sApiCoreV1SecretKeySelector,
  IoK8sApiCoreV1SecretList,
  IoK8sApiCoreV1SecretProjection,
  IoK8sApiCoreV1SecretReference,
  IoK8sApiCoreV1SecretVolumeSource,
  IoK8sApiCoreV1SecurityContext,
  IoK8sApiCoreV1Service,
  IoK8sApiCoreV1ServiceAccount,
  IoK8sApiCoreV1ServiceAccountList,
  IoK8sApiCoreV1ServiceAccountTokenProjection,
  IoK8sApiCoreV1ServiceList,
  IoK8sApiCoreV1ServicePort,
  IoK8sApiCoreV1ServiceSpec,
  IoK8sApiCoreV1ServiceStatus,
  IoK8sApiCoreV1SessionAffinityConfig,
  IoK8sApiCoreV1StorageOSPersistentVolumeSource,
  IoK8sApiCoreV1StorageOSVolumeSource,
  IoK8sApiCoreV1Sysctl,
  IoK8sApiCoreV1TCPSocketAction,
  IoK8sApiCoreV1Taint,
  IoK8sApiCoreV1Toleration,
  IoK8sApiCoreV1TopologySelectorLabelRequirement,
  IoK8sApiCoreV1TopologySelectorTerm,
  IoK8sApiCoreV1TopologySpreadConstraint,
  IoK8sApiCoreV1TypedLocalObjectReference,
  IoK8sApiCoreV1TypedObjectReference,
  IoK8sApiCoreV1Volume,
  IoK8sApiCoreV1VolumeDevice,
  IoK8sApiCoreV1VolumeMount,
  IoK8sApiCoreV1VolumeNodeAffinity,
  IoK8sApiCoreV1VolumeProjection,
  IoK8sApiCoreV1VsphereVirtualDiskVolumeSource,
  IoK8sApiCoreV1WeightedPodAffinityTerm,
  IoK8sApiCoreV1WindowsSecurityContextOptions,
  IoK8sApiDiscoveryV1Endpoint,
  IoK8sApiDiscoveryV1EndpointConditions,
  IoK8sApiDiscoveryV1EndpointHints,
  IoK8sApiDiscoveryV1EndpointPort,
  IoK8sApiDiscoveryV1EndpointSlice,
  IoK8sApiDiscoveryV1EndpointSliceList,
  IoK8sApiDiscoveryV1ForZone,
  IoK8sApiEventsV1Event,
  IoK8sApiEventsV1EventList,
  IoK8sApiEventsV1EventSeries,
  IoK8sApiFlowcontrolV1beta2FlowDistinguisherMethod,
  IoK8sApiFlowcontrolV1beta2FlowSchema,
  IoK8sApiFlowcontrolV1beta2FlowSchemaCondition,
  IoK8sApiFlowcontrolV1beta2FlowSchemaList,
  IoK8sApiFlowcontrolV1beta2FlowSchemaSpec,
  IoK8sApiFlowcontrolV1beta2FlowSchemaStatus,
  IoK8sApiFlowcontrolV1beta2GroupSubject,
  IoK8sApiFlowcontrolV1beta2LimitResponse,
  IoK8sApiFlowcontrolV1beta2LimitedPriorityLevelConfiguration,
  IoK8sApiFlowcontrolV1beta2NonResourcePolicyRule,
  IoK8sApiFlowcontrolV1beta2PolicyRulesWithSubjects,
  IoK8sApiFlowcontrolV1beta2PriorityLevelConfiguration,
  IoK8sApiFlowcontrolV1beta2PriorityLevelConfigurationCondition,
  IoK8sApiFlowcontrolV1beta2PriorityLevelConfigurationList,
  IoK8sApiFlowcontrolV1beta2PriorityLevelConfigurationReference,
  IoK8sApiFlowcontrolV1beta2PriorityLevelConfigurationSpec,
  IoK8sApiFlowcontrolV1beta2PriorityLevelConfigurationStatus,
  IoK8sApiFlowcontrolV1beta2QueuingConfiguration,
  IoK8sApiFlowcontrolV1beta2ResourcePolicyRule,
  IoK8sApiFlowcontrolV1beta2ServiceAccountSubject,
  IoK8sApiFlowcontrolV1beta2Subject,
  IoK8sApiFlowcontrolV1beta2UserSubject,
  IoK8sApiFlowcontrolV1beta3FlowDistinguisherMethod,
  IoK8sApiFlowcontrolV1beta3FlowSchema,
  IoK8sApiFlowcontrolV1beta3FlowSchemaCondition,
  IoK8sApiFlowcontrolV1beta3FlowSchemaList,
  IoK8sApiFlowcontrolV1beta3FlowSchemaSpec,
  IoK8sApiFlowcontrolV1beta3FlowSchemaStatus,
  IoK8sApiFlowcontrolV1beta3GroupSubject,
  IoK8sApiFlowcontrolV1beta3LimitResponse,
  IoK8sApiFlowcontrolV1beta3LimitedPriorityLevelConfiguration,
  IoK8sApiFlowcontrolV1beta3NonResourcePolicyRule,
  IoK8sApiFlowcontrolV1beta3PolicyRulesWithSubjects,
  IoK8sApiFlowcontrolV1beta3PriorityLevelConfiguration,
  IoK8sApiFlowcontrolV1beta3PriorityLevelConfigurationCondition,
  IoK8sApiFlowcontrolV1beta3PriorityLevelConfigurationList,
  IoK8sApiFlowcontrolV1beta3PriorityLevelConfigurationReference,
  IoK8sApiFlowcontrolV1beta3PriorityLevelConfigurationSpec,
  IoK8sApiFlowcontrolV1beta3PriorityLevelConfigurationStatus,
  IoK8sApiFlowcontrolV1beta3QueuingConfiguration,
  IoK8sApiFlowcontrolV1beta3ResourcePolicyRule,
  IoK8sApiFlowcontrolV1beta3ServiceAccountSubject,
  IoK8sApiFlowcontrolV1beta3Subject,
  IoK8sApiFlowcontrolV1beta3UserSubject,
  IoK8sApiNetworkingV1HTTPIngressPath,
  IoK8sApiNetworkingV1HTTPIngressRuleValue,
  IoK8sApiNetworkingV1IPBlock,
  IoK8sApiNetworkingV1Ingress,
  IoK8sApiNetworkingV1IngressBackend,
  IoK8sApiNetworkingV1IngressClass,
  IoK8sApiNetworkingV1IngressClassList,
  IoK8sApiNetworkingV1IngressClassParametersReference,
  IoK8sApiNetworkingV1IngressClassSpec,
  IoK8sApiNetworkingV1IngressList,
  IoK8sApiNetworkingV1IngressLoadBalancerIngress,
  IoK8sApiNetworkingV1IngressLoadBalancerStatus,
  IoK8sApiNetworkingV1IngressPortStatus,
  IoK8sApiNetworkingV1IngressRule,
  IoK8sApiNetworkingV1IngressServiceBackend,
  IoK8sApiNetworkingV1IngressSpec,
  IoK8sApiNetworkingV1IngressStatus,
  IoK8sApiNetworkingV1IngressTLS,
  IoK8sApiNetworkingV1NetworkPolicy,
  IoK8sApiNetworkingV1NetworkPolicyEgressRule,
  IoK8sApiNetworkingV1NetworkPolicyIngressRule,
  IoK8sApiNetworkingV1NetworkPolicyList,
  IoK8sApiNetworkingV1NetworkPolicyPeer,
  IoK8sApiNetworkingV1NetworkPolicyPort,
  IoK8sApiNetworkingV1NetworkPolicySpec,
  IoK8sApiNetworkingV1NetworkPolicyStatus,
  IoK8sApiNetworkingV1ServiceBackendPort,
  IoK8sApiNetworkingV1alpha1ClusterCIDR,
  IoK8sApiNetworkingV1alpha1ClusterCIDRList,
  IoK8sApiNetworkingV1alpha1ClusterCIDRSpec,
  IoK8sApiNodeV1Overhead,
  IoK8sApiNodeV1RuntimeClass,
  IoK8sApiNodeV1RuntimeClassList,
  IoK8sApiNodeV1Scheduling,
  IoK8sApiPolicyV1Eviction,
  IoK8sApiPolicyV1PodDisruptionBudget,
  IoK8sApiPolicyV1PodDisruptionBudgetList,
  IoK8sApiPolicyV1PodDisruptionBudgetSpec,
  IoK8sApiPolicyV1PodDisruptionBudgetStatus,
  IoK8sApiRbacV1AggregationRule,
  IoK8sApiRbacV1ClusterRole,
  IoK8sApiRbacV1ClusterRoleBinding,
  IoK8sApiRbacV1ClusterRoleBindingList,
  IoK8sApiRbacV1ClusterRoleList,
  IoK8sApiRbacV1PolicyRule,
  IoK8sApiRbacV1Role,
  IoK8sApiRbacV1RoleBinding,
  IoK8sApiRbacV1RoleBindingList,
  IoK8sApiRbacV1RoleList,
  IoK8sApiRbacV1RoleRef,
  IoK8sApiRbacV1Subject,
  IoK8sApiResourceV1alpha1AllocationResult,
  IoK8sApiResourceV1alpha1PodScheduling,
  IoK8sApiResourceV1alpha1PodSchedulingList,
  IoK8sApiResourceV1alpha1PodSchedulingSpec,
  IoK8sApiResourceV1alpha1PodSchedulingStatus,
  IoK8sApiResourceV1alpha1ResourceClaim,
  IoK8sApiResourceV1alpha1ResourceClaimConsumerReference,
  IoK8sApiResourceV1alpha1ResourceClaimList,
  IoK8sApiResourceV1alpha1ResourceClaimParametersReference,
  IoK8sApiResourceV1alpha1ResourceClaimSchedulingStatus,
  IoK8sApiResourceV1alpha1ResourceClaimSpec,
  IoK8sApiResourceV1alpha1ResourceClaimStatus,
  IoK8sApiResourceV1alpha1ResourceClaimTemplate,
  IoK8sApiResourceV1alpha1ResourceClaimTemplateList,
  IoK8sApiResourceV1alpha1ResourceClaimTemplateSpec,
  IoK8sApiResourceV1alpha1ResourceClass,
  IoK8sApiResourceV1alpha1ResourceClassList,
  IoK8sApiResourceV1alpha1ResourceClassParametersReference,
  IoK8sApiSchedulingV1PriorityClass,
  IoK8sApiSchedulingV1PriorityClassList,
  IoK8sApiStorageV1CSIDriver,
  IoK8sApiStorageV1CSIDriverList,
  IoK8sApiStorageV1CSIDriverSpec,
  IoK8sApiStorageV1CSINode,
  IoK8sApiStorageV1CSINodeDriver,
  IoK8sApiStorageV1CSINodeList,
  IoK8sApiStorageV1CSINodeSpec,
  IoK8sApiStorageV1CSIStorageCapacity,
  IoK8sApiStorageV1CSIStorageCapacityList,
  IoK8sApiStorageV1StorageClass,
  IoK8sApiStorageV1StorageClassList,
  IoK8sApiStorageV1TokenRequest,
  IoK8sApiStorageV1VolumeAttachment,
  IoK8sApiStorageV1VolumeAttachmentList,
  IoK8sApiStorageV1VolumeAttachmentSource,
  IoK8sApiStorageV1VolumeAttachmentSpec,
  IoK8sApiStorageV1VolumeAttachmentStatus,
  IoK8sApiStorageV1VolumeError,
  IoK8sApiStorageV1VolumeNodeResources,
  IoK8sApiStorageV1beta1CSIStorageCapacity,
  IoK8sApiStorageV1beta1CSIStorageCapacityList,
  IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceColumnDefinition,
  IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceConversion,
  IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceDefinition,
  IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceDefinitionCondition,
  IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceDefinitionList,
  IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceDefinitionNames,
  IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceDefinitionSpec,
  IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceDefinitionStatus,
  IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceDefinitionVersion,
  IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceSubresourceScale,
  IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceSubresources,
  IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceValidation,
  IoK8sApiextensionsApiserverPkgApisApiextensionsV1ExternalDocumentation,
  IoK8sApiextensionsApiserverPkgApisApiextensionsV1JSONSchemaProps,
  IoK8sApiextensionsApiserverPkgApisApiextensionsV1ServiceReference,
  IoK8sApiextensionsApiserverPkgApisApiextensionsV1ValidationRule,
  IoK8sApiextensionsApiserverPkgApisApiextensionsV1WebhookClientConfig,
  IoK8sApiextensionsApiserverPkgApisApiextensionsV1WebhookConversion,
  IoK8sApimachineryPkgApisMetaV1APIGroup,
  IoK8sApimachineryPkgApisMetaV1APIGroupList,
  IoK8sApimachineryPkgApisMetaV1APIResource,
  IoK8sApimachineryPkgApisMetaV1APIResourceList,
  IoK8sApimachineryPkgApisMetaV1APIVersions,
  IoK8sApimachineryPkgApisMetaV1Condition,
  IoK8sApimachineryPkgApisMetaV1DeleteOptions,
  IoK8sApimachineryPkgApisMetaV1GroupVersionForDiscovery,
  IoK8sApimachineryPkgApisMetaV1LabelSelector,
  IoK8sApimachineryPkgApisMetaV1LabelSelectorRequirement,
  IoK8sApimachineryPkgApisMetaV1ListMeta,
  IoK8sApimachineryPkgApisMetaV1ManagedFieldsEntry,
  IoK8sApimachineryPkgApisMetaV1ObjectMeta,
  IoK8sApimachineryPkgApisMetaV1OwnerReference,
  IoK8sApimachineryPkgApisMetaV1Preconditions,
  IoK8sApimachineryPkgApisMetaV1ServerAddressByClientCIDR,
  IoK8sApimachineryPkgApisMetaV1Status,
  IoK8sApimachineryPkgApisMetaV1StatusCause,
  IoK8sApimachineryPkgApisMetaV1StatusDetails,
  IoK8sApimachineryPkgApisMetaV1WatchEvent,
  IoK8sApimachineryPkgVersionInfo,
  IoK8sKubeAggregatorPkgApisApiregistrationV1APIService,
  IoK8sKubeAggregatorPkgApisApiregistrationV1APIServiceCondition,
  IoK8sKubeAggregatorPkgApisApiregistrationV1APIServiceList,
  IoK8sKubeAggregatorPkgApisApiregistrationV1APIServiceSpec,
  IoK8sKubeAggregatorPkgApisApiregistrationV1APIServiceStatus,
  IoK8sKubeAggregatorPkgApisApiregistrationV1ServiceReference,
])
Serializers serializers = (_$serializers.toBuilder()
      ..add(const OneOfSerializer())
      ..add(const AnyOfSerializer())
      ..add(const DateSerializer())
      ..add(Iso8601DateTimeSerializer()))
    .build();

Serializers standardSerializers =
    (serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
