import 'package:k8s/src/model/admissionregistration_v1_service_reference.dart';
import 'package:k8s/src/model/admissionregistration_v1_webhook_client_config.dart';
import 'package:k8s/src/model/apiextensions_v1_service_reference.dart';
import 'package:k8s/src/model/apiextensions_v1_webhook_client_config.dart';
import 'package:k8s/src/model/apiregistration_v1_service_reference.dart';
import 'package:k8s/src/model/authentication_v1_token_request.dart';
import 'package:k8s/src/model/core_v1_endpoint_port.dart';
import 'package:k8s/src/model/core_v1_event.dart';
import 'package:k8s/src/model/core_v1_event_list.dart';
import 'package:k8s/src/model/core_v1_event_series.dart';
import 'package:k8s/src/model/discovery_v1_endpoint_port.dart';
import 'package:k8s/src/model/events_v1_event.dart';
import 'package:k8s/src/model/events_v1_event_list.dart';
import 'package:k8s/src/model/events_v1_event_series.dart';
import 'package:k8s/src/model/storage_v1_token_request.dart';
import 'package:k8s/src/model/v1_api_group.dart';
import 'package:k8s/src/model/v1_api_group_list.dart';
import 'package:k8s/src/model/v1_api_resource.dart';
import 'package:k8s/src/model/v1_api_resource_list.dart';
import 'package:k8s/src/model/v1_api_service.dart';
import 'package:k8s/src/model/v1_api_service_condition.dart';
import 'package:k8s/src/model/v1_api_service_list.dart';
import 'package:k8s/src/model/v1_api_service_spec.dart';
import 'package:k8s/src/model/v1_api_service_status.dart';
import 'package:k8s/src/model/v1_api_versions.dart';
import 'package:k8s/src/model/v1_aws_elastic_block_store_volume_source.dart';
import 'package:k8s/src/model/v1_affinity.dart';
import 'package:k8s/src/model/v1_aggregation_rule.dart';
import 'package:k8s/src/model/v1_attached_volume.dart';
import 'package:k8s/src/model/v1_azure_disk_volume_source.dart';
import 'package:k8s/src/model/v1_azure_file_persistent_volume_source.dart';
import 'package:k8s/src/model/v1_azure_file_volume_source.dart';
import 'package:k8s/src/model/v1_binding.dart';
import 'package:k8s/src/model/v1_bound_object_reference.dart';
import 'package:k8s/src/model/v1_csi_driver.dart';
import 'package:k8s/src/model/v1_csi_driver_list.dart';
import 'package:k8s/src/model/v1_csi_driver_spec.dart';
import 'package:k8s/src/model/v1_csi_node.dart';
import 'package:k8s/src/model/v1_csi_node_driver.dart';
import 'package:k8s/src/model/v1_csi_node_list.dart';
import 'package:k8s/src/model/v1_csi_node_spec.dart';
import 'package:k8s/src/model/v1_csi_persistent_volume_source.dart';
import 'package:k8s/src/model/v1_csi_storage_capacity.dart';
import 'package:k8s/src/model/v1_csi_storage_capacity_list.dart';
import 'package:k8s/src/model/v1_csi_volume_source.dart';
import 'package:k8s/src/model/v1_capabilities.dart';
import 'package:k8s/src/model/v1_ceph_fs_persistent_volume_source.dart';
import 'package:k8s/src/model/v1_ceph_fs_volume_source.dart';
import 'package:k8s/src/model/v1_certificate_signing_request.dart';
import 'package:k8s/src/model/v1_certificate_signing_request_condition.dart';
import 'package:k8s/src/model/v1_certificate_signing_request_list.dart';
import 'package:k8s/src/model/v1_certificate_signing_request_spec.dart';
import 'package:k8s/src/model/v1_certificate_signing_request_status.dart';
import 'package:k8s/src/model/v1_cinder_persistent_volume_source.dart';
import 'package:k8s/src/model/v1_cinder_volume_source.dart';
import 'package:k8s/src/model/v1_claim_source.dart';
import 'package:k8s/src/model/v1_client_ip_config.dart';
import 'package:k8s/src/model/v1_cluster_role.dart';
import 'package:k8s/src/model/v1_cluster_role_binding.dart';
import 'package:k8s/src/model/v1_cluster_role_binding_list.dart';
import 'package:k8s/src/model/v1_cluster_role_list.dart';
import 'package:k8s/src/model/v1_component_condition.dart';
import 'package:k8s/src/model/v1_component_status.dart';
import 'package:k8s/src/model/v1_component_status_list.dart';
import 'package:k8s/src/model/v1_condition.dart';
import 'package:k8s/src/model/v1_config_map.dart';
import 'package:k8s/src/model/v1_config_map_env_source.dart';
import 'package:k8s/src/model/v1_config_map_key_selector.dart';
import 'package:k8s/src/model/v1_config_map_list.dart';
import 'package:k8s/src/model/v1_config_map_node_config_source.dart';
import 'package:k8s/src/model/v1_config_map_projection.dart';
import 'package:k8s/src/model/v1_config_map_volume_source.dart';
import 'package:k8s/src/model/v1_container.dart';
import 'package:k8s/src/model/v1_container_image.dart';
import 'package:k8s/src/model/v1_container_port.dart';
import 'package:k8s/src/model/v1_container_resize_policy.dart';
import 'package:k8s/src/model/v1_container_state.dart';
import 'package:k8s/src/model/v1_container_state_running.dart';
import 'package:k8s/src/model/v1_container_state_terminated.dart';
import 'package:k8s/src/model/v1_container_state_waiting.dart';
import 'package:k8s/src/model/v1_container_status.dart';
import 'package:k8s/src/model/v1_controller_revision.dart';
import 'package:k8s/src/model/v1_controller_revision_list.dart';
import 'package:k8s/src/model/v1_cron_job.dart';
import 'package:k8s/src/model/v1_cron_job_list.dart';
import 'package:k8s/src/model/v1_cron_job_spec.dart';
import 'package:k8s/src/model/v1_cron_job_status.dart';
import 'package:k8s/src/model/v1_cross_version_object_reference.dart';
import 'package:k8s/src/model/v1_custom_resource_column_definition.dart';
import 'package:k8s/src/model/v1_custom_resource_conversion.dart';
import 'package:k8s/src/model/v1_custom_resource_definition.dart';
import 'package:k8s/src/model/v1_custom_resource_definition_condition.dart';
import 'package:k8s/src/model/v1_custom_resource_definition_list.dart';
import 'package:k8s/src/model/v1_custom_resource_definition_names.dart';
import 'package:k8s/src/model/v1_custom_resource_definition_spec.dart';
import 'package:k8s/src/model/v1_custom_resource_definition_status.dart';
import 'package:k8s/src/model/v1_custom_resource_definition_version.dart';
import 'package:k8s/src/model/v1_custom_resource_subresource_scale.dart';
import 'package:k8s/src/model/v1_custom_resource_subresources.dart';
import 'package:k8s/src/model/v1_custom_resource_validation.dart';
import 'package:k8s/src/model/v1_daemon_endpoint.dart';
import 'package:k8s/src/model/v1_daemon_set.dart';
import 'package:k8s/src/model/v1_daemon_set_condition.dart';
import 'package:k8s/src/model/v1_daemon_set_list.dart';
import 'package:k8s/src/model/v1_daemon_set_spec.dart';
import 'package:k8s/src/model/v1_daemon_set_status.dart';
import 'package:k8s/src/model/v1_daemon_set_update_strategy.dart';
import 'package:k8s/src/model/v1_delete_options.dart';
import 'package:k8s/src/model/v1_deployment.dart';
import 'package:k8s/src/model/v1_deployment_condition.dart';
import 'package:k8s/src/model/v1_deployment_list.dart';
import 'package:k8s/src/model/v1_deployment_spec.dart';
import 'package:k8s/src/model/v1_deployment_status.dart';
import 'package:k8s/src/model/v1_deployment_strategy.dart';
import 'package:k8s/src/model/v1_downward_api_projection.dart';
import 'package:k8s/src/model/v1_downward_api_volume_file.dart';
import 'package:k8s/src/model/v1_downward_api_volume_source.dart';
import 'package:k8s/src/model/v1_empty_dir_volume_source.dart';
import 'package:k8s/src/model/v1_endpoint.dart';
import 'package:k8s/src/model/v1_endpoint_address.dart';
import 'package:k8s/src/model/v1_endpoint_conditions.dart';
import 'package:k8s/src/model/v1_endpoint_hints.dart';
import 'package:k8s/src/model/v1_endpoint_slice.dart';
import 'package:k8s/src/model/v1_endpoint_slice_list.dart';
import 'package:k8s/src/model/v1_endpoint_subset.dart';
import 'package:k8s/src/model/v1_endpoints.dart';
import 'package:k8s/src/model/v1_endpoints_list.dart';
import 'package:k8s/src/model/v1_env_from_source.dart';
import 'package:k8s/src/model/v1_env_var.dart';
import 'package:k8s/src/model/v1_env_var_source.dart';
import 'package:k8s/src/model/v1_ephemeral_container.dart';
import 'package:k8s/src/model/v1_ephemeral_volume_source.dart';
import 'package:k8s/src/model/v1_event_source.dart';
import 'package:k8s/src/model/v1_eviction.dart';
import 'package:k8s/src/model/v1_exec_action.dart';
import 'package:k8s/src/model/v1_external_documentation.dart';
import 'package:k8s/src/model/v1_fc_volume_source.dart';
import 'package:k8s/src/model/v1_flex_persistent_volume_source.dart';
import 'package:k8s/src/model/v1_flex_volume_source.dart';
import 'package:k8s/src/model/v1_flocker_volume_source.dart';
import 'package:k8s/src/model/v1_for_zone.dart';
import 'package:k8s/src/model/v1_gce_persistent_disk_volume_source.dart';
import 'package:k8s/src/model/v1_grpc_action.dart';
import 'package:k8s/src/model/v1_git_repo_volume_source.dart';
import 'package:k8s/src/model/v1_glusterfs_persistent_volume_source.dart';
import 'package:k8s/src/model/v1_glusterfs_volume_source.dart';
import 'package:k8s/src/model/v1_group_version_for_discovery.dart';
import 'package:k8s/src/model/v1_http_get_action.dart';
import 'package:k8s/src/model/v1_http_header.dart';
import 'package:k8s/src/model/v1_http_ingress_path.dart';
import 'package:k8s/src/model/v1_http_ingress_rule_value.dart';
import 'package:k8s/src/model/v1_horizontal_pod_autoscaler.dart';
import 'package:k8s/src/model/v1_horizontal_pod_autoscaler_list.dart';
import 'package:k8s/src/model/v1_horizontal_pod_autoscaler_spec.dart';
import 'package:k8s/src/model/v1_horizontal_pod_autoscaler_status.dart';
import 'package:k8s/src/model/v1_host_alias.dart';
import 'package:k8s/src/model/v1_host_path_volume_source.dart';
import 'package:k8s/src/model/v1_ip_block.dart';
import 'package:k8s/src/model/v1_iscsi_persistent_volume_source.dart';
import 'package:k8s/src/model/v1_iscsi_volume_source.dart';
import 'package:k8s/src/model/v1_ingress.dart';
import 'package:k8s/src/model/v1_ingress_backend.dart';
import 'package:k8s/src/model/v1_ingress_class.dart';
import 'package:k8s/src/model/v1_ingress_class_list.dart';
import 'package:k8s/src/model/v1_ingress_class_parameters_reference.dart';
import 'package:k8s/src/model/v1_ingress_class_spec.dart';
import 'package:k8s/src/model/v1_ingress_list.dart';
import 'package:k8s/src/model/v1_ingress_load_balancer_ingress.dart';
import 'package:k8s/src/model/v1_ingress_load_balancer_status.dart';
import 'package:k8s/src/model/v1_ingress_port_status.dart';
import 'package:k8s/src/model/v1_ingress_rule.dart';
import 'package:k8s/src/model/v1_ingress_service_backend.dart';
import 'package:k8s/src/model/v1_ingress_spec.dart';
import 'package:k8s/src/model/v1_ingress_status.dart';
import 'package:k8s/src/model/v1_ingress_tls.dart';
import 'package:k8s/src/model/v1_json_schema_props.dart';
import 'package:k8s/src/model/v1_job.dart';
import 'package:k8s/src/model/v1_job_condition.dart';
import 'package:k8s/src/model/v1_job_list.dart';
import 'package:k8s/src/model/v1_job_spec.dart';
import 'package:k8s/src/model/v1_job_status.dart';
import 'package:k8s/src/model/v1_job_template_spec.dart';
import 'package:k8s/src/model/v1_key_to_path.dart';
import 'package:k8s/src/model/v1_label_selector.dart';
import 'package:k8s/src/model/v1_label_selector_requirement.dart';
import 'package:k8s/src/model/v1_lease.dart';
import 'package:k8s/src/model/v1_lease_list.dart';
import 'package:k8s/src/model/v1_lease_spec.dart';
import 'package:k8s/src/model/v1_lifecycle.dart';
import 'package:k8s/src/model/v1_lifecycle_handler.dart';
import 'package:k8s/src/model/v1_limit_range.dart';
import 'package:k8s/src/model/v1_limit_range_item.dart';
import 'package:k8s/src/model/v1_limit_range_list.dart';
import 'package:k8s/src/model/v1_limit_range_spec.dart';
import 'package:k8s/src/model/v1_list_meta.dart';
import 'package:k8s/src/model/v1_load_balancer_ingress.dart';
import 'package:k8s/src/model/v1_load_balancer_status.dart';
import 'package:k8s/src/model/v1_local_object_reference.dart';
import 'package:k8s/src/model/v1_local_subject_access_review.dart';
import 'package:k8s/src/model/v1_local_volume_source.dart';
import 'package:k8s/src/model/v1_managed_fields_entry.dart';
import 'package:k8s/src/model/v1_match_condition.dart';
import 'package:k8s/src/model/v1_mutating_webhook.dart';
import 'package:k8s/src/model/v1_mutating_webhook_configuration.dart';
import 'package:k8s/src/model/v1_mutating_webhook_configuration_list.dart';
import 'package:k8s/src/model/v1_nfs_volume_source.dart';
import 'package:k8s/src/model/v1_namespace.dart';
import 'package:k8s/src/model/v1_namespace_condition.dart';
import 'package:k8s/src/model/v1_namespace_list.dart';
import 'package:k8s/src/model/v1_namespace_spec.dart';
import 'package:k8s/src/model/v1_namespace_status.dart';
import 'package:k8s/src/model/v1_network_policy.dart';
import 'package:k8s/src/model/v1_network_policy_egress_rule.dart';
import 'package:k8s/src/model/v1_network_policy_ingress_rule.dart';
import 'package:k8s/src/model/v1_network_policy_list.dart';
import 'package:k8s/src/model/v1_network_policy_peer.dart';
import 'package:k8s/src/model/v1_network_policy_port.dart';
import 'package:k8s/src/model/v1_network_policy_spec.dart';
import 'package:k8s/src/model/v1_network_policy_status.dart';
import 'package:k8s/src/model/v1_node.dart';
import 'package:k8s/src/model/v1_node_address.dart';
import 'package:k8s/src/model/v1_node_affinity.dart';
import 'package:k8s/src/model/v1_node_condition.dart';
import 'package:k8s/src/model/v1_node_config_source.dart';
import 'package:k8s/src/model/v1_node_config_status.dart';
import 'package:k8s/src/model/v1_node_daemon_endpoints.dart';
import 'package:k8s/src/model/v1_node_list.dart';
import 'package:k8s/src/model/v1_node_selector.dart';
import 'package:k8s/src/model/v1_node_selector_requirement.dart';
import 'package:k8s/src/model/v1_node_selector_term.dart';
import 'package:k8s/src/model/v1_node_spec.dart';
import 'package:k8s/src/model/v1_node_status.dart';
import 'package:k8s/src/model/v1_node_system_info.dart';
import 'package:k8s/src/model/v1_non_resource_attributes.dart';
import 'package:k8s/src/model/v1_non_resource_rule.dart';
import 'package:k8s/src/model/v1_object_field_selector.dart';
import 'package:k8s/src/model/v1_object_meta.dart';
import 'package:k8s/src/model/v1_object_reference.dart';
import 'package:k8s/src/model/v1_overhead.dart';
import 'package:k8s/src/model/v1_owner_reference.dart';
import 'package:k8s/src/model/v1_persistent_volume.dart';
import 'package:k8s/src/model/v1_persistent_volume_claim.dart';
import 'package:k8s/src/model/v1_persistent_volume_claim_condition.dart';
import 'package:k8s/src/model/v1_persistent_volume_claim_list.dart';
import 'package:k8s/src/model/v1_persistent_volume_claim_spec.dart';
import 'package:k8s/src/model/v1_persistent_volume_claim_status.dart';
import 'package:k8s/src/model/v1_persistent_volume_claim_template.dart';
import 'package:k8s/src/model/v1_persistent_volume_claim_volume_source.dart';
import 'package:k8s/src/model/v1_persistent_volume_list.dart';
import 'package:k8s/src/model/v1_persistent_volume_spec.dart';
import 'package:k8s/src/model/v1_persistent_volume_status.dart';
import 'package:k8s/src/model/v1_photon_persistent_disk_volume_source.dart';
import 'package:k8s/src/model/v1_pod.dart';
import 'package:k8s/src/model/v1_pod_affinity.dart';
import 'package:k8s/src/model/v1_pod_affinity_term.dart';
import 'package:k8s/src/model/v1_pod_anti_affinity.dart';
import 'package:k8s/src/model/v1_pod_condition.dart';
import 'package:k8s/src/model/v1_pod_dns_config.dart';
import 'package:k8s/src/model/v1_pod_dns_config_option.dart';
import 'package:k8s/src/model/v1_pod_disruption_budget.dart';
import 'package:k8s/src/model/v1_pod_disruption_budget_list.dart';
import 'package:k8s/src/model/v1_pod_disruption_budget_spec.dart';
import 'package:k8s/src/model/v1_pod_disruption_budget_status.dart';
import 'package:k8s/src/model/v1_pod_failure_policy.dart';
import 'package:k8s/src/model/v1_pod_failure_policy_on_exit_codes_requirement.dart';
import 'package:k8s/src/model/v1_pod_failure_policy_on_pod_conditions_pattern.dart';
import 'package:k8s/src/model/v1_pod_failure_policy_rule.dart';
import 'package:k8s/src/model/v1_pod_ip.dart';
import 'package:k8s/src/model/v1_pod_list.dart';
import 'package:k8s/src/model/v1_pod_os.dart';
import 'package:k8s/src/model/v1_pod_readiness_gate.dart';
import 'package:k8s/src/model/v1_pod_resource_claim.dart';
import 'package:k8s/src/model/v1_pod_scheduling_gate.dart';
import 'package:k8s/src/model/v1_pod_security_context.dart';
import 'package:k8s/src/model/v1_pod_spec.dart';
import 'package:k8s/src/model/v1_pod_status.dart';
import 'package:k8s/src/model/v1_pod_template.dart';
import 'package:k8s/src/model/v1_pod_template_list.dart';
import 'package:k8s/src/model/v1_pod_template_spec.dart';
import 'package:k8s/src/model/v1_policy_rule.dart';
import 'package:k8s/src/model/v1_port_status.dart';
import 'package:k8s/src/model/v1_portworx_volume_source.dart';
import 'package:k8s/src/model/v1_preconditions.dart';
import 'package:k8s/src/model/v1_preferred_scheduling_term.dart';
import 'package:k8s/src/model/v1_priority_class.dart';
import 'package:k8s/src/model/v1_priority_class_list.dart';
import 'package:k8s/src/model/v1_probe.dart';
import 'package:k8s/src/model/v1_projected_volume_source.dart';
import 'package:k8s/src/model/v1_quobyte_volume_source.dart';
import 'package:k8s/src/model/v1_rbd_persistent_volume_source.dart';
import 'package:k8s/src/model/v1_rbd_volume_source.dart';
import 'package:k8s/src/model/v1_replica_set.dart';
import 'package:k8s/src/model/v1_replica_set_condition.dart';
import 'package:k8s/src/model/v1_replica_set_list.dart';
import 'package:k8s/src/model/v1_replica_set_spec.dart';
import 'package:k8s/src/model/v1_replica_set_status.dart';
import 'package:k8s/src/model/v1_replication_controller.dart';
import 'package:k8s/src/model/v1_replication_controller_condition.dart';
import 'package:k8s/src/model/v1_replication_controller_list.dart';
import 'package:k8s/src/model/v1_replication_controller_spec.dart';
import 'package:k8s/src/model/v1_replication_controller_status.dart';
import 'package:k8s/src/model/v1_resource_attributes.dart';
import 'package:k8s/src/model/v1_resource_claim.dart';
import 'package:k8s/src/model/v1_resource_field_selector.dart';
import 'package:k8s/src/model/v1_resource_quota.dart';
import 'package:k8s/src/model/v1_resource_quota_list.dart';
import 'package:k8s/src/model/v1_resource_quota_spec.dart';
import 'package:k8s/src/model/v1_resource_quota_status.dart';
import 'package:k8s/src/model/v1_resource_requirements.dart';
import 'package:k8s/src/model/v1_resource_rule.dart';
import 'package:k8s/src/model/v1_role.dart';
import 'package:k8s/src/model/v1_role_binding.dart';
import 'package:k8s/src/model/v1_role_binding_list.dart';
import 'package:k8s/src/model/v1_role_list.dart';
import 'package:k8s/src/model/v1_role_ref.dart';
import 'package:k8s/src/model/v1_rolling_update_daemon_set.dart';
import 'package:k8s/src/model/v1_rolling_update_deployment.dart';
import 'package:k8s/src/model/v1_rolling_update_stateful_set_strategy.dart';
import 'package:k8s/src/model/v1_rule_with_operations.dart';
import 'package:k8s/src/model/v1_runtime_class.dart';
import 'package:k8s/src/model/v1_runtime_class_list.dart';
import 'package:k8s/src/model/v1_se_linux_options.dart';
import 'package:k8s/src/model/v1_scale.dart';
import 'package:k8s/src/model/v1_scale_io_persistent_volume_source.dart';
import 'package:k8s/src/model/v1_scale_io_volume_source.dart';
import 'package:k8s/src/model/v1_scale_spec.dart';
import 'package:k8s/src/model/v1_scale_status.dart';
import 'package:k8s/src/model/v1_scheduling.dart';
import 'package:k8s/src/model/v1_scope_selector.dart';
import 'package:k8s/src/model/v1_scoped_resource_selector_requirement.dart';
import 'package:k8s/src/model/v1_seccomp_profile.dart';
import 'package:k8s/src/model/v1_secret.dart';
import 'package:k8s/src/model/v1_secret_env_source.dart';
import 'package:k8s/src/model/v1_secret_key_selector.dart';
import 'package:k8s/src/model/v1_secret_list.dart';
import 'package:k8s/src/model/v1_secret_projection.dart';
import 'package:k8s/src/model/v1_secret_reference.dart';
import 'package:k8s/src/model/v1_secret_volume_source.dart';
import 'package:k8s/src/model/v1_security_context.dart';
import 'package:k8s/src/model/v1_self_subject_access_review.dart';
import 'package:k8s/src/model/v1_self_subject_access_review_spec.dart';
import 'package:k8s/src/model/v1_self_subject_rules_review.dart';
import 'package:k8s/src/model/v1_self_subject_rules_review_spec.dart';
import 'package:k8s/src/model/v1_server_address_by_client_cidr.dart';
import 'package:k8s/src/model/v1_service.dart';
import 'package:k8s/src/model/v1_service_account.dart';
import 'package:k8s/src/model/v1_service_account_list.dart';
import 'package:k8s/src/model/v1_service_account_token_projection.dart';
import 'package:k8s/src/model/v1_service_backend_port.dart';
import 'package:k8s/src/model/v1_service_list.dart';
import 'package:k8s/src/model/v1_service_port.dart';
import 'package:k8s/src/model/v1_service_spec.dart';
import 'package:k8s/src/model/v1_service_status.dart';
import 'package:k8s/src/model/v1_session_affinity_config.dart';
import 'package:k8s/src/model/v1_stateful_set.dart';
import 'package:k8s/src/model/v1_stateful_set_condition.dart';
import 'package:k8s/src/model/v1_stateful_set_list.dart';
import 'package:k8s/src/model/v1_stateful_set_ordinals.dart';
import 'package:k8s/src/model/v1_stateful_set_persistent_volume_claim_retention_policy.dart';
import 'package:k8s/src/model/v1_stateful_set_spec.dart';
import 'package:k8s/src/model/v1_stateful_set_status.dart';
import 'package:k8s/src/model/v1_stateful_set_update_strategy.dart';
import 'package:k8s/src/model/v1_status.dart';
import 'package:k8s/src/model/v1_status_cause.dart';
import 'package:k8s/src/model/v1_status_details.dart';
import 'package:k8s/src/model/v1_storage_class.dart';
import 'package:k8s/src/model/v1_storage_class_list.dart';
import 'package:k8s/src/model/v1_storage_os_persistent_volume_source.dart';
import 'package:k8s/src/model/v1_storage_os_volume_source.dart';
import 'package:k8s/src/model/v1_subject.dart';
import 'package:k8s/src/model/v1_subject_access_review.dart';
import 'package:k8s/src/model/v1_subject_access_review_spec.dart';
import 'package:k8s/src/model/v1_subject_access_review_status.dart';
import 'package:k8s/src/model/v1_subject_rules_review_status.dart';
import 'package:k8s/src/model/v1_sysctl.dart';
import 'package:k8s/src/model/v1_tcp_socket_action.dart';
import 'package:k8s/src/model/v1_taint.dart';
import 'package:k8s/src/model/v1_token_request_spec.dart';
import 'package:k8s/src/model/v1_token_request_status.dart';
import 'package:k8s/src/model/v1_token_review.dart';
import 'package:k8s/src/model/v1_token_review_spec.dart';
import 'package:k8s/src/model/v1_token_review_status.dart';
import 'package:k8s/src/model/v1_toleration.dart';
import 'package:k8s/src/model/v1_topology_selector_label_requirement.dart';
import 'package:k8s/src/model/v1_topology_selector_term.dart';
import 'package:k8s/src/model/v1_topology_spread_constraint.dart';
import 'package:k8s/src/model/v1_typed_local_object_reference.dart';
import 'package:k8s/src/model/v1_typed_object_reference.dart';
import 'package:k8s/src/model/v1_uncounted_terminated_pods.dart';
import 'package:k8s/src/model/v1_user_info.dart';
import 'package:k8s/src/model/v1_validating_webhook.dart';
import 'package:k8s/src/model/v1_validating_webhook_configuration.dart';
import 'package:k8s/src/model/v1_validating_webhook_configuration_list.dart';
import 'package:k8s/src/model/v1_validation_rule.dart';
import 'package:k8s/src/model/v1_volume.dart';
import 'package:k8s/src/model/v1_volume_attachment.dart';
import 'package:k8s/src/model/v1_volume_attachment_list.dart';
import 'package:k8s/src/model/v1_volume_attachment_source.dart';
import 'package:k8s/src/model/v1_volume_attachment_spec.dart';
import 'package:k8s/src/model/v1_volume_attachment_status.dart';
import 'package:k8s/src/model/v1_volume_device.dart';
import 'package:k8s/src/model/v1_volume_error.dart';
import 'package:k8s/src/model/v1_volume_mount.dart';
import 'package:k8s/src/model/v1_volume_node_affinity.dart';
import 'package:k8s/src/model/v1_volume_node_resources.dart';
import 'package:k8s/src/model/v1_volume_projection.dart';
import 'package:k8s/src/model/v1_vsphere_virtual_disk_volume_source.dart';
import 'package:k8s/src/model/v1_watch_event.dart';
import 'package:k8s/src/model/v1_webhook_conversion.dart';
import 'package:k8s/src/model/v1_weighted_pod_affinity_term.dart';
import 'package:k8s/src/model/v1_windows_security_context_options.dart';
import 'package:k8s/src/model/v1alpha1_audit_annotation.dart';
import 'package:k8s/src/model/v1alpha1_cluster_cidr.dart';
import 'package:k8s/src/model/v1alpha1_cluster_cidr_list.dart';
import 'package:k8s/src/model/v1alpha1_cluster_cidr_spec.dart';
import 'package:k8s/src/model/v1alpha1_cluster_trust_bundle.dart';
import 'package:k8s/src/model/v1alpha1_cluster_trust_bundle_list.dart';
import 'package:k8s/src/model/v1alpha1_cluster_trust_bundle_spec.dart';
import 'package:k8s/src/model/v1alpha1_expression_warning.dart';
import 'package:k8s/src/model/v1alpha1_ip_address.dart';
import 'package:k8s/src/model/v1alpha1_ip_address_list.dart';
import 'package:k8s/src/model/v1alpha1_ip_address_spec.dart';
import 'package:k8s/src/model/v1alpha1_match_condition.dart';
import 'package:k8s/src/model/v1alpha1_match_resources.dart';
import 'package:k8s/src/model/v1alpha1_named_rule_with_operations.dart';
import 'package:k8s/src/model/v1alpha1_param_kind.dart';
import 'package:k8s/src/model/v1alpha1_param_ref.dart';
import 'package:k8s/src/model/v1alpha1_parent_reference.dart';
import 'package:k8s/src/model/v1alpha1_self_subject_review.dart';
import 'package:k8s/src/model/v1alpha1_self_subject_review_status.dart';
import 'package:k8s/src/model/v1alpha1_server_storage_version.dart';
import 'package:k8s/src/model/v1alpha1_storage_version.dart';
import 'package:k8s/src/model/v1alpha1_storage_version_condition.dart';
import 'package:k8s/src/model/v1alpha1_storage_version_list.dart';
import 'package:k8s/src/model/v1alpha1_storage_version_status.dart';
import 'package:k8s/src/model/v1alpha1_type_checking.dart';
import 'package:k8s/src/model/v1alpha1_validating_admission_policy.dart';
import 'package:k8s/src/model/v1alpha1_validating_admission_policy_binding.dart';
import 'package:k8s/src/model/v1alpha1_validating_admission_policy_binding_list.dart';
import 'package:k8s/src/model/v1alpha1_validating_admission_policy_binding_spec.dart';
import 'package:k8s/src/model/v1alpha1_validating_admission_policy_list.dart';
import 'package:k8s/src/model/v1alpha1_validating_admission_policy_spec.dart';
import 'package:k8s/src/model/v1alpha1_validating_admission_policy_status.dart';
import 'package:k8s/src/model/v1alpha1_validation.dart';
import 'package:k8s/src/model/v1alpha2_allocation_result.dart';
import 'package:k8s/src/model/v1alpha2_pod_scheduling_context.dart';
import 'package:k8s/src/model/v1alpha2_pod_scheduling_context_list.dart';
import 'package:k8s/src/model/v1alpha2_pod_scheduling_context_spec.dart';
import 'package:k8s/src/model/v1alpha2_pod_scheduling_context_status.dart';
import 'package:k8s/src/model/v1alpha2_resource_claim.dart';
import 'package:k8s/src/model/v1alpha2_resource_claim_consumer_reference.dart';
import 'package:k8s/src/model/v1alpha2_resource_claim_list.dart';
import 'package:k8s/src/model/v1alpha2_resource_claim_parameters_reference.dart';
import 'package:k8s/src/model/v1alpha2_resource_claim_scheduling_status.dart';
import 'package:k8s/src/model/v1alpha2_resource_claim_spec.dart';
import 'package:k8s/src/model/v1alpha2_resource_claim_status.dart';
import 'package:k8s/src/model/v1alpha2_resource_claim_template.dart';
import 'package:k8s/src/model/v1alpha2_resource_claim_template_list.dart';
import 'package:k8s/src/model/v1alpha2_resource_claim_template_spec.dart';
import 'package:k8s/src/model/v1alpha2_resource_class.dart';
import 'package:k8s/src/model/v1alpha2_resource_class_list.dart';
import 'package:k8s/src/model/v1alpha2_resource_class_parameters_reference.dart';
import 'package:k8s/src/model/v1alpha2_resource_handle.dart';
import 'package:k8s/src/model/v1beta1_self_subject_review.dart';
import 'package:k8s/src/model/v1beta1_self_subject_review_status.dart';
import 'package:k8s/src/model/v1beta2_flow_distinguisher_method.dart';
import 'package:k8s/src/model/v1beta2_flow_schema.dart';
import 'package:k8s/src/model/v1beta2_flow_schema_condition.dart';
import 'package:k8s/src/model/v1beta2_flow_schema_list.dart';
import 'package:k8s/src/model/v1beta2_flow_schema_spec.dart';
import 'package:k8s/src/model/v1beta2_flow_schema_status.dart';
import 'package:k8s/src/model/v1beta2_group_subject.dart';
import 'package:k8s/src/model/v1beta2_limit_response.dart';
import 'package:k8s/src/model/v1beta2_limited_priority_level_configuration.dart';
import 'package:k8s/src/model/v1beta2_non_resource_policy_rule.dart';
import 'package:k8s/src/model/v1beta2_policy_rules_with_subjects.dart';
import 'package:k8s/src/model/v1beta2_priority_level_configuration.dart';
import 'package:k8s/src/model/v1beta2_priority_level_configuration_condition.dart';
import 'package:k8s/src/model/v1beta2_priority_level_configuration_list.dart';
import 'package:k8s/src/model/v1beta2_priority_level_configuration_reference.dart';
import 'package:k8s/src/model/v1beta2_priority_level_configuration_spec.dart';
import 'package:k8s/src/model/v1beta2_priority_level_configuration_status.dart';
import 'package:k8s/src/model/v1beta2_queuing_configuration.dart';
import 'package:k8s/src/model/v1beta2_resource_policy_rule.dart';
import 'package:k8s/src/model/v1beta2_service_account_subject.dart';
import 'package:k8s/src/model/v1beta2_subject.dart';
import 'package:k8s/src/model/v1beta2_user_subject.dart';
import 'package:k8s/src/model/v1beta3_flow_distinguisher_method.dart';
import 'package:k8s/src/model/v1beta3_flow_schema.dart';
import 'package:k8s/src/model/v1beta3_flow_schema_condition.dart';
import 'package:k8s/src/model/v1beta3_flow_schema_list.dart';
import 'package:k8s/src/model/v1beta3_flow_schema_spec.dart';
import 'package:k8s/src/model/v1beta3_flow_schema_status.dart';
import 'package:k8s/src/model/v1beta3_group_subject.dart';
import 'package:k8s/src/model/v1beta3_limit_response.dart';
import 'package:k8s/src/model/v1beta3_limited_priority_level_configuration.dart';
import 'package:k8s/src/model/v1beta3_non_resource_policy_rule.dart';
import 'package:k8s/src/model/v1beta3_policy_rules_with_subjects.dart';
import 'package:k8s/src/model/v1beta3_priority_level_configuration.dart';
import 'package:k8s/src/model/v1beta3_priority_level_configuration_condition.dart';
import 'package:k8s/src/model/v1beta3_priority_level_configuration_list.dart';
import 'package:k8s/src/model/v1beta3_priority_level_configuration_reference.dart';
import 'package:k8s/src/model/v1beta3_priority_level_configuration_spec.dart';
import 'package:k8s/src/model/v1beta3_priority_level_configuration_status.dart';
import 'package:k8s/src/model/v1beta3_queuing_configuration.dart';
import 'package:k8s/src/model/v1beta3_resource_policy_rule.dart';
import 'package:k8s/src/model/v1beta3_service_account_subject.dart';
import 'package:k8s/src/model/v1beta3_subject.dart';
import 'package:k8s/src/model/v1beta3_user_subject.dart';
import 'package:k8s/src/model/v2_container_resource_metric_source.dart';
import 'package:k8s/src/model/v2_container_resource_metric_status.dart';
import 'package:k8s/src/model/v2_cross_version_object_reference.dart';
import 'package:k8s/src/model/v2_external_metric_source.dart';
import 'package:k8s/src/model/v2_external_metric_status.dart';
import 'package:k8s/src/model/v2_hpa_scaling_policy.dart';
import 'package:k8s/src/model/v2_hpa_scaling_rules.dart';
import 'package:k8s/src/model/v2_horizontal_pod_autoscaler.dart';
import 'package:k8s/src/model/v2_horizontal_pod_autoscaler_behavior.dart';
import 'package:k8s/src/model/v2_horizontal_pod_autoscaler_condition.dart';
import 'package:k8s/src/model/v2_horizontal_pod_autoscaler_list.dart';
import 'package:k8s/src/model/v2_horizontal_pod_autoscaler_spec.dart';
import 'package:k8s/src/model/v2_horizontal_pod_autoscaler_status.dart';
import 'package:k8s/src/model/v2_metric_identifier.dart';
import 'package:k8s/src/model/v2_metric_spec.dart';
import 'package:k8s/src/model/v2_metric_status.dart';
import 'package:k8s/src/model/v2_metric_target.dart';
import 'package:k8s/src/model/v2_metric_value_status.dart';
import 'package:k8s/src/model/v2_object_metric_source.dart';
import 'package:k8s/src/model/v2_object_metric_status.dart';
import 'package:k8s/src/model/v2_pods_metric_source.dart';
import 'package:k8s/src/model/v2_pods_metric_status.dart';
import 'package:k8s/src/model/v2_resource_metric_source.dart';
import 'package:k8s/src/model/v2_resource_metric_status.dart';
import 'package:k8s/src/model/version_info.dart';

