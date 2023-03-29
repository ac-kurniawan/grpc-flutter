///
//  Generated code. Do not modify.
//  source: UserServiceV1.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'GetUserMessageV1.pb.dart' as $0;
import 'UserMessageV1.pb.dart' as $1;
export 'UserServiceV1.pb.dart';

class UserServiceV1Client extends $grpc.Client {
  static final _$getUser =
      $grpc.ClientMethod<$0.GetUsersMessageV1, $1.UserMessageV1>(
          '/userservicev1.UserServiceV1/GetUser',
          ($0.GetUsersMessageV1 value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.UserMessageV1.fromBuffer(value));

  UserServiceV1Client($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$1.UserMessageV1> getUser($0.GetUsersMessageV1 request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getUser, request, options: options);
  }
}

abstract class UserServiceV1ServiceBase extends $grpc.Service {
  $core.String get $name => 'userservicev1.UserServiceV1';

  UserServiceV1ServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.GetUsersMessageV1, $1.UserMessageV1>(
        'GetUser',
        getUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetUsersMessageV1.fromBuffer(value),
        ($1.UserMessageV1 value) => value.writeToBuffer()));
  }

  $async.Future<$1.UserMessageV1> getUser_Pre($grpc.ServiceCall call,
      $async.Future<$0.GetUsersMessageV1> request) async {
    return getUser(call, await request);
  }

  $async.Future<$1.UserMessageV1> getUser(
      $grpc.ServiceCall call, $0.GetUsersMessageV1 request);
}
