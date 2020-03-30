//
// DO NOT EDIT.
//
// Generated by the protocol buffer compiler.
// Source: EchoModel/echo.proto
//

//
// Copyright 2018, gRPC Authors All rights reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
//
import Foundation
import GRPC
import NIO
import NIOHTTP1
import SwiftProtobuf


public final class UMCCustomerMessageClient {

  /// Asynchronous unary call to UserDeleteMessages.
  ///
  /// - Parameters:
  ///   - request: Request to send to UserDeleteMessages.
  ///   - callOptions: Call options; `self.defaultCallOptions` is used if `nil`.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  @discardableResult
  public static func UserDeleteMessages(request: UMCUserDeleteMessagesRequest, completion: @escaping (UMCUserDeleteMessagesResponse) -> Void, failure: @escaping (Error) -> Void) -> Bool {
    guard let grpcEngine = grpcEngine  else { return false }
    let client = grpcEngine.client
    let call = client.makeUnaryCall(path: "/usermsgcenter.CustomerMessage/UserDeleteMessages",
                              request: request,
                              callOptions: client.defaultCallOptions, responseType: UMCUserDeleteMessagesResponse.self)
    call.response.whenComplete { (result) in
       switch result {
           case .success(let resp):
               debugPrint("/usermsgcenter.CustomerMessage/UserDeleteMessages resp:", resp)
               DispatchQueue.main.async { completion(resp) }
           case .failure(let error):
               debugPrint("/usermsgcenter.CustomerMessage/UserDeleteMessages error", error)
               DispatchQueue.main.async { failure(error) }
       }
    }
    return true
  }

  /// Asynchronous unary call to UserGetMessages.
  ///
  /// - Parameters:
  ///   - request: Request to send to UserGetMessages.
  ///   - callOptions: Call options; `self.defaultCallOptions` is used if `nil`.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  @discardableResult
  public static func UserGetMessages(request: UMCUserGetMessagesRequest, completion: @escaping (UMCUserGetMessagesResponse) -> Void, failure: @escaping (Error) -> Void) -> Bool {
    guard let grpcEngine = grpcEngine  else { return false }
    let client = grpcEngine.client
    let call = client.makeUnaryCall(path: "/usermsgcenter.CustomerMessage/UserGetMessages",
                              request: request,
                              callOptions: client.defaultCallOptions, responseType: UMCUserGetMessagesResponse.self)
    call.response.whenComplete { (result) in
       switch result {
           case .success(let resp):
               debugPrint("/usermsgcenter.CustomerMessage/UserGetMessages resp:", resp)
               DispatchQueue.main.async { completion(resp) }
           case .failure(let error):
               debugPrint("/usermsgcenter.CustomerMessage/UserGetMessages error", error)
               DispatchQueue.main.async { failure(error) }
       }
    }
    return true
  }

  /// Asynchronous unary call to UserGetUnreadMessageCount.
  ///
  /// - Parameters:
  ///   - request: Request to send to UserGetUnreadMessageCount.
  ///   - callOptions: Call options; `self.defaultCallOptions` is used if `nil`.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  @discardableResult
  public static func UserGetUnreadMessageCount(request: UMCUserGetUnreadMessageCountRequest, completion: @escaping (UMCUserGetUnreadMessageCountResponse) -> Void, failure: @escaping (Error) -> Void) -> Bool {
    guard let grpcEngine = grpcEngine  else { return false }
    let client = grpcEngine.client
    let call = client.makeUnaryCall(path: "/usermsgcenter.CustomerMessage/UserGetUnreadMessageCount",
                              request: request,
                              callOptions: client.defaultCallOptions, responseType: UMCUserGetUnreadMessageCountResponse.self)
    call.response.whenComplete { (result) in
       switch result {
           case .success(let resp):
               debugPrint("/usermsgcenter.CustomerMessage/UserGetUnreadMessageCount resp:", resp)
               DispatchQueue.main.async { completion(resp) }
           case .failure(let error):
               debugPrint("/usermsgcenter.CustomerMessage/UserGetUnreadMessageCount error", error)
               DispatchQueue.main.async { failure(error) }
       }
    }
    return true
  }

  /// Asynchronous unary call to UserSetAllMessagesRead.
  ///
  /// - Parameters:
  ///   - request: Request to send to UserSetAllMessagesRead.
  ///   - callOptions: Call options; `self.defaultCallOptions` is used if `nil`.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  @discardableResult
  public static func UserSetAllMessagesRead(request: UMCUserSetAllMessagesReadRequest, completion: @escaping (UMCUserSetAllMessagesReadResponse) -> Void, failure: @escaping (Error) -> Void) -> Bool {
    guard let grpcEngine = grpcEngine  else { return false }
    let client = grpcEngine.client
    let call = client.makeUnaryCall(path: "/usermsgcenter.CustomerMessage/UserSetAllMessagesRead",
                              request: request,
                              callOptions: client.defaultCallOptions, responseType: UMCUserSetAllMessagesReadResponse.self)
    call.response.whenComplete { (result) in
       switch result {
           case .success(let resp):
               debugPrint("/usermsgcenter.CustomerMessage/UserSetAllMessagesRead resp:", resp)
               DispatchQueue.main.async { completion(resp) }
           case .failure(let error):
               debugPrint("/usermsgcenter.CustomerMessage/UserSetAllMessagesRead error", error)
               DispatchQueue.main.async { failure(error) }
       }
    }
    return true
  }

