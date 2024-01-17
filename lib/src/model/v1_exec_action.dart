//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'v1_exec_action.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1ExecAction {
  /// Returns a new [V1ExecAction] instance.
  V1ExecAction({

     this.command,
  });

      /// Command is the command line to execute inside the container, the working directory for the command  is root ('/') in the container's filesystem. The command is simply exec'd, it is not run inside a shell, so traditional shell instructions ('|', etc) won't work. To use a shell, you need to explicitly call out to that shell. Exit status of 0 is treated as live/healthy and non-zero is unhealthy.
  @JsonKey(
    
    name: r'command',
    required: false,
    includeIfNull: false
  )


  final List<String>? command;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1ExecAction &&
     other.command == command;

  @override
  int get hashCode =>
    command.hashCode;

  factory V1ExecAction.fromJson(Map<String, dynamic> json) => _$V1ExecActionFromJson(json);

  Map<String, dynamic> toJson() => _$V1ExecActionToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

