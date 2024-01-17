//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'v1_certificate_signing_request_spec.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1CertificateSigningRequestSpec {
  /// Returns a new [V1CertificateSigningRequestSpec] instance.
  V1CertificateSigningRequestSpec({

     this.expirationSeconds,

     this.extra,

     this.groups,

    required  this.request,

    required  this.signerName,

     this.uid,

     this.usages,

     this.username,
  });

      /// expirationSeconds is the requested duration of validity of the issued certificate. The certificate signer may issue a certificate with a different validity duration so a client must check the delta between the notBefore and and notAfter fields in the issued certificate to determine the actual duration.  The v1.22+ in-tree implementations of the well-known Kubernetes signers will honor this field as long as the requested duration is not greater than the maximum duration they will honor per the --cluster-signing-duration CLI flag to the Kubernetes controller manager.  Certificate signers may not honor this field for various reasons:    1. Old signer that is unaware of the field (such as the in-tree      implementations prior to v1.22)   2. Signer whose configured maximum is shorter than the requested duration   3. Signer whose configured minimum is longer than the requested duration  The minimum valid value for expirationSeconds is 600, i.e. 10 minutes.
  @JsonKey(
    
    name: r'expirationSeconds',
    required: false,
    includeIfNull: false
  )


  final int? expirationSeconds;



      /// extra contains extra attributes of the user that created the CertificateSigningRequest. Populated by the API server on creation and immutable.
  @JsonKey(
    
    name: r'extra',
    required: false,
    includeIfNull: false
  )


  final Map<String, List<String>>? extra;



      /// groups contains group membership of the user that created the CertificateSigningRequest. Populated by the API server on creation and immutable.
  @JsonKey(
    
    name: r'groups',
    required: false,
    includeIfNull: false
  )


  final List<String>? groups;



      /// request contains an x509 certificate signing request encoded in a \"CERTIFICATE REQUEST\" PEM block. When serialized as JSON or YAML, the data is additionally base64-encoded.
  @JsonKey(
    
    name: r'request',
    required: true,
    includeIfNull: false
  )


  final String request;



      /// signerName indicates the requested signer, and is a qualified name.  List/watch requests for CertificateSigningRequests can filter on this field using a \"spec.signerName=NAME\" fieldSelector.  Well-known Kubernetes signers are:  1. \"kubernetes.io/kube-apiserver-client\": issues client certificates that can be used to authenticate to kube-apiserver.   Requests for this signer are never auto-approved by kube-controller-manager, can be issued by the \"csrsigning\" controller in kube-controller-manager.  2. \"kubernetes.io/kube-apiserver-client-kubelet\": issues client certificates that kubelets use to authenticate to kube-apiserver.   Requests for this signer can be auto-approved by the \"csrapproving\" controller in kube-controller-manager, and can be issued by the \"csrsigning\" controller in kube-controller-manager.  3. \"kubernetes.io/kubelet-serving\" issues serving certificates that kubelets use to serve TLS endpoints, which kube-apiserver can connect to securely.   Requests for this signer are never auto-approved by kube-controller-manager, and can be issued by the \"csrsigning\" controller in kube-controller-manager.  More details are available at https://k8s.io/docs/reference/access-authn-authz/certificate-signing-requests/#kubernetes-signers  Custom signerNames can also be specified. The signer defines:  1. Trust distribution: how trust (CA bundles) are distributed.  2. Permitted subjects: and behavior when a disallowed subject is requested.  3. Required, permitted, or forbidden x509 extensions in the request (including whether subjectAltNames are allowed, which types, restrictions on allowed values) and behavior when a disallowed extension is requested.  4. Required, permitted, or forbidden key usages / extended key usages.  5. Expiration/certificate lifetime: whether it is fixed by the signer, configurable by the admin.  6. Whether or not requests for CA certificates are allowed.
  @JsonKey(
    
    name: r'signerName',
    required: true,
    includeIfNull: false
  )


  final String signerName;



      /// uid contains the uid of the user that created the CertificateSigningRequest. Populated by the API server on creation and immutable.
  @JsonKey(
    
    name: r'uid',
    required: false,
    includeIfNull: false
  )


  final String? uid;



      /// usages specifies a set of key usages requested in the issued certificate.  Requests for TLS client certificates typically request: \"digital signature\", \"key encipherment\", \"client auth\".  Requests for TLS serving certificates typically request: \"key encipherment\", \"digital signature\", \"server auth\".  Valid values are:  \"signing\", \"digital signature\", \"content commitment\",  \"key encipherment\", \"key agreement\", \"data encipherment\",  \"cert sign\", \"crl sign\", \"encipher only\", \"decipher only\", \"any\",  \"server auth\", \"client auth\",  \"code signing\", \"email protection\", \"s/mime\",  \"ipsec end system\", \"ipsec tunnel\", \"ipsec user\",  \"timestamping\", \"ocsp signing\", \"microsoft sgc\", \"netscape sgc\"
  @JsonKey(
    
    name: r'usages',
    required: false,
    includeIfNull: false
  )


  final List<String>? usages;



      /// username contains the name of the user that created the CertificateSigningRequest. Populated by the API server on creation and immutable.
  @JsonKey(
    
    name: r'username',
    required: false,
    includeIfNull: false
  )


  final String? username;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1CertificateSigningRequestSpec &&
     other.expirationSeconds == expirationSeconds &&
     other.extra == extra &&
     other.groups == groups &&
     other.request == request &&
     other.signerName == signerName &&
     other.uid == uid &&
     other.usages == usages &&
     other.username == username;

  @override
  int get hashCode =>
    expirationSeconds.hashCode +
    extra.hashCode +
    groups.hashCode +
    request.hashCode +
    signerName.hashCode +
    uid.hashCode +
    usages.hashCode +
    username.hashCode;

  factory V1CertificateSigningRequestSpec.fromJson(Map<String, dynamic> json) => _$V1CertificateSigningRequestSpecFromJson(json);

  Map<String, dynamic> toJson() => _$V1CertificateSigningRequestSpecToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

