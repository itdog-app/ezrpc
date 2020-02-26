// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: echo.proto
//
// For information on using the generated types, please see the documentation:
//   https://github.com/apple/swift-protobuf/

import Foundation
import SwiftProtobuf

// If the compiler emits an error on this type, it is because this file
// was generated by a version of the `protoc` Swift plug-in that is
// incompatible with the version of SwiftProtobuf to which you are linking.
// Please ensure that you are building against the same version of the API
// that was used to generate this file.
fileprivate struct _GeneratedWithProtocGenSwiftVersion: SwiftProtobuf.ProtobufAPIVersionCheck {
  struct _2: SwiftProtobuf.ProtobufAPIVersion_2 {}
  typealias Version = _2
}

public enum GRXSearchType: SwiftProtobuf.Enum {
  public typealias RawValue = Int

  /// 默认搜索来源, ShopHome等
  case normal // = 0

  /// PrimeHome
  case prime // = 1

  /// 卖家店铺, 未实现
  case seller // = 2

  /// 通过 profileId 搜索
  case profile // = 3
  case UNRECOGNIZED(Int)

  public init() {
    self = .normal
  }

  public init?(rawValue: Int) {
    switch rawValue {
    case 0: self = .normal
    case 1: self = .prime
    case 2: self = .seller
    case 3: self = .profile
    default: self = .UNRECOGNIZED(rawValue)
    }
  }

  public var rawValue: Int {
    switch self {
    case .normal: return 0
    case .prime: return 1
    case .seller: return 2
    case .profile: return 3
    case .UNRECOGNIZED(let i): return i
    }
  }

}

#if swift(>=4.2)

extension GRXSearchType: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  public static var allCases: [GRXSearchType] = [
    .normal,
    .prime,
    .seller,
    .profile,
  ]
}

#endif  // swift(>=4.2)

public struct GRAppSearch {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var search: GRXSearch {
    get {return _search ?? GRXSearch()}
    set {_search = newValue}
  }
  /// Returns true if `search` has been explicitly set.
  public var hasSearch: Bool {return self._search != nil}
  /// Clears the value of `search`. Subsequent reads from it will return its default value.
  public mutating func clearSearch() {self._search = nil}

  public var offset: Int32 = 0

  public var limit: Int32 = 0

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _search: GRXSearch? = nil
}

public struct GRAppSearchResp {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var list: GRXList {
    get {return _list ?? GRXList()}
    set {_list = newValue}
  }
  /// Returns true if `list` has been explicitly set.
  public var hasList: Bool {return self._list != nil}
  /// Clears the value of `list`. Subsequent reads from it will return its default value.
  public mutating func clearList() {self._list = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _list: GRXList? = nil
}

/// 搜索条件
public struct GRXSearch {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// 关键词
  public var keyword: String = String()

  /// 展示类目id
  public var dcid: Int32 = 0

  public var domain: String = String()

  /// 通过搜索 id 进行特殊的搜索，并忽略其他搜索条件
  public var profileID: String = String()

  /// 搜索类型
  public var searchType: GRXSearchType = .normal

  /// 活动id
  public var actID: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// 列表
public struct GRXList {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// 商品总数
  public var total: Int32 = 0

  public var products: [GRXProductGrid] = []

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

public struct GRXProductGrid {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// 如果是商品则展示商品
  public var product: GRXProduct {
    get {return _product ?? GRXProduct()}
    set {_product = newValue}
  }
  /// Returns true if `product` has been explicitly set.
  public var hasProduct: Bool {return self._product != nil}
  /// Clears the value of `product`. Subsequent reads from it will return its default value.
  public mutating func clearProduct() {self._product = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _product: GRXProduct? = nil
}

public struct GRXProduct {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var gpid: Int64 = 0

  /// spu 的 gpid, 可能和 gpid 一致
  public var baseGpid: Int64 = 0

  /// 商品展示的名字
  public var name: String = String()

  /// 标类行业展示的名字, 可能为空
  public var shortName: String = String()

  /// 原商品的名称
  public var originName: String = String()