final _regList = RegExp(r'^List<(.*)>$');
final _regSet = RegExp(r'^Set<(.*)>$');
final _regMap = RegExp(r'^Map<String,(.*)>$');

  ReturnType deserialize<ReturnType, BaseType>(dynamic value, String targetType, {bool growable= true}) {
      switch (targetType) {
        case 'String':
          return '$value' as ReturnType;
        case 'int':
          return (value is int ? value : int.parse('$value')) as ReturnType;
        case 'bool':
          if (value is bool) {
            return value as ReturnType;
          }
          final valueString = '$value'.toLowerCase();
          return (valueString == 'true' || valueString == '1') as ReturnType;
        case 'double':
          return (value is double ? value : double.parse('$value')) as ReturnType;
        case 'Object':
          if (value is Object) {
            return value as ReturnType;
          }
          break;
        case 'AdmissionregistrationV1ServiceReference':
          return AdmissionregistrationV1ServiceReference.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'AdmissionregistrationV1WebhookClientConfig':
          return AdmissionregistrationV1WebhookClientConfig.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ApiextensionsV1ServiceReference':
          return ApiextensionsV1ServiceReference.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ApiextensionsV1WebhookClientConfig':
          return ApiextensionsV1WebhookClientConfig.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ApiregistrationV1ServiceReference':
          return ApiregistrationV1ServiceReference.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'AuthenticationV1TokenRequest':
          return AuthenticationV1TokenRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'CoreV1EndpointPort':
          return CoreV1EndpointPort.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'CoreV1Event':
          return CoreV1Event.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'CoreV1EventList':
          return CoreV1EventList.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'CoreV1EventSeries':
          return CoreV1EventSeries.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'DiscoveryV1EndpointPort':
          return DiscoveryV1EndpointPort.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'EventsV1Event':
          return EventsV1Event.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'EventsV1EventList':
          return EventsV1EventList.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'EventsV1EventSeries':
          return EventsV1EventSeries.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'StorageV1TokenRequest':
          return StorageV1TokenRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1APIGroup':
          return V1APIGroup.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1APIGroupList':
          return V1APIGroupList.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1APIResource':
          return V1APIResource.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1APIResourceList':
          return V1APIResourceList.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1APIService':
          return V1APIService.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1APIServiceCondition':
          return V1APIServiceCondition.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1APIServiceList':
          return V1APIServiceList.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1APIServiceSpec':
          return V1APIServiceSpec.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1APIServiceStatus':
          return V1APIServiceStatus.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1APIVersions':
          return V1APIVersions.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1AWSElasticBlockStoreVolumeSource':
          return V1AWSElasticBlockStoreVolumeSource.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1Affinity':
          return V1Affinity.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1AggregationRule':
          return V1AggregationRule.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1AttachedVolume':
          return V1AttachedVolume.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1AzureDiskVolumeSource':
          return V1AzureDiskVolumeSource.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1AzureFilePersistentVolumeSource':
          return V1AzureFilePersistentVolumeSource.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1AzureFileVolumeSource':
          return V1AzureFileVolumeSource.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1Binding':
          return V1Binding.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1BoundObjectReference':
          return V1BoundObjectReference.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1CSIDriver':
          return V1CSIDriver.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1CSIDriverList':
          return V1CSIDriverList.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1CSIDriverSpec':
          return V1CSIDriverSpec.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1CSINode':
          return V1CSINode.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1CSINodeDriver':
          return V1CSINodeDriver.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1CSINodeList':
          return V1CSINodeList.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1CSINodeSpec':
          return V1CSINodeSpec.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1CSIPersistentVolumeSource':
          return V1CSIPersistentVolumeSource.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1CSIStorageCapacity':
          return V1CSIStorageCapacity.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1CSIStorageCapacityList':
          return V1CSIStorageCapacityList.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1CSIVolumeSource':
          return V1CSIVolumeSource.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1Capabilities':
          return V1Capabilities.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1CephFSPersistentVolumeSource':
          return V1CephFSPersistentVolumeSource.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1CephFSVolumeSource':
          return V1CephFSVolumeSource.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1CertificateSigningRequest':
          return V1CertificateSigningRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1CertificateSigningRequestCondition':
          return V1CertificateSigningRequestCondition.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1CertificateSigningRequestList':
          return V1CertificateSigningRequestList.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1CertificateSigningRequestSpec':
          return V1CertificateSigningRequestSpec.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1CertificateSigningRequestStatus':
          return V1CertificateSigningRequestStatus.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1CinderPersistentVolumeSource':
          return V1CinderPersistentVolumeSource.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1CinderVolumeSource':
          return V1CinderVolumeSource.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1ClaimSource':
          return V1ClaimSource.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1ClientIPConfig':
          return V1ClientIPConfig.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1ClusterRole':
          return V1ClusterRole.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1ClusterRoleBinding':
          return V1ClusterRoleBinding.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1ClusterRoleBindingList':
          return V1ClusterRoleBindingList.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1ClusterRoleList':
          return V1ClusterRoleList.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1ComponentCondition':
          return V1ComponentCondition.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1ComponentStatus':
          return V1ComponentStatus.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1ComponentStatusList':
          return V1ComponentStatusList.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1Condition':
          return V1Condition.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1ConfigMap':
          return V1ConfigMap.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1ConfigMapEnvSource':
          return V1ConfigMapEnvSource.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1ConfigMapKeySelector':
          return V1ConfigMapKeySelector.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1ConfigMapList':
          return V1ConfigMapList.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1ConfigMapNodeConfigSource':
          return V1ConfigMapNodeConfigSource.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1ConfigMapProjection':
          return V1ConfigMapProjection.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1ConfigMapVolumeSource':
          return V1ConfigMapVolumeSource.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1Container':
          return V1Container.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1ContainerImage':
          return V1ContainerImage.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1ContainerPort':
          return V1ContainerPort.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1ContainerResizePolicy':
          return V1ContainerResizePolicy.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1ContainerState':
          return V1ContainerState.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1ContainerStateRunning':
          return V1ContainerStateRunning.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1ContainerStateTerminated':
          return V1ContainerStateTerminated.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1ContainerStateWaiting':
          return V1ContainerStateWaiting.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1ContainerStatus':
          return V1ContainerStatus.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1ControllerRevision':
          return V1ControllerRevision.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1ControllerRevisionList':
          return V1ControllerRevisionList.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1CronJob':
          return V1CronJob.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1CronJobList':
          return V1CronJobList.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1CronJobSpec':
          return V1CronJobSpec.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1CronJobStatus':
          return V1CronJobStatus.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1CrossVersionObjectReference':
          return V1CrossVersionObjectReference.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1CustomResourceColumnDefinition':
          return V1CustomResourceColumnDefinition.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1CustomResourceConversion':
          return V1CustomResourceConversion.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1CustomResourceDefinition':
          return V1CustomResourceDefinition.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1CustomResourceDefinitionCondition':
          return V1CustomResourceDefinitionCondition.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1CustomResourceDefinitionList':
          return V1CustomResourceDefinitionList.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1CustomResourceDefinitionNames':
          return V1CustomResourceDefinitionNames.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1CustomResourceDefinitionSpec':
          return V1CustomResourceDefinitionSpec.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1CustomResourceDefinitionStatus':
          return V1CustomResourceDefinitionStatus.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1CustomResourceDefinitionVersion':
          return V1CustomResourceDefinitionVersion.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1CustomResourceSubresourceScale':
          return V1CustomResourceSubresourceScale.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1CustomResourceSubresources':
          return V1CustomResourceSubresources.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1CustomResourceValidation':
          return V1CustomResourceValidation.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1DaemonEndpoint':
          return V1DaemonEndpoint.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1DaemonSet':
          return V1DaemonSet.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1DaemonSetCondition':
          return V1DaemonSetCondition.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1DaemonSetList':
          return V1DaemonSetList.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1DaemonSetSpec':
          return V1DaemonSetSpec.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1DaemonSetStatus':
          return V1DaemonSetStatus.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1DaemonSetUpdateStrategy':
          return V1DaemonSetUpdateStrategy.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1DeleteOptions':
          return V1DeleteOptions.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1Deployment':
          return V1Deployment.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1DeploymentCondition':
          return V1DeploymentCondition.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1DeploymentList':
          return V1DeploymentList.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1DeploymentSpec':
          return V1DeploymentSpec.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1DeploymentStatus':
          return V1DeploymentStatus.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1DeploymentStrategy':
          return V1DeploymentStrategy.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1DownwardAPIProjection':
          return V1DownwardAPIProjection.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1DownwardAPIVolumeFile':
          return V1DownwardAPIVolumeFile.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1DownwardAPIVolumeSource':
          return V1DownwardAPIVolumeSource.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1EmptyDirVolumeSource':
          return V1EmptyDirVolumeSource.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1Endpoint':
          return V1Endpoint.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1EndpointAddress':
          return V1EndpointAddress.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1EndpointConditions':
          return V1EndpointConditions.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1EndpointHints':
          return V1EndpointHints.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1EndpointSlice':
          return V1EndpointSlice.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1EndpointSliceList':
          return V1EndpointSliceList.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1EndpointSubset':
          return V1EndpointSubset.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1Endpoints':
          return V1Endpoints.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1EndpointsList':
          return V1EndpointsList.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1EnvFromSource':
          return V1EnvFromSource.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1EnvVar':
          return V1EnvVar.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1EnvVarSource':
          return V1EnvVarSource.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1EphemeralContainer':
          return V1EphemeralContainer.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1EphemeralVolumeSource':
          return V1EphemeralVolumeSource.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1EventSource':
          return V1EventSource.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1Eviction':
          return V1Eviction.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1ExecAction':
          return V1ExecAction.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1ExternalDocumentation':
          return V1ExternalDocumentation.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1FCVolumeSource':
          return V1FCVolumeSource.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1FlexPersistentVolumeSource':
          return V1FlexPersistentVolumeSource.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1FlexVolumeSource':
          return V1FlexVolumeSource.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1FlockerVolumeSource':
          return V1FlockerVolumeSource.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1ForZone':
          return V1ForZone.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1GCEPersistentDiskVolumeSource':
          return V1GCEPersistentDiskVolumeSource.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1GRPCAction':
          return V1GRPCAction.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1GitRepoVolumeSource':
          return V1GitRepoVolumeSource.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1GlusterfsPersistentVolumeSource':
          return V1GlusterfsPersistentVolumeSource.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1GlusterfsVolumeSource':
          return V1GlusterfsVolumeSource.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1GroupVersionForDiscovery':
          return V1GroupVersionForDiscovery.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1HTTPGetAction':
          return V1HTTPGetAction.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1HTTPHeader':
          return V1HTTPHeader.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1HTTPIngressPath':
          return V1HTTPIngressPath.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1HTTPIngressRuleValue':
          return V1HTTPIngressRuleValue.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1HorizontalPodAutoscaler':
          return V1HorizontalPodAutoscaler.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1HorizontalPodAutoscalerList':
          return V1HorizontalPodAutoscalerList.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1HorizontalPodAutoscalerSpec':
          return V1HorizontalPodAutoscalerSpec.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1HorizontalPodAutoscalerStatus':
          return V1HorizontalPodAutoscalerStatus.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1HostAlias':
          return V1HostAlias.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1HostPathVolumeSource':
          return V1HostPathVolumeSource.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1IPBlock':
          return V1IPBlock.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1ISCSIPersistentVolumeSource':
          return V1ISCSIPersistentVolumeSource.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1ISCSIVolumeSource':
          return V1ISCSIVolumeSource.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1Ingress':
          return V1Ingress.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1IngressBackend':
          return V1IngressBackend.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1IngressClass':
          return V1IngressClass.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1IngressClassList':
          return V1IngressClassList.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1IngressClassParametersReference':
          return V1IngressClassParametersReference.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1IngressClassSpec':
          return V1IngressClassSpec.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1IngressList':
          return V1IngressList.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1IngressLoadBalancerIngress':
          return V1IngressLoadBalancerIngress.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1IngressLoadBalancerStatus':
          return V1IngressLoadBalancerStatus.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1IngressPortStatus':
          return V1IngressPortStatus.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1IngressRule':
          return V1IngressRule.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1IngressServiceBackend':
          return V1IngressServiceBackend.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1IngressSpec':
          return V1IngressSpec.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1IngressStatus':
          return V1IngressStatus.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1IngressTLS':
          return V1IngressTLS.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1JSONSchemaProps':
          return V1JSONSchemaProps.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1Job':
          return V1Job.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1JobCondition':
          return V1JobCondition.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1JobList':
          return V1JobList.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1JobSpec':
          return V1JobSpec.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1JobStatus':
          return V1JobStatus.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1JobTemplateSpec':
          return V1JobTemplateSpec.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1KeyToPath':
          return V1KeyToPath.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1LabelSelector':
          return V1LabelSelector.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1LabelSelectorRequirement':
          return V1LabelSelectorRequirement.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1Lease':
          return V1Lease.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1LeaseList':
          return V1LeaseList.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1LeaseSpec':
          return V1LeaseSpec.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1Lifecycle':
          return V1Lifecycle.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1LifecycleHandler':
          return V1LifecycleHandler.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1LimitRange':
          return V1LimitRange.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1LimitRangeItem':
          return V1LimitRangeItem.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1LimitRangeList':
          return V1LimitRangeList.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1LimitRangeSpec':
          return V1LimitRangeSpec.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1ListMeta':
          return V1ListMeta.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1LoadBalancerIngress':
          return V1LoadBalancerIngress.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1LoadBalancerStatus':
          return V1LoadBalancerStatus.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1LocalObjectReference':
          return V1LocalObjectReference.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1LocalSubjectAccessReview':
          return V1LocalSubjectAccessReview.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1LocalVolumeSource':
          return V1LocalVolumeSource.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1ManagedFieldsEntry':
          return V1ManagedFieldsEntry.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1MatchCondition':
          return V1MatchCondition.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1MutatingWebhook':
          return V1MutatingWebhook.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1MutatingWebhookConfiguration':
          return V1MutatingWebhookConfiguration.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1MutatingWebhookConfigurationList':
          return V1MutatingWebhookConfigurationList.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1NFSVolumeSource':
          return V1NFSVolumeSource.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1Namespace':
          return V1Namespace.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1NamespaceCondition':
          return V1NamespaceCondition.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1NamespaceList':
          return V1NamespaceList.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1NamespaceSpec':
          return V1NamespaceSpec.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1NamespaceStatus':
          return V1NamespaceStatus.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1NetworkPolicy':
          return V1NetworkPolicy.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1NetworkPolicyEgressRule':
          return V1NetworkPolicyEgressRule.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1NetworkPolicyIngressRule':
          return V1NetworkPolicyIngressRule.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1NetworkPolicyList':
          return V1NetworkPolicyList.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1NetworkPolicyPeer':
          return V1NetworkPolicyPeer.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1NetworkPolicyPort':
          return V1NetworkPolicyPort.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1NetworkPolicySpec':
          return V1NetworkPolicySpec.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1NetworkPolicyStatus':
          return V1NetworkPolicyStatus.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1Node':
          return V1Node.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1NodeAddress':
          return V1NodeAddress.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1NodeAffinity':
          return V1NodeAffinity.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1NodeCondition':
          return V1NodeCondition.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1NodeConfigSource':
          return V1NodeConfigSource.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1NodeConfigStatus':
          return V1NodeConfigStatus.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1NodeDaemonEndpoints':
          return V1NodeDaemonEndpoints.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1NodeList':
          return V1NodeList.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1NodeSelector':
          return V1NodeSelector.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1NodeSelectorRequirement':
          return V1NodeSelectorRequirement.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1NodeSelectorTerm':
          return V1NodeSelectorTerm.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1NodeSpec':
          return V1NodeSpec.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1NodeStatus':
          return V1NodeStatus.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1NodeSystemInfo':
          return V1NodeSystemInfo.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1NonResourceAttributes':
          return V1NonResourceAttributes.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1NonResourceRule':
          return V1NonResourceRule.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1ObjectFieldSelector':
          return V1ObjectFieldSelector.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1ObjectMeta':
          return V1ObjectMeta.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1ObjectReference':
          return V1ObjectReference.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1Overhead':
          return V1Overhead.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1OwnerReference':
          return V1OwnerReference.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1PersistentVolume':
          return V1PersistentVolume.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1PersistentVolumeClaim':
          return V1PersistentVolumeClaim.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1PersistentVolumeClaimCondition':
          return V1PersistentVolumeClaimCondition.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1PersistentVolumeClaimList':
          return V1PersistentVolumeClaimList.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1PersistentVolumeClaimSpec':
          return V1PersistentVolumeClaimSpec.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1PersistentVolumeClaimStatus':
          return V1PersistentVolumeClaimStatus.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1PersistentVolumeClaimTemplate':
          return V1PersistentVolumeClaimTemplate.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1PersistentVolumeClaimVolumeSource':
          return V1PersistentVolumeClaimVolumeSource.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1PersistentVolumeList':
          return V1PersistentVolumeList.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1PersistentVolumeSpec':
          return V1PersistentVolumeSpec.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1PersistentVolumeStatus':
          return V1PersistentVolumeStatus.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1PhotonPersistentDiskVolumeSource':
          return V1PhotonPersistentDiskVolumeSource.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1Pod':
          return V1Pod.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1PodAffinity':
          return V1PodAffinity.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1PodAffinityTerm':
          return V1PodAffinityTerm.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1PodAntiAffinity':
          return V1PodAntiAffinity.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1PodCondition':
          return V1PodCondition.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1PodDNSConfig':
          return V1PodDNSConfig.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1PodDNSConfigOption':
          return V1PodDNSConfigOption.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1PodDisruptionBudget':
          return V1PodDisruptionBudget.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1PodDisruptionBudgetList':
          return V1PodDisruptionBudgetList.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1PodDisruptionBudgetSpec':
          return V1PodDisruptionBudgetSpec.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1PodDisruptionBudgetStatus':
          return V1PodDisruptionBudgetStatus.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1PodFailurePolicy':
          return V1PodFailurePolicy.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1PodFailurePolicyOnExitCodesRequirement':
          return V1PodFailurePolicyOnExitCodesRequirement.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1PodFailurePolicyOnPodConditionsPattern':
          return V1PodFailurePolicyOnPodConditionsPattern.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1PodFailurePolicyRule':
          return V1PodFailurePolicyRule.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1PodIP':
          return V1PodIP.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1PodList':
          return V1PodList.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1PodOS':
          return V1PodOS.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1PodReadinessGate':
          return V1PodReadinessGate.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1PodResourceClaim':
          return V1PodResourceClaim.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1PodSchedulingGate':
          return V1PodSchedulingGate.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1PodSecurityContext':
          return V1PodSecurityContext.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1PodSpec':
          return V1PodSpec.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1PodStatus':
          return V1PodStatus.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1PodTemplate':
          return V1PodTemplate.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1PodTemplateList':
          return V1PodTemplateList.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1PodTemplateSpec':
          return V1PodTemplateSpec.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1PolicyRule':
          return V1PolicyRule.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1PortStatus':
          return V1PortStatus.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1PortworxVolumeSource':
          return V1PortworxVolumeSource.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1Preconditions':
          return V1Preconditions.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1PreferredSchedulingTerm':
          return V1PreferredSchedulingTerm.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1PriorityClass':
          return V1PriorityClass.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1PriorityClassList':
          return V1PriorityClassList.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1Probe':
          return V1Probe.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1ProjectedVolumeSource':
          return V1ProjectedVolumeSource.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1QuobyteVolumeSource':
          return V1QuobyteVolumeSource.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1RBDPersistentVolumeSource':
          return V1RBDPersistentVolumeSource.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1RBDVolumeSource':
          return V1RBDVolumeSource.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1ReplicaSet':
          return V1ReplicaSet.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1ReplicaSetCondition':
          return V1ReplicaSetCondition.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1ReplicaSetList':
          return V1ReplicaSetList.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1ReplicaSetSpec':
          return V1ReplicaSetSpec.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1ReplicaSetStatus':
          return V1ReplicaSetStatus.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1ReplicationController':
          return V1ReplicationController.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1ReplicationControllerCondition':
          return V1ReplicationControllerCondition.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1ReplicationControllerList':
          return V1ReplicationControllerList.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1ReplicationControllerSpec':
          return V1ReplicationControllerSpec.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1ReplicationControllerStatus':
          return V1ReplicationControllerStatus.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1ResourceAttributes':
          return V1ResourceAttributes.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1ResourceClaim':
          return V1ResourceClaim.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1ResourceFieldSelector':
          return V1ResourceFieldSelector.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1ResourceQuota':
          return V1ResourceQuota.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1ResourceQuotaList':
          return V1ResourceQuotaList.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1ResourceQuotaSpec':
          return V1ResourceQuotaSpec.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1ResourceQuotaStatus':
          return V1ResourceQuotaStatus.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1ResourceRequirements':
          return V1ResourceRequirements.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1ResourceRule':
          return V1ResourceRule.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1Role':
          return V1Role.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1RoleBinding':
          return V1RoleBinding.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1RoleBindingList':
          return V1RoleBindingList.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1RoleList':
          return V1RoleList.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1RoleRef':
          return V1RoleRef.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1RollingUpdateDaemonSet':
          return V1RollingUpdateDaemonSet.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1RollingUpdateDeployment':
          return V1RollingUpdateDeployment.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1RollingUpdateStatefulSetStrategy':
          return V1RollingUpdateStatefulSetStrategy.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1RuleWithOperations':
          return V1RuleWithOperations.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1RuntimeClass':
          return V1RuntimeClass.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1RuntimeClassList':
          return V1RuntimeClassList.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1SELinuxOptions':
          return V1SELinuxOptions.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1Scale':
          return V1Scale.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1ScaleIOPersistentVolumeSource':
          return V1ScaleIOPersistentVolumeSource.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1ScaleIOVolumeSource':
          return V1ScaleIOVolumeSource.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1ScaleSpec':
          return V1ScaleSpec.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1ScaleStatus':
          return V1ScaleStatus.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1Scheduling':
          return V1Scheduling.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1ScopeSelector':
          return V1ScopeSelector.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1ScopedResourceSelectorRequirement':
          return V1ScopedResourceSelectorRequirement.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1SeccompProfile':
          return V1SeccompProfile.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1Secret':
          return V1Secret.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1SecretEnvSource':
          return V1SecretEnvSource.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1SecretKeySelector':
          return V1SecretKeySelector.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1SecretList':
          return V1SecretList.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1SecretProjection':
          return V1SecretProjection.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1SecretReference':
          return V1SecretReference.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1SecretVolumeSource':
          return V1SecretVolumeSource.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1SecurityContext':
          return V1SecurityContext.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1SelfSubjectAccessReview':
          return V1SelfSubjectAccessReview.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1SelfSubjectAccessReviewSpec':
          return V1SelfSubjectAccessReviewSpec.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1SelfSubjectRulesReview':
          return V1SelfSubjectRulesReview.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1SelfSubjectRulesReviewSpec':
          return V1SelfSubjectRulesReviewSpec.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1ServerAddressByClientCIDR':
          return V1ServerAddressByClientCIDR.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1Service':
          return V1Service.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1ServiceAccount':
          return V1ServiceAccount.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1ServiceAccountList':
          return V1ServiceAccountList.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1ServiceAccountTokenProjection':
          return V1ServiceAccountTokenProjection.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1ServiceBackendPort':
          return V1ServiceBackendPort.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1ServiceList':
          return V1ServiceList.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1ServicePort':
          return V1ServicePort.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1ServiceSpec':
          return V1ServiceSpec.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1ServiceStatus':
          return V1ServiceStatus.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1SessionAffinityConfig':
          return V1SessionAffinityConfig.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1StatefulSet':
          return V1StatefulSet.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1StatefulSetCondition':
          return V1StatefulSetCondition.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1StatefulSetList':
          return V1StatefulSetList.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1StatefulSetOrdinals':
          return V1StatefulSetOrdinals.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1StatefulSetPersistentVolumeClaimRetentionPolicy':
          return V1StatefulSetPersistentVolumeClaimRetentionPolicy.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1StatefulSetSpec':
          return V1StatefulSetSpec.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1StatefulSetStatus':
          return V1StatefulSetStatus.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1StatefulSetUpdateStrategy':
          return V1StatefulSetUpdateStrategy.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1Status':
          return V1Status.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1StatusCause':
          return V1StatusCause.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1StatusDetails':
          return V1StatusDetails.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1StorageClass':
          return V1StorageClass.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1StorageClassList':
          return V1StorageClassList.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1StorageOSPersistentVolumeSource':
          return V1StorageOSPersistentVolumeSource.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1StorageOSVolumeSource':
          return V1StorageOSVolumeSource.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1Subject':
          return V1Subject.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1SubjectAccessReview':
          return V1SubjectAccessReview.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1SubjectAccessReviewSpec':
          return V1SubjectAccessReviewSpec.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1SubjectAccessReviewStatus':
          return V1SubjectAccessReviewStatus.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1SubjectRulesReviewStatus':
          return V1SubjectRulesReviewStatus.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1Sysctl':
          return V1Sysctl.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1TCPSocketAction':
          return V1TCPSocketAction.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1Taint':
          return V1Taint.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1TokenRequestSpec':
          return V1TokenRequestSpec.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1TokenRequestStatus':
          return V1TokenRequestStatus.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1TokenReview':
          return V1TokenReview.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1TokenReviewSpec':
          return V1TokenReviewSpec.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1TokenReviewStatus':
          return V1TokenReviewStatus.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1Toleration':
          return V1Toleration.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1TopologySelectorLabelRequirement':
          return V1TopologySelectorLabelRequirement.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1TopologySelectorTerm':
          return V1TopologySelectorTerm.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1TopologySpreadConstraint':
          return V1TopologySpreadConstraint.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1TypedLocalObjectReference':
          return V1TypedLocalObjectReference.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1TypedObjectReference':
          return V1TypedObjectReference.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1UncountedTerminatedPods':
          return V1UncountedTerminatedPods.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1UserInfo':
          return V1UserInfo.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1ValidatingWebhook':
          return V1ValidatingWebhook.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1ValidatingWebhookConfiguration':
          return V1ValidatingWebhookConfiguration.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1ValidatingWebhookConfigurationList':
          return V1ValidatingWebhookConfigurationList.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1ValidationRule':
          return V1ValidationRule.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1Volume':
          return V1Volume.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1VolumeAttachment':
          return V1VolumeAttachment.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1VolumeAttachmentList':
          return V1VolumeAttachmentList.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1VolumeAttachmentSource':
          return V1VolumeAttachmentSource.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1VolumeAttachmentSpec':
          return V1VolumeAttachmentSpec.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1VolumeAttachmentStatus':
          return V1VolumeAttachmentStatus.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1VolumeDevice':
          return V1VolumeDevice.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1VolumeError':
          return V1VolumeError.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1VolumeMount':
          return V1VolumeMount.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1VolumeNodeAffinity':
          return V1VolumeNodeAffinity.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1VolumeNodeResources':
          return V1VolumeNodeResources.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1VolumeProjection':
          return V1VolumeProjection.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1VsphereVirtualDiskVolumeSource':
          return V1VsphereVirtualDiskVolumeSource.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1WatchEvent':
          return V1WatchEvent.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1WebhookConversion':
          return V1WebhookConversion.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1WeightedPodAffinityTerm':
          return V1WeightedPodAffinityTerm.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1WindowsSecurityContextOptions':
          return V1WindowsSecurityContextOptions.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1alpha1AuditAnnotation':
          return V1alpha1AuditAnnotation.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1alpha1ClusterCIDR':
          return V1alpha1ClusterCIDR.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1alpha1ClusterCIDRList':
          return V1alpha1ClusterCIDRList.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1alpha1ClusterCIDRSpec':
          return V1alpha1ClusterCIDRSpec.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1alpha1ClusterTrustBundle':
          return V1alpha1ClusterTrustBundle.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1alpha1ClusterTrustBundleList':
          return V1alpha1ClusterTrustBundleList.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1alpha1ClusterTrustBundleSpec':
          return V1alpha1ClusterTrustBundleSpec.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1alpha1ExpressionWarning':
          return V1alpha1ExpressionWarning.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1alpha1IPAddress':
          return V1alpha1IPAddress.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1alpha1IPAddressList':
          return V1alpha1IPAddressList.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1alpha1IPAddressSpec':
          return V1alpha1IPAddressSpec.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1alpha1MatchCondition':
          return V1alpha1MatchCondition.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1alpha1MatchResources':
          return V1alpha1MatchResources.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1alpha1NamedRuleWithOperations':
          return V1alpha1NamedRuleWithOperations.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1alpha1ParamKind':
          return V1alpha1ParamKind.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1alpha1ParamRef':
          return V1alpha1ParamRef.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1alpha1ParentReference':
          return V1alpha1ParentReference.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1alpha1SelfSubjectReview':
          return V1alpha1SelfSubjectReview.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1alpha1SelfSubjectReviewStatus':
          return V1alpha1SelfSubjectReviewStatus.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1alpha1ServerStorageVersion':
          return V1alpha1ServerStorageVersion.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1alpha1StorageVersion':
          return V1alpha1StorageVersion.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1alpha1StorageVersionCondition':
          return V1alpha1StorageVersionCondition.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1alpha1StorageVersionList':
          return V1alpha1StorageVersionList.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1alpha1StorageVersionStatus':
          return V1alpha1StorageVersionStatus.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1alpha1TypeChecking':
          return V1alpha1TypeChecking.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1alpha1ValidatingAdmissionPolicy':
          return V1alpha1ValidatingAdmissionPolicy.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1alpha1ValidatingAdmissionPolicyBinding':
          return V1alpha1ValidatingAdmissionPolicyBinding.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1alpha1ValidatingAdmissionPolicyBindingList':
          return V1alpha1ValidatingAdmissionPolicyBindingList.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1alpha1ValidatingAdmissionPolicyBindingSpec':
          return V1alpha1ValidatingAdmissionPolicyBindingSpec.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1alpha1ValidatingAdmissionPolicyList':
          return V1alpha1ValidatingAdmissionPolicyList.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1alpha1ValidatingAdmissionPolicySpec':
          return V1alpha1ValidatingAdmissionPolicySpec.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1alpha1ValidatingAdmissionPolicyStatus':
          return V1alpha1ValidatingAdmissionPolicyStatus.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1alpha1Validation':
          return V1alpha1Validation.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1alpha2AllocationResult':
          return V1alpha2AllocationResult.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1alpha2PodSchedulingContext':
          return V1alpha2PodSchedulingContext.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1alpha2PodSchedulingContextList':
          return V1alpha2PodSchedulingContextList.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1alpha2PodSchedulingContextSpec':
          return V1alpha2PodSchedulingContextSpec.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1alpha2PodSchedulingContextStatus':
          return V1alpha2PodSchedulingContextStatus.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1alpha2ResourceClaim':
          return V1alpha2ResourceClaim.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1alpha2ResourceClaimConsumerReference':
          return V1alpha2ResourceClaimConsumerReference.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1alpha2ResourceClaimList':
          return V1alpha2ResourceClaimList.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1alpha2ResourceClaimParametersReference':
          return V1alpha2ResourceClaimParametersReference.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1alpha2ResourceClaimSchedulingStatus':
          return V1alpha2ResourceClaimSchedulingStatus.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1alpha2ResourceClaimSpec':
          return V1alpha2ResourceClaimSpec.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1alpha2ResourceClaimStatus':
          return V1alpha2ResourceClaimStatus.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1alpha2ResourceClaimTemplate':
          return V1alpha2ResourceClaimTemplate.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1alpha2ResourceClaimTemplateList':
          return V1alpha2ResourceClaimTemplateList.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1alpha2ResourceClaimTemplateSpec':
          return V1alpha2ResourceClaimTemplateSpec.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1alpha2ResourceClass':
          return V1alpha2ResourceClass.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1alpha2ResourceClassList':
          return V1alpha2ResourceClassList.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1alpha2ResourceClassParametersReference':
          return V1alpha2ResourceClassParametersReference.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1alpha2ResourceHandle':
          return V1alpha2ResourceHandle.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1beta1SelfSubjectReview':
          return V1beta1SelfSubjectReview.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1beta1SelfSubjectReviewStatus':
          return V1beta1SelfSubjectReviewStatus.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1beta2FlowDistinguisherMethod':
          return V1beta2FlowDistinguisherMethod.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1beta2FlowSchema':
          return V1beta2FlowSchema.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1beta2FlowSchemaCondition':
          return V1beta2FlowSchemaCondition.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1beta2FlowSchemaList':
          return V1beta2FlowSchemaList.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1beta2FlowSchemaSpec':
          return V1beta2FlowSchemaSpec.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1beta2FlowSchemaStatus':
          return V1beta2FlowSchemaStatus.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1beta2GroupSubject':
          return V1beta2GroupSubject.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1beta2LimitResponse':
          return V1beta2LimitResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1beta2LimitedPriorityLevelConfiguration':
          return V1beta2LimitedPriorityLevelConfiguration.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1beta2NonResourcePolicyRule':
          return V1beta2NonResourcePolicyRule.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1beta2PolicyRulesWithSubjects':
          return V1beta2PolicyRulesWithSubjects.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1beta2PriorityLevelConfiguration':
          return V1beta2PriorityLevelConfiguration.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1beta2PriorityLevelConfigurationCondition':
          return V1beta2PriorityLevelConfigurationCondition.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1beta2PriorityLevelConfigurationList':
          return V1beta2PriorityLevelConfigurationList.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1beta2PriorityLevelConfigurationReference':
          return V1beta2PriorityLevelConfigurationReference.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1beta2PriorityLevelConfigurationSpec':
          return V1beta2PriorityLevelConfigurationSpec.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1beta2PriorityLevelConfigurationStatus':
          return V1beta2PriorityLevelConfigurationStatus.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1beta2QueuingConfiguration':
          return V1beta2QueuingConfiguration.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1beta2ResourcePolicyRule':
          return V1beta2ResourcePolicyRule.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1beta2ServiceAccountSubject':
          return V1beta2ServiceAccountSubject.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1beta2Subject':
          return V1beta2Subject.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1beta2UserSubject':
          return V1beta2UserSubject.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1beta3FlowDistinguisherMethod':
          return V1beta3FlowDistinguisherMethod.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1beta3FlowSchema':
          return V1beta3FlowSchema.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1beta3FlowSchemaCondition':
          return V1beta3FlowSchemaCondition.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1beta3FlowSchemaList':
          return V1beta3FlowSchemaList.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1beta3FlowSchemaSpec':
          return V1beta3FlowSchemaSpec.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1beta3FlowSchemaStatus':
          return V1beta3FlowSchemaStatus.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1beta3GroupSubject':
          return V1beta3GroupSubject.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1beta3LimitResponse':
          return V1beta3LimitResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1beta3LimitedPriorityLevelConfiguration':
          return V1beta3LimitedPriorityLevelConfiguration.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1beta3NonResourcePolicyRule':
          return V1beta3NonResourcePolicyRule.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1beta3PolicyRulesWithSubjects':
          return V1beta3PolicyRulesWithSubjects.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1beta3PriorityLevelConfiguration':
          return V1beta3PriorityLevelConfiguration.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1beta3PriorityLevelConfigurationCondition':
          return V1beta3PriorityLevelConfigurationCondition.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1beta3PriorityLevelConfigurationList':
          return V1beta3PriorityLevelConfigurationList.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1beta3PriorityLevelConfigurationReference':
          return V1beta3PriorityLevelConfigurationReference.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1beta3PriorityLevelConfigurationSpec':
          return V1beta3PriorityLevelConfigurationSpec.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1beta3PriorityLevelConfigurationStatus':
          return V1beta3PriorityLevelConfigurationStatus.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1beta3QueuingConfiguration':
          return V1beta3QueuingConfiguration.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1beta3ResourcePolicyRule':
          return V1beta3ResourcePolicyRule.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1beta3ServiceAccountSubject':
          return V1beta3ServiceAccountSubject.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1beta3Subject':
          return V1beta3Subject.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V1beta3UserSubject':
          return V1beta3UserSubject.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V2ContainerResourceMetricSource':
          return V2ContainerResourceMetricSource.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V2ContainerResourceMetricStatus':
          return V2ContainerResourceMetricStatus.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V2CrossVersionObjectReference':
          return V2CrossVersionObjectReference.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V2ExternalMetricSource':
          return V2ExternalMetricSource.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V2ExternalMetricStatus':
          return V2ExternalMetricStatus.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V2HPAScalingPolicy':
          return V2HPAScalingPolicy.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V2HPAScalingRules':
          return V2HPAScalingRules.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V2HorizontalPodAutoscaler':
          return V2HorizontalPodAutoscaler.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V2HorizontalPodAutoscalerBehavior':
          return V2HorizontalPodAutoscalerBehavior.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V2HorizontalPodAutoscalerCondition':
          return V2HorizontalPodAutoscalerCondition.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V2HorizontalPodAutoscalerList':
          return V2HorizontalPodAutoscalerList.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V2HorizontalPodAutoscalerSpec':
          return V2HorizontalPodAutoscalerSpec.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V2HorizontalPodAutoscalerStatus':
          return V2HorizontalPodAutoscalerStatus.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V2MetricIdentifier':
          return V2MetricIdentifier.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V2MetricSpec':
          return V2MetricSpec.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V2MetricStatus':
          return V2MetricStatus.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V2MetricTarget':
          return V2MetricTarget.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V2MetricValueStatus':
          return V2MetricValueStatus.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V2ObjectMetricSource':
          return V2ObjectMetricSource.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V2ObjectMetricStatus':
          return V2ObjectMetricStatus.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V2PodsMetricSource':
          return V2PodsMetricSource.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V2PodsMetricStatus':
          return V2PodsMetricStatus.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V2ResourceMetricSource':
          return V2ResourceMetricSource.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'V2ResourceMetricStatus':
          return V2ResourceMetricStatus.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'VersionInfo':
          return VersionInfo.fromJson(value as Map<String, dynamic>) as ReturnType;
        default:
          RegExpMatch? match;

          if (value is List && (match = _regList.firstMatch(targetType)) != null) {
            targetType = match![1]!; // ignore: parameter_assignments
            return value
              .map<BaseType>((dynamic v) => deserialize<BaseType, BaseType>(v, targetType, growable: growable))
              .toList(growable: growable) as ReturnType;
          }
          if (value is Set && (match = _regSet.firstMatch(targetType)) != null) {
            targetType = match![1]!; // ignore: parameter_assignments
            return value
              .map<BaseType>((dynamic v) => deserialize<BaseType, BaseType>(v, targetType, growable: growable))
              .toSet() as ReturnType;
          }
          if (value is Map && (match = _regMap.firstMatch(targetType)) != null) {
            targetType = match![1]!; // ignore: parameter_assignments
            return Map<dynamic, BaseType>.fromIterables(
              value.keys,
              value.values.map((dynamic v) => deserialize<BaseType, BaseType>(v, targetType, growable: growable)),
            ) as ReturnType;
          }
          break;
    }
    throw Exception('Cannot deserialize');
  }
