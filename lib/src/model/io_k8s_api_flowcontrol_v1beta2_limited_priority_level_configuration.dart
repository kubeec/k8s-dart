//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/io_k8s_api_flowcontrol_v1beta2_limit_response.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_flowcontrol_v1beta2_limited_priority_level_configuration.g.dart';

/// LimitedPriorityLevelConfiguration specifies how to handle requests that are subject to limits. It addresses two issues:   - How are requests for this priority level limited?   - What should be done with requests that exceed the limit?
///
/// Properties:
/// * [assuredConcurrencyShares] - `assuredConcurrencyShares` (ACS) configures the execution limit, which is a limit on the number of requests of this priority level that may be exeucting at a given time.  ACS must be a positive number. The server's concurrency limit (SCL) is divided among the concurrency-controlled priority levels in proportion to their assured concurrency shares. This produces the assured concurrency value (ACV) --- the number of requests that may be executing at a time --- for each such priority level:              ACV(l) = ceil( SCL * ACS(l) / ( sum[priority levels k] ACS(k) ) )  bigger numbers of ACS mean more reserved concurrent requests (at the expense of every other PL). This field has a default value of 30.
/// * [borrowingLimitPercent] - `borrowingLimitPercent`, if present, configures a limit on how many seats this priority level can borrow from other priority levels. The limit is known as this level's BorrowingConcurrencyLimit (BorrowingCL) and is a limit on the total number of seats that this level may borrow at any one time. This field holds the ratio of that limit to the level's nominal concurrency limit. When this field is non-nil, it must hold a non-negative integer and the limit is calculated as follows.  BorrowingCL(i) = round( NominalCL(i) * borrowingLimitPercent(i)/100.0 )  The value of this field can be more than 100, implying that this priority level can borrow a number of seats that is greater than its own nominal concurrency limit (NominalCL). When this field is left `nil`, the limit is effectively infinite.
/// * [lendablePercent] - `lendablePercent` prescribes the fraction of the level's NominalCL that can be borrowed by other priority levels. The value of this field must be between 0 and 100, inclusive, and it defaults to 0. The number of seats that other levels can borrow from this level, known as this level's LendableConcurrencyLimit (LendableCL), is defined as follows.  LendableCL(i) = round( NominalCL(i) * lendablePercent(i)/100.0 )
/// * [limitResponse] 
@BuiltValue()
abstract class IoK8sApiFlowcontrolV1beta2LimitedPriorityLevelConfiguration implements Built<IoK8sApiFlowcontrolV1beta2LimitedPriorityLevelConfiguration, IoK8sApiFlowcontrolV1beta2LimitedPriorityLevelConfigurationBuilder> {
  /// `assuredConcurrencyShares` (ACS) configures the execution limit, which is a limit on the number of requests of this priority level that may be exeucting at a given time.  ACS must be a positive number. The server's concurrency limit (SCL) is divided among the concurrency-controlled priority levels in proportion to their assured concurrency shares. This produces the assured concurrency value (ACV) --- the number of requests that may be executing at a time --- for each such priority level:              ACV(l) = ceil( SCL * ACS(l) / ( sum[priority levels k] ACS(k) ) )  bigger numbers of ACS mean more reserved concurrent requests (at the expense of every other PL). This field has a default value of 30.
  @BuiltValueField(wireName: r'assuredConcurrencyShares')
  int? get assuredConcurrencyShares;

  /// `borrowingLimitPercent`, if present, configures a limit on how many seats this priority level can borrow from other priority levels. The limit is known as this level's BorrowingConcurrencyLimit (BorrowingCL) and is a limit on the total number of seats that this level may borrow at any one time. This field holds the ratio of that limit to the level's nominal concurrency limit. When this field is non-nil, it must hold a non-negative integer and the limit is calculated as follows.  BorrowingCL(i) = round( NominalCL(i) * borrowingLimitPercent(i)/100.0 )  The value of this field can be more than 100, implying that this priority level can borrow a number of seats that is greater than its own nominal concurrency limit (NominalCL). When this field is left `nil`, the limit is effectively infinite.
  @BuiltValueField(wireName: r'borrowingLimitPercent')
  int? get borrowingLimitPercent;

