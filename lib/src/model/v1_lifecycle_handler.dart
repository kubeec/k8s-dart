//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/v1_exec_action.dart';
import 'package:k8s/src/model/v1_http_get_action.dart';
import 'package:k8s/src/model/v1_tcp_socket_action.dart';
import 'package:json_annotation/json_annotation.dart';

part 'v1_lifecycle_handler.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1LifecycleHandler {
  /// Returns a new [V1LifecycleHandler] instance.
  V1LifecycleHandler({

     this.exec,

     this.httpGet,

     this.tcpSocket,
  });

  @JsonKey(
    
    name: r'exec',
    required: false,
    includeIfNull: false
  )


  final V1ExecAction? exec;



  @JsonKey(
    
    name: r'httpGet',
    required: false,
    includeIfNull: false
  )


  final V1HTTPGetAction? httpGet;



  @JsonKey(
    
    name: r'tcpSocket',
    required: false,
    includeIfNull: false
  )


  final V1TCPSocketAction? tcpSocket;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1LifecycleHandler &&
     other.exec == exec &&
     other.httpGet == httpGet &&
     other.tcpSocket == tcpSocket;

  @override
  int get hashCode =>
    exec.hashCode +
    httpGet.hashCode +
    tcpSocket.hashCode;

  factory V1LifecycleHandler.fromJson(Map<String, dynamic> json) => _$V1LifecycleHandlerFromJson(json);

  Map<String, dynamic> toJson() => _$V1LifecycleHandlerToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

