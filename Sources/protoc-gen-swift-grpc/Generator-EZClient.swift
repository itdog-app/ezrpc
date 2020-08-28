/*
 * Copyright 2018, gRPC Authors All rights reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
import Foundation
import SwiftProtobuf
import SwiftProtobufPluginLibrary

extension Generator {
  internal func printEZClient() {
    self.println()
    self.printServiceClientImplementation()
  }
    
  private func printServiceClientImplementation() {
    println("\(access) final class \(clientClassName) {")
    println()
    indent()
    for method in service.methods {
      self.method = method
      switch streamingType(method) {
      case .unary:
        println("/// Asynchronous unary call to \(method.name).")
        println("///")
        printParameters()
        printRequestParameter()
        printCallOptionsParameter()
        println("/// - Returns: A `UnaryCall` with futures for the metadata, status and response.")
        println("@discardableResult")
        println("\(access) static func \(methodFunctionName)(request: \(methodInputName), completion: @escaping (\(methodOutputName)) -> Void, failure: @escaping (Error) -> Void) -> Bool {")
        indent()
        println("guard let grpcEngine = grpcEngine  else { return false }")
        println("let api = \"/\(servicePath)/\(method.name)\"")
        println("let startTime = CFAbsoluteTimeGetCurrent()")
        
        println("let result = grpcEngine.client.needLimit(api: api)")
        println("guard !result.0 else {")
        println("    let error = GRPCError(errorCode: 100001, errorUserInfo: [NSLocalizedDescriptionKey:\"\"])")
        println("    failure(result.1 ?? error)")
        println("    return false")
        println("}")
        println()
        println()
        println("let client = grpcEngine.client")
        println()
        println("let call = client.makeUnaryCall(path: api,")
        println("                          request: request,")
        println("                          callOptions: client.defaultCallOptions, responseType: \(methodOutputName).self)")
        println("call.response.whenComplete { (result) in")
        println()
        println("    let endTime = CFAbsoluteTimeGetCurrent()")
        println("    debugPrint(\"\\(api) response time：\\((endTime - startTime) * 1000) ms\")")
        println()
        println("   switch result {")
        println("       case .success(let resp):")
        println("           debugPrint(\"/\(servicePath)/\(method.name) resp:\", resp)")
        println("           client.nginxlog(api, request: request, respondsTime: endTime - startTime, error: nil)")
        println("           DispatchQueue.main.async { completion(resp) }")
        println("       case .failure(let error):")
        println("           debugPrint(\"/\(servicePath)/\(method.name) error\", error)")
        println("           client.nginxlog(api, request: request, respondsTime: endTime - startTime, error: error)")
        println("           DispatchQueue.main.async { failure(error) }")
        println("   }")
        println("}")
        println()
        println("call.initialMetadata.whenSuccess { (headers) in")
        println("    debugPrint(\"\\(api) initialMetadata\", headers)")
        println("    client.loginGuest(with: headers)")
        println("}")
        println("return true")
        outdent()
        println("}")


      default:
        println("其他模式暂时不支持")
      }
      println()
    }
    outdent()
    println("}")
  }

  private func printClientStreamingDetails() {
    println("/// Callers should use the `send` method on the returned object to send messages")
    println("/// to the server. The caller should send an `.end` after the final message has been sent.")
  }

  private func printParameters() {
    println("/// - Parameters:")
  }

  private func printRequestParameter() {
    println("///   - request: Request to send to \(method.name).")
  }

  private func printCallOptionsParameter() {
    println("///   - callOptions: Call options; `self.defaultCallOptions` is used if `nil`.")
  }

  private func printHandlerParameter() {
    println("///   - handler: A closure called when each response is received from the server.")
  }
}
