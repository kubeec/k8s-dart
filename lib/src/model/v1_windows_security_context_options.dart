//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'v1_windows_security_context_options.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1WindowsSecurityContextOptions {
  /// Returns a new [V1WindowsSecurityContextOptions] instance.
  V1WindowsSecurityContextOptions({

     this.gmsaCredentialSpec,

     this.gmsaCredentialSpecName,

     this.hostProcess,

     this.runAsUserName,
  });

      /// GMSACredentialSpec is where the GMSA admission webhook (https://github.com/kubernetes-sigs/windows-gmsa) inlines the contents of the GMSA credential spec named by the GMSACredentialSpecName field.
  @JsonKey(
    
    name: r'gmsaCredentialSpec',
    required: false,
    includeIfNull: false
  )


  final String? gmsaCredentialSpec;



      /// GMSACredentialSpecName is the name of the GMSA credential spec to use.
  @JsonKey(
    
    name: r'gmsaCredentialSpecName',
    required: false,
    includeIfNull: false
  )


  final String? gmsaCredentialSpecName;



      /// HostProcess determines if a container should be run as a 'Host Process' container. This field is alpha-level and will only be honored by components that enable the WindowsHostProcessContainers feature flag. Setting this field without the feature flag will result in errors when validating the Pod. All of a Pod's containers must have the same effective HostProcess value (it is not allowed to have a mix of HostProcess containers and non-HostProcess containers).  In addition, if HostProcess is true then HostNetwork must also be set to true.
  @JsonKey(
    
    name: r'hostProcess',
    required: false,
    includeIfNull: false
  )


  final bool? hostProcess;



      /// The UserName in Windows to run the entrypoint of the container process. Defaults to the user specified in image metadata if unspecified. May also be set in PodSecurityContext. If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence.
  @JsonKey(
    
    name: r'runAsUserName',
    required: false,
    includeIfNull: false
  )


  final String? runAsUserName;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1WindowsSecurityContextOptions &&
     other.gmsaCredentialSpec == gmsaCredentialSpec &&
     other.gmsaCredentialSpecName == gmsaCredentialSpecName &&
     other.hostProcess == hostProcess &&
     other.runAsUserName == runAsUserName;

  @override
  int get hashCode =>
    gmsaCredentialSpec.hashCode +
    gmsaCredentialSpecName.hashCode +
    hostProcess.hashCode +
    runAsUserName.hashCode;

  factory V1WindowsSecurityContextOptions.fromJson(Map<String, dynamic> json) => _$V1WindowsSecurityContextOptionsFromJson(json);

  Map<String, dynamic> toJson() => _$V1WindowsSecurityContextOptionsToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

