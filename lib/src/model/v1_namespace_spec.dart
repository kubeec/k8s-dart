//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'v1_namespace_spec.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1NamespaceSpec {
  /// Returns a new [V1NamespaceSpec] instance.
  V1NamespaceSpec({

     this.finalizers,
  });

      /// Finalizers is an opaque list of values that must be empty to permanently remove object from storage. More info: https://kubernetes.io/docs/tasks/administer-cluster/namespaces/
  @JsonKey(
    
    name: r'finalizers',
    required: false,
    includeIfNull: false
  )


  final List<String>? finalizers;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1NamespaceSpec &&
     other.finalizers == finalizers;

  @override
  int get hashCode =>
    finalizers.hashCode;

  factory V1NamespaceSpec.fromJson(Map<String, dynamic> json) => _$V1NamespaceSpecFromJson(json);

  Map<String, dynamic> toJson() => _$V1NamespaceSpecToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