  /// Asynchronous unary call to UserSetMessageRead.
  ///
  /// - Parameters:
  ///   - request: Request to send to UserSetMessageRead.
  ///   - callOptions: Call options; `self.defaultCallOptions` is used if `nil`.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  @discardableResult
  public static func UserSetMessageRead(request: UMCUserSetMessageReadRequest, completion: @escaping (UMCUserSetMessageReadResponse) -> Void, failure: @escaping (Error) -> Void) -> Bool {
    guard let grpcEngine = grpcEngine  else { return false }
    let client = grpcEngine.client
    let call = client.makeUnaryCall(path: "/usermsgcenter.CustomerMessage/UserSetMessageRead",
                              request: request,
                              callOptions: client.defaultCallOptions, responseType: UMCUserSetMessageReadResponse.self)
    call.response.whenComplete { (result) in
       switch result {
           case .success(let resp):
               debugPrint("/usermsgcenter.CustomerMessage/UserSetMessageRead resp:", resp)
               DispatchQueue.main.async { completion(resp) }
           case .failure(let error):
               debugPrint("/usermsgcenter.CustomerMessage/UserSetMessageRead error", error)
               DispatchQueue.main.async { failure(error) }
       }
    }
    return true
  }

  /// Asynchronous unary call to UserSetMessagesRead.
  ///
  /// - Parameters:
  ///   - request: Request to send to UserSetMessagesRead.
  ///   - callOptions: Call options; `self.defaultCallOptions` is used if `nil`.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  @discardableResult
  public static func UserSetMessagesRead(request: UMCUserSetMessagesReadRequest, completion: @escaping (UMCUserSetMessagesReadResponse) -> Void, failure: @escaping (Error) -> Void) -> Bool {
    guard let grpcEngine = grpcEngine  else { return false }
    let client = grpcEngine.client
    let call = client.makeUnaryCall(path: "/usermsgcenter.CustomerMessage/UserSetMessagesRead",
                              request: request,
                              callOptions: client.defaultCallOptions, responseType: UMCUserSetMessagesReadResponse.self)
    call.response.whenComplete { (result) in
       switch result {
           case .success(let resp):
               debugPrint("/usermsgcenter.CustomerMessage/UserSetMessagesRead resp:", resp)
               DispatchQueue.main.async { completion(resp) }
           case .failure(let error):
               debugPrint("/usermsgcenter.CustomerMessage/UserSetMessagesRead error", error)
               DispatchQueue.main.async { failure(error) }
       }
    }
    return true
  }

  /// Asynchronous unary call to Test.
  ///
  /// - Parameters:
  ///   - request: Request to send to Test.
  ///   - callOptions: Call options; `self.defaultCallOptions` is used if `nil`.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  @discardableResult
  public static func Test(request: UMCUserSetMessagesReadRequest, completion: @escaping (COEmpty) -> Void, failure: @escaping (Error) -> Void) -> Bool {
    guard let grpcEngine = grpcEngine  else { return false }
    let client = grpcEngine.client
    let call = client.makeUnaryCall(path: "/usermsgcenter.CustomerMessage/Test",
                              request: request,
                              callOptions: client.defaultCallOptions, responseType: COEmpty.self)
    call.response.whenComplete { (result) in
       switch result {
           case .success(let resp):
               debugPrint("/usermsgcenter.CustomerMessage/Test resp:", resp)
               DispatchQueue.main.async { completion(resp) }
           case .failure(let error):
               debugPrint("/usermsgcenter.CustomerMessage/Test error", error)
               DispatchQueue.main.async { failure(error) }
       }
    }
    return true
  }

}


// Provides conformance to `GRPCPayload` for request and response messages
extension UMCUserDeleteMessagesRequest: GRPCProtobufPayload {}
extension UMCUserDeleteMessagesResponse: GRPCProtobufPayload {}
extension UMCUserGetMessagesRequest: GRPCProtobufPayload {}
extension UMCUserGetMessagesResponse: GRPCProtobufPayload {}
extension UMCUserGetUnreadMessageCountRequest: GRPCProtobufPayload {}
extension UMCUserGetUnreadMessageCountResponse: GRPCProtobufPayload {}
extension UMCUserSetAllMessagesReadRequest: GRPCProtobufPayload {}
extension UMCUserSetAllMessagesReadResponse: GRPCProtobufPayload {}
extension UMCUserSetMessageReadRequest: GRPCProtobufPayload {}
extension UMCUserSetMessageReadResponse: GRPCProtobufPayload {}
extension UMCUserSetMessagesReadRequest: GRPCProtobufPayload {}
extension UMCUserSetMessagesReadResponse: GRPCProtobufPayload {}