  /// 图片
  public var img: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "spk"

extension GRXSearchType: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "XSearchTypeNormal"),
    1: .same(proto: "XSearchTypePrime"),
    2: .same(proto: "XSearchTypeSeller"),
    3: .same(proto: "XSearchTypeProfile"),
  ]
}

extension GRAppSearch: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".AppSearch"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "search"),
    2: .same(proto: "offset"),
    3: .same(proto: "limit"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularMessageField(value: &self._search)
      case 2: try decoder.decodeSingularInt32Field(value: &self.offset)
      case 3: try decoder.decodeSingularInt32Field(value: &self.limit)
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._search {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }
    if self.offset != 0 {
      try visitor.visitSingularInt32Field(value: self.offset, fieldNumber: 2)
    }
    if self.limit != 0 {
      try visitor.visitSingularInt32Field(value: self.limit, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: GRAppSearch, rhs: GRAppSearch) -> Bool {
    if lhs._search != rhs._search {return false}
    if lhs.offset != rhs.offset {return false}
    if lhs.limit != rhs.limit {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension GRAppSearchResp: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".AppSearchResp"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "list"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularMessageField(value: &self._list)
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._list {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: GRAppSearchResp, rhs: GRAppSearchResp) -> Bool {
    if lhs._list != rhs._list {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension GRXSearch: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".XSearch"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "keyword"),
    2: .same(proto: "dcid"),
    4: .same(proto: "domain"),
    6: .same(proto: "profileId"),
    5: .same(proto: "searchType"),
    7: .same(proto: "actId"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularStringField(value: &self.keyword)
      case 2: try decoder.decodeSingularInt32Field(value: &self.dcid)
      case 4: try decoder.decodeSingularStringField(value: &self.domain)
      case 5: try decoder.decodeSingularEnumField(value: &self.searchType)
      case 6: try decoder.decodeSingularStringField(value: &self.profileID)
      case 7: try decoder.decodeSingularStringField(value: &self.actID)
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.keyword.isEmpty {
      try visitor.visitSingularStringField(value: self.keyword, fieldNumber: 1)
    }
    if self.dcid != 0 {
      try visitor.visitSingularInt32Field(value: self.dcid, fieldNumber: 2)
    }
    if !self.domain.isEmpty {
      try visitor.visitSingularStringField(value: self.domain, fieldNumber: 4)
    }
    if self.searchType != .normal {
      try visitor.visitSingularEnumField(value: self.searchType, fieldNumber: 5)
    }
    if !self.profileID.isEmpty {
      try visitor.visitSingularStringField(value: self.profileID, fieldNumber: 6)
    }
    if !self.actID.isEmpty {
      try visitor.visitSingularStringField(value: self.actID, fieldNumber: 7)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: GRXSearch, rhs: GRXSearch) -> Bool {
    if lhs.keyword != rhs.keyword {return false}
    if lhs.dcid != rhs.dcid {return false}
    if lhs.domain != rhs.domain {return false}
    if lhs.profileID != rhs.profileID {return false}
    if lhs.searchType != rhs.searchType {return false}
    if lhs.actID != rhs.actID {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension GRXList: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".XList"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "total"),
    2: .same(proto: "products"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularInt32Field(value: &self.total)
      case 2: try decoder.decodeRepeatedMessageField(value: &self.products)
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.total != 0 {
      try visitor.visitSingularInt32Field(value: self.total, fieldNumber: 1)
    }
    if !self.products.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.products, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: GRXList, rhs: GRXList) -> Bool {
    if lhs.total != rhs.total {return false}
    if lhs.products != rhs.products {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension GRXProductGrid: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".XProductGrid"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "product"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularMessageField(value: &self._product)
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._product {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: GRXProductGrid, rhs: GRXProductGrid) -> Bool {
    if lhs._product != rhs._product {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension GRXProduct: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".XProduct"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "gpid"),
    2: .same(proto: "baseGpid"),
    3: .same(proto: "name"),
    4: .same(proto: "shortName"),
    5: .same(proto: "originName"),
    6: .same(proto: "img"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularInt64Field(value: &self.gpid)
      case 2: try decoder.decodeSingularInt64Field(value: &self.baseGpid)
      case 3: try decoder.decodeSingularStringField(value: &self.name)
      case 4: try decoder.decodeSingularStringField(value: &self.shortName)
      case 5: try decoder.decodeSingularStringField(value: &self.originName)
      case 6: try decoder.decodeSingularStringField(value: &self.img)
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.gpid != 0 {
      try visitor.visitSingularInt64Field(value: self.gpid, fieldNumber: 1)
    }
    if self.baseGpid != 0 {
      try visitor.visitSingularInt64Field(value: self.baseGpid, fieldNumber: 2)
    }
    if !self.name.isEmpty {
      try visitor.visitSingularStringField(value: self.name, fieldNumber: 3)
    }
    if !self.shortName.isEmpty {
      try visitor.visitSingularStringField(value: self.shortName, fieldNumber: 4)
    }
    if !self.originName.isEmpty {
      try visitor.visitSingularStringField(value: self.originName, fieldNumber: 5)
    }
    if !self.img.isEmpty {
      try visitor.visitSingularStringField(value: self.img, fieldNumber: 6)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: GRXProduct, rhs: GRXProduct) -> Bool {
    if lhs.gpid != rhs.gpid {return false}
    if lhs.baseGpid != rhs.baseGpid {return false}
    if lhs.name != rhs.name {return false}
    if lhs.shortName != rhs.shortName {return false}
    if lhs.originName != rhs.originName {return false}
    if lhs.img != rhs.img {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
