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

//import consulClient


public final class GECustomerMessageClient {

  /// Asynchronous unary call to UserDeleteMessages.
  ///
  /// - Parameters:
  ///   - request: Request to send to UserDeleteMessages.
  ///   - callOptions: Call options; `self.defaultCallOptions` is used if `nil`.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  @discardableResult
  public static func UserDeleteMessages(request: GEUserDeleteMessagesRequest, completion: @escaping (GEUserDeleteMessagesResponse) -> Void, failure: @escaping (Error) -> Void) -> Bool {
    guard let grpcEngine = grpcEngine  else { return false }
//    let client = xxxMake（ip: app.consul..ip, port: consulClient.port）
    let client = app.makeClient(serviceName)
    let client = grpcEngine.client
    let call = client.makeUnaryCall(path: "/usermsgcenter.CustomerMessage/UserDeleteMessages",
                              request: request,
                              callOptions: client.defaultCallOptions, responseType: GEUserDeleteMessagesResponse.self)
    call.response.whenComplete { (result) in
       switch result {
           case .success(let resp):
            APPLogger()
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
  public static func UserGetMessages(request: GEUserGetMessagesRequest, completion: @escaping (GEUserGetMessagesResponse) -> Void, failure: @escaping (Error) -> Void) -> Bool {
    guard let grpcEngine = grpcEngine  else { return false }
    let client = grpcEngine.client
    let call = client.makeUnaryCall(path: "/usermsgcenter.CustomerMessage/UserGetMessages",
                              request: request,
                              callOptions: client.defaultCallOptions, responseType: GEUserGetMessagesResponse.self)
    call.response.whenComplete { (result) in
       switch result {
           case .success(let resp):
               debugPrint("/usermsgcenter.CustomerMessage/UserGetMessages resp:", resp)
//               DispatchQueue.main.async { completion(resp) }
           case .failure(let error):
               debugPrint("/usermsgcenter.CustomerMessage/UserGetMessages error", error)
//               DispatchQueue.main.async { failure(error) }
       }
    }
//    do {
//       let s = try call.response.wait()
//
//        print("response:", s)
//    } catch let err {
//        print("error:", err)
//    }
    
    return true
  }

  /// Asynchronous unary call to UserGetUnreadMessageCount.
  ///
  /// - Parameters:
  ///   - request: Request to send to UserGetUnreadMessageCount.
  ///   - callOptions: Call options; `self.defaultCallOptions` is used if `nil`.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  @discardableResult
  public static func UserGetUnreadMessageCount(request: GEUserGetUnreadMessageCountRequest, completion: @escaping (GEUserGetUnreadMessageCountResponse) -> Void, failure: @escaping (Error) -> Void) -> Bool {
    guard let grpcEngine = grpcEngine  else { return false }
    let client = grpcEngine.client
    let call = client.makeUnaryCall(path: "/usermsgcenter.CustomerMessage/UserGetUnreadMessageCount",
                              request: request,
                              callOptions: client.defaultCallOptions, responseType: GEUserGetUnreadMessageCountResponse.self)
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
  public static func UserSetAllMessagesRead(request: GEUserSetAllMessagesReadRequest, completion: @escaping (GEUserSetAllMessagesReadResponse) -> Void, failure: @escaping (Error) -> Void) -> Bool {
    guard let grpcEngine = grpcEngine  else { return false }
    let client = grpcEngine.client
    let call = client.makeUnaryCall(path: "/usermsgcenter.CustomerMessage/UserSetAllMessagesRead",
                              request: request,
                              callOptions: client.defaultCallOptions, responseType: GEUserSetAllMessagesReadResponse.self)
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
  public static func UserSetMessageRead(request: GEUserSetMessageReadRequest, completion: @escaping (GEUserSetMessageReadResponse) -> Void, failure: @escaping (Error) -> Void) -> Bool {
    guard let grpcEngine = grpcEngine  else { return false }
    let client = grpcEngine.client
    let call = client.makeUnaryCall(path: "/usermsgcenter.CustomerMessage/UserSetMessageRead",
                              request: request,
                              callOptions: client.defaultCallOptions, responseType: GEUserSetMessageReadResponse.self)
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
  public static func UserSetMessagesRead(request: GEUserSetMessagesReadRequest, completion: @escaping (GEUserSetMessagesReadResponse) -> Void, failure: @escaping (Error) -> Void) -> Bool {
    guard let grpcEngine = grpcEngine  else { return false }
    let client = grpcEngine.client
    let call = client.makeUnaryCall(path: "/usermsgcenter.CustomerMessage/UserSetMessagesRead",
                              request: request,
                              callOptions: client.defaultCallOptions, responseType: GEUserSetMessagesReadResponse.self)
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
  public static func Test(request: COCommon, completion: @escaping (COEmpty) -> Void, failure: @escaping (Error) -> Void) -> Bool {
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
extension GEUserDeleteMessagesRequest: GRPCProtobufPayload {}
extension GEUserDeleteMessagesResponse: GRPCProtobufPayload {}
extension GEUserGetMessagesRequest: GRPCProtobufPayload {}
extension GEUserGetMessagesResponse: GRPCProtobufPayload {}
extension GEUserGetUnreadMessageCountRequest: GRPCProtobufPayload {}
extension GEUserGetUnreadMessageCountResponse: GRPCProtobufPayload {}
extension GEUserSetAllMessagesReadRequest: GRPCProtobufPayload {}
extension GEUserSetAllMessagesReadResponse: GRPCProtobufPayload {}
extension GEUserSetMessageReadRequest: GRPCProtobufPayload {}
extension GEUserSetMessageReadResponse: GRPCProtobufPayload {}
extension GEUserSetMessagesReadRequest: GRPCProtobufPayload {}
extension GEUserSetMessagesReadResponse: GRPCProtobufPayload {}
extension COCommon: GRPCProtobufPayload {}
extension COEmpty: GRPCProtobufPayload {}


let app = APP()

app.consul = Consul()
app.consul.watch

class APP {
    
    func makeClinet(s: String) -> EngnClient {
        let ip = cache[ServerIP]
        let port cache[Port]
        
        meke
        
        return
    }
}

protocol <#name#> {
    <#requirements#>
}