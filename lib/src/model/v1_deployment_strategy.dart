//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/v1_rolling_update_deployment.dart';
import 'package:json_annotation/json_annotation.dart';

part 'v1_deployment_strategy.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1DeploymentStrategy {
  /// Returns a new [V1DeploymentStrategy] instance.
  V1DeploymentStrategy({

     this.rollingUpdate,

     this.type,
  });

  @JsonKey(
    
    name: r'rollingUpdate',
    required: false,
    includeIfNull: false
  )


  final V1RollingUpdateDeployment? rollingUpdate;



      /// Type of deployment. Can be \"Recreate\" or \"RollingUpdate\". Default is RollingUpdate.
  @JsonKey(
    
    name: r'type',
    required: false,
    includeIfNull: false
  )


  final String? type;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1DeploymentStrategy &&
     other.rollingUpdate == rollingUpdate &&
     other.type == type;

  @override
  int get hashCode =>
    rollingUpdate.hashCode +
    type.hashCode;

  factory V1DeploymentStrategy.fromJson(Map<String, dynamic> json) => _$V1DeploymentStrategyFromJson(json);

  Map<String, dynamic> toJson() => _$V1DeploymentStrategyToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

