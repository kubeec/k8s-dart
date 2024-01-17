//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'v1alpha2_pod_scheduling_context_spec.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1alpha2PodSchedulingContextSpec {
  /// Returns a new [V1alpha2PodSchedulingContextSpec] instance.
  V1alpha2PodSchedulingContextSpec({

     this.potentialNodes,

     this.selectedNode,
  });

      /// PotentialNodes lists nodes where the Pod might be able to run.  The size of this field is limited to 128. This is large enough for many clusters. Larger clusters may need more attempts to find a node that suits all pending resources. This may get increased in the future, but not reduced.
  @JsonKey(
    
    name: r'potentialNodes',
    required: false,
    includeIfNull: false
  )


  final List<String>? potentialNodes;



      /// SelectedNode is the node for which allocation of ResourceClaims that are referenced by the Pod and that use \"WaitForFirstConsumer\" allocation is to be attempted.
  @JsonKey(
    
    name: r'selectedNode',
    required: false,
    includeIfNull: false
  )


  final String? selectedNode;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1alpha2PodSchedulingContextSpec &&
     other.potentialNodes == potentialNodes &&
     other.selectedNode == selectedNode;

  @override
  int get hashCode =>
    potentialNodes.hashCode +
    selectedNode.hashCode;

  factory V1alpha2PodSchedulingContextSpec.fromJson(Map<String, dynamic> json) => _$V1alpha2PodSchedulingContextSpecFromJson(json);

  Map<String, dynamic> toJson() => _$V1alpha2PodSchedulingContextSpecToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

