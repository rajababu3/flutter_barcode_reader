// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: protos/protos.proto
//
// For information on using the generated types, please see the documentation:
//   https://github.com/apple/swift-protobuf/

import Foundation
import SwiftProtobuf

// If the compiler emits an error on this type, it is because this file
// was generated by a version of the `protoc` Swift plug-in that is
// incompatible with the version of SwiftProtobuf to which you are linking.
// Please ensure that your are building against the same version of the API
// that was used to generate this file.
fileprivate struct _GeneratedWithProtocGenSwiftVersion: SwiftProtobuf.ProtobufAPIVersionCheck {
  struct _2: SwiftProtobuf.ProtobufAPIVersion_2 {}
  typealias Version = _2
}

enum BarcodeFormat: SwiftProtobuf.Enum {
  typealias RawValue = Int
  case aztec // = 0
  case code39 // = 1
  case code93 // = 2
  case ean8 // = 3
  case ean13 // = 4
  case code128 // = 5
  case dataMatrix // = 6
  case qr // = 7
  case interleaved2Of5 // = 8
  case upce // = 9
  case pdf417 // = 10
  case UNRECOGNIZED(Int)

  init() {
    self = .aztec
  }

  init?(rawValue: Int) {
    switch rawValue {
    case 0: self = .aztec
    case 1: self = .code39
    case 2: self = .code93
    case 3: self = .ean8
    case 4: self = .ean13
    case 5: self = .code128
    case 6: self = .dataMatrix
    case 7: self = .qr
    case 8: self = .interleaved2Of5
    case 9: self = .upce
    case 10: self = .pdf417
    default: self = .UNRECOGNIZED(rawValue)
    }
  }

  var rawValue: Int {
    switch self {
    case .aztec: return 0
    case .code39: return 1
    case .code93: return 2
    case .ean8: return 3
    case .ean13: return 4
    case .code128: return 5
    case .dataMatrix: return 6
    case .qr: return 7
    case .interleaved2Of5: return 8
    case .upce: return 9
    case .pdf417: return 10
    case .UNRECOGNIZED(let i): return i
    }
  }

}

#if swift(>=4.2)

extension BarcodeFormat: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  static var allCases: [BarcodeFormat] = [
    .aztec,
    .code39,
    .code93,
    .ean8,
    .ean13,
    .code128,
    .dataMatrix,
    .qr,
    .interleaved2Of5,
    .upce,
    .pdf417,
  ]
}

#endif  // swift(>=4.2)

struct Configuration {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Strings
  var cancelText: String = String()

  var flashOnText: String = String()

  var flashOffText: String = String()

  /// Restricts the barcode format which should be read
  var restrictFormat: [BarcodeFormat] = []

  /// Index of the camera which should used. -1 uses the default camera
  var useCamera: Int32 = 0

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

extension BarcodeFormat: SwiftProtobuf._ProtoNameProviding {
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "aztec"),
    1: .same(proto: "code39"),
    2: .same(proto: "code93"),
    3: .same(proto: "ean8"),
    4: .same(proto: "ean13"),
    5: .same(proto: "code128"),
    6: .same(proto: "dataMatrix"),
    7: .same(proto: "qr"),
    8: .same(proto: "interleaved2of5"),
    9: .same(proto: "upce"),
    10: .same(proto: "pdf417"),
  ]
}

extension Configuration: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = "Configuration"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "cancelText"),
    2: .same(proto: "flashOnText"),
    3: .same(proto: "flashOffText"),
    4: .same(proto: "restrictFormat"),
    5: .same(proto: "useCamera"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularStringField(value: &self.cancelText)
      case 2: try decoder.decodeSingularStringField(value: &self.flashOnText)
      case 3: try decoder.decodeSingularStringField(value: &self.flashOffText)
      case 4: try decoder.decodeRepeatedEnumField(value: &self.restrictFormat)
      case 5: try decoder.decodeSingularInt32Field(value: &self.useCamera)
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.cancelText.isEmpty {
      try visitor.visitSingularStringField(value: self.cancelText, fieldNumber: 1)
    }
    if !self.flashOnText.isEmpty {
      try visitor.visitSingularStringField(value: self.flashOnText, fieldNumber: 2)
    }
    if !self.flashOffText.isEmpty {
      try visitor.visitSingularStringField(value: self.flashOffText, fieldNumber: 3)
    }
    if !self.restrictFormat.isEmpty {
      try visitor.visitPackedEnumField(value: self.restrictFormat, fieldNumber: 4)
    }
    if self.useCamera != 0 {
      try visitor.visitSingularInt32Field(value: self.useCamera, fieldNumber: 5)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Configuration, rhs: Configuration) -> Bool {
    if lhs.cancelText != rhs.cancelText {return false}
    if lhs.flashOnText != rhs.flashOnText {return false}
    if lhs.flashOffText != rhs.flashOffText {return false}
    if lhs.restrictFormat != rhs.restrictFormat {return false}
    if lhs.useCamera != rhs.useCamera {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