  /// `lendablePercent` prescribes the fraction of the level's NominalCL that can be borrowed by other priority levels. The value of this field must be between 0 and 100, inclusive, and it defaults to 0. The number of seats that other levels can borrow from this level, known as this level's LendableConcurrencyLimit (LendableCL), is defined as follows.  LendableCL(i) = round( NominalCL(i) * lendablePercent(i)/100.0 )
  @BuiltValueField(wireName: r'lendablePercent')
  int? get lendablePercent;

  @BuiltValueField(wireName: r'limitResponse')
  IoK8sApiFlowcontrolV1beta2LimitResponse? get limitResponse;

  IoK8sApiFlowcontrolV1beta2LimitedPriorityLevelConfiguration._();

  factory IoK8sApiFlowcontrolV1beta2LimitedPriorityLevelConfiguration([void updates(IoK8sApiFlowcontrolV1beta2LimitedPriorityLevelConfigurationBuilder b)]) = _$IoK8sApiFlowcontrolV1beta2LimitedPriorityLevelConfiguration;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiFlowcontrolV1beta2LimitedPriorityLevelConfigurationBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiFlowcontrolV1beta2LimitedPriorityLevelConfiguration> get serializer => _$IoK8sApiFlowcontrolV1beta2LimitedPriorityLevelConfigurationSerializer();
}

class _$IoK8sApiFlowcontrolV1beta2LimitedPriorityLevelConfigurationSerializer implements PrimitiveSerializer<IoK8sApiFlowcontrolV1beta2LimitedPriorityLevelConfiguration> {
  @override
  final Iterable<Type> types = const [IoK8sApiFlowcontrolV1beta2LimitedPriorityLevelConfiguration, _$IoK8sApiFlowcontrolV1beta2LimitedPriorityLevelConfiguration];

  @override
  final String wireName = r'IoK8sApiFlowcontrolV1beta2LimitedPriorityLevelConfiguration';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiFlowcontrolV1beta2LimitedPriorityLevelConfiguration object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.assuredConcurrencyShares != null) {
      yield r'assuredConcurrencyShares';
      yield serializers.serialize(
        object.assuredConcurrencyShares,
        specifiedType: const FullType(int),
      );
    }
    if (object.borrowingLimitPercent != null) {
      yield r'borrowingLimitPercent';
      yield serializers.serialize(
        object.borrowingLimitPercent,
        specifiedType: const FullType(int),
      );
    }
    if (object.lendablePercent != null) {
      yield r'lendablePercent';
      yield serializers.serialize(
        object.lendablePercent,
        specifiedType: const FullType(int),
      );
    }
    if (object.limitResponse != null) {
      yield r'limitResponse';
      yield serializers.serialize(
        object.limitResponse,
        specifiedType: const FullType(IoK8sApiFlowcontrolV1beta2LimitResponse),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiFlowcontrolV1beta2LimitedPriorityLevelConfiguration object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiFlowcontrolV1beta2LimitedPriorityLevelConfigurationBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'assuredConcurrencyShares':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.assuredConcurrencyShares = valueDes;
          break;
        case r'borrowingLimitPercent':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.borrowingLimitPercent = valueDes;
          break;
        case r'lendablePercent':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.lendablePercent = valueDes;
          break;
        case r'limitResponse':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApiFlowcontrolV1beta2LimitResponse),
          ) as IoK8sApiFlowcontrolV1beta2LimitResponse;
          result.limitResponse.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiFlowcontrolV1beta2LimitedPriorityLevelConfiguration deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiFlowcontrolV1beta2LimitedPriorityLevelConfigurationBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}

