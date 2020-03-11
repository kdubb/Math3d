//
//  MatrixCoding.swift
//  Math3d
//
//  Created by Kevin Wooten on 6/12/17.
//  Copyright © 2017 Outfox, Inc. All rights reserved.
//

import Foundation


extension Float2x2: Codable {

  enum CodingKeys: CodingKey {
    case x
    case y
  }

  public init(from decoder: Decoder) throws {
    let values = try decoder.container(keyedBy: CodingKeys.self)
    let x = try values.decode(Float2.self, forKey: CodingKeys.x)
    let y = try values.decode(Float2.self, forKey: CodingKeys.y)
    self.init(x, y)
  }

  public func encode(to encoder: Encoder) throws {
    var values = encoder.container(keyedBy: CodingKeys.self)
    try values.encode(x, forKey: CodingKeys.x)
    try values.encode(y, forKey: CodingKeys.y)
  }

}

extension Float2x3: Codable {

  enum CodingKeys: CodingKey {
    case x
    case y
  }

  public init(from decoder: Decoder) throws {
    let values = try decoder.container(keyedBy: CodingKeys.self)
    let x = try values.decode(Float3.self, forKey: CodingKeys.x)
    let y = try values.decode(Float3.self, forKey: CodingKeys.y)
    self.init(x, y)
  }

  public func encode(to encoder: Encoder) throws {
    var values = encoder.container(keyedBy: CodingKeys.self)
    try values.encode(x, forKey: CodingKeys.x)
    try values.encode(y, forKey: CodingKeys.y)
  }

}

extension Float2x4: Codable {

  enum CodingKeys: CodingKey {
    case x
    case y
  }

  public init(from decoder: Decoder) throws {
    let values = try decoder.container(keyedBy: CodingKeys.self)
    let x = try values.decode(Float4.self, forKey: CodingKeys.x)
    let y = try values.decode(Float4.self, forKey: CodingKeys.y)
    self.init(x, y)
  }

  public func encode(to encoder: Encoder) throws {
    var values = encoder.container(keyedBy: CodingKeys.self)
    try values.encode(x, forKey: CodingKeys.x)
    try values.encode(y, forKey: CodingKeys.y)
  }

}

extension Float3x2: Codable {

  enum CodingKeys: CodingKey {
    case x
    case y
    case z
  }

  public init(from decoder: Decoder) throws {
    let values = try decoder.container(keyedBy: CodingKeys.self)
    let x = try values.decode(Float2.self, forKey: CodingKeys.x)
    let y = try values.decode(Float2.self, forKey: CodingKeys.y)
    let z = try values.decode(Float2.self, forKey: CodingKeys.z)
    self.init(x, y, z)
  }

  public func encode(to encoder: Encoder) throws {
    var values = encoder.container(keyedBy: CodingKeys.self)
    try values.encode(x, forKey: CodingKeys.x)
    try values.encode(y, forKey: CodingKeys.y)
    try values.encode(z, forKey: CodingKeys.z)
  }

}

extension Float3x3: Codable {

  enum CodingKeys: CodingKey {
    case x
    case y
    case z
  }

  public init(from decoder: Decoder) throws {
    let values = try decoder.container(keyedBy: CodingKeys.self)
    let x = try values.decode(Float3.self, forKey: CodingKeys.x)
    let y = try values.decode(Float3.self, forKey: CodingKeys.y)
    let z = try values.decode(Float3.self, forKey: CodingKeys.z)
    self.init(x, y, z)
  }

  public func encode(to encoder: Encoder) throws {
    var values = encoder.container(keyedBy: CodingKeys.self)
    try values.encode(x, forKey: CodingKeys.x)
    try values.encode(y, forKey: CodingKeys.y)
    try values.encode(z, forKey: CodingKeys.z)
  }

}

extension Float3x4: Codable {

  enum CodingKeys: CodingKey {
    case x
    case y
    case z
  }

  public init(from decoder: Decoder) throws {
    let values = try decoder.container(keyedBy: CodingKeys.self)
    let x = try values.decode(Float4.self, forKey: CodingKeys.x)
    let y = try values.decode(Float4.self, forKey: CodingKeys.y)
    let z = try values.decode(Float4.self, forKey: CodingKeys.z)
    self.init(x, y, z)
  }

  public func encode(to encoder: Encoder) throws {
    var values = encoder.container(keyedBy: CodingKeys.self)
    try values.encode(x, forKey: CodingKeys.x)
    try values.encode(y, forKey: CodingKeys.y)
    try values.encode(z, forKey: CodingKeys.z)
  }

}

extension Float4x2: Codable {

  enum CodingKeys: CodingKey {
    case x
    case y
    case z
    case w
  }

  public init(from decoder: Decoder) throws {
    let values = try decoder.container(keyedBy: CodingKeys.self)
    let x = try values.decode(Float2.self, forKey: CodingKeys.x)
    let y = try values.decode(Float2.self, forKey: CodingKeys.y)
    let z = try values.decode(Float2.self, forKey: CodingKeys.z)
    let w = try values.decode(Float2.self, forKey: CodingKeys.w)
    self.init(x, y, z, w)
  }

  public func encode(to encoder: Encoder) throws {
    var values = encoder.container(keyedBy: CodingKeys.self)
    try values.encode(x, forKey: CodingKeys.x)
    try values.encode(y, forKey: CodingKeys.y)
    try values.encode(z, forKey: CodingKeys.z)
    try values.encode(w, forKey: CodingKeys.w)
  }

}

extension Float4x3: Codable {

  enum CodingKeys: CodingKey {
    case x
    case y
    case z
    case w
  }

  public init(from decoder: Decoder) throws {
    let values = try decoder.container(keyedBy: CodingKeys.self)
    let x = try values.decode(Float3.self, forKey: CodingKeys.x)
    let y = try values.decode(Float3.self, forKey: CodingKeys.y)
    let z = try values.decode(Float3.self, forKey: CodingKeys.z)
    let w = try values.decode(Float3.self, forKey: CodingKeys.w)
    self.init(x, y, z, w)
  }

  public func encode(to encoder: Encoder) throws {
    var values = encoder.container(keyedBy: CodingKeys.self)
    try values.encode(x, forKey: CodingKeys.x)
    try values.encode(y, forKey: CodingKeys.y)
    try values.encode(z, forKey: CodingKeys.z)
    try values.encode(w, forKey: CodingKeys.w)
  }

}

extension Float4x4: Codable {

  enum CodingKeys: CodingKey {
    case x
    case y
    case z
    case w
  }

  public init(from decoder: Decoder) throws {
    let values = try decoder.container(keyedBy: CodingKeys.self)
    let x = try values.decode(Float4.self, forKey: CodingKeys.x)
    let y = try values.decode(Float4.self, forKey: CodingKeys.y)
    let z = try values.decode(Float4.self, forKey: CodingKeys.z)
    let w = try values.decode(Float4.self, forKey: CodingKeys.w)
    self.init(x, y, z, w)
  }

  public func encode(to encoder: Encoder) throws {
    var values = encoder.container(keyedBy: CodingKeys.self)
    try values.encode(x, forKey: CodingKeys.x)
    try values.encode(y, forKey: CodingKeys.y)
    try values.encode(z, forKey: CodingKeys.z)
    try values.encode(w, forKey: CodingKeys.w)
  }

}


extension Double2x2: Codable {

  enum CodingKeys: CodingKey {
    case x
    case y
  }

  public init(from decoder: Decoder) throws {
    let values = try decoder.container(keyedBy: CodingKeys.self)
    let x = try values.decode(Double2.self, forKey: CodingKeys.x)
    let y = try values.decode(Double2.self, forKey: CodingKeys.y)
    self.init(x, y)
  }

  public func encode(to encoder: Encoder) throws {
    var values = encoder.container(keyedBy: CodingKeys.self)
    try values.encode(x, forKey: CodingKeys.x)
    try values.encode(y, forKey: CodingKeys.y)
  }

}

extension Double2x3: Codable {

  enum CodingKeys: CodingKey {
    case x
    case y
  }

  public init(from decoder: Decoder) throws {
    let values = try decoder.container(keyedBy: CodingKeys.self)
    let x = try values.decode(Double3.self, forKey: CodingKeys.x)
    let y = try values.decode(Double3.self, forKey: CodingKeys.y)
    self.init(x, y)
  }

  public func encode(to encoder: Encoder) throws {
    var values = encoder.container(keyedBy: CodingKeys.self)
    try values.encode(x, forKey: CodingKeys.x)
    try values.encode(y, forKey: CodingKeys.y)
  }

}

extension Double2x4: Codable {

  enum CodingKeys: CodingKey {
    case x
    case y
  }

  public init(from decoder: Decoder) throws {
    let values = try decoder.container(keyedBy: CodingKeys.self)
    let x = try values.decode(Double4.self, forKey: CodingKeys.x)
    let y = try values.decode(Double4.self, forKey: CodingKeys.y)
    self.init(x, y)
  }

  public func encode(to encoder: Encoder) throws {
    var values = encoder.container(keyedBy: CodingKeys.self)
    try values.encode(x, forKey: CodingKeys.x)
    try values.encode(y, forKey: CodingKeys.y)
  }

}

extension Double3x2: Codable {

  enum CodingKeys: CodingKey {
    case x
    case y
    case z
  }

  public init(from decoder: Decoder) throws {
    let values = try decoder.container(keyedBy: CodingKeys.self)
    let x = try values.decode(Double2.self, forKey: CodingKeys.x)
    let y = try values.decode(Double2.self, forKey: CodingKeys.y)
    let z = try values.decode(Double2.self, forKey: CodingKeys.z)
    self.init(x, y, z)
  }

  public func encode(to encoder: Encoder) throws {
    var values = encoder.container(keyedBy: CodingKeys.self)
    try values.encode(x, forKey: CodingKeys.x)
    try values.encode(y, forKey: CodingKeys.y)
    try values.encode(z, forKey: CodingKeys.z)
  }

}

extension Double3x3: Codable {

  enum CodingKeys: CodingKey {
    case x
    case y
    case z
  }

  public init(from decoder: Decoder) throws {
    let values = try decoder.container(keyedBy: CodingKeys.self)
    let x = try values.decode(Double3.self, forKey: CodingKeys.x)
    let y = try values.decode(Double3.self, forKey: CodingKeys.y)
    let z = try values.decode(Double3.self, forKey: CodingKeys.z)
    self.init(x, y, z)
  }

  public func encode(to encoder: Encoder) throws {
    var values = encoder.container(keyedBy: CodingKeys.self)
    try values.encode(x, forKey: CodingKeys.x)
    try values.encode(y, forKey: CodingKeys.y)
    try values.encode(z, forKey: CodingKeys.z)
  }

}

extension Double3x4: Codable {

  enum CodingKeys: CodingKey {
    case x
    case y
    case z
  }

  public init(from decoder: Decoder) throws {
    let values = try decoder.container(keyedBy: CodingKeys.self)
    let x = try values.decode(Double4.self, forKey: CodingKeys.x)
    let y = try values.decode(Double4.self, forKey: CodingKeys.y)
    let z = try values.decode(Double4.self, forKey: CodingKeys.z)
    self.init(x, y, z)
  }

  public func encode(to encoder: Encoder) throws {
    var values = encoder.container(keyedBy: CodingKeys.self)
    try values.encode(x, forKey: CodingKeys.x)
    try values.encode(y, forKey: CodingKeys.y)
    try values.encode(z, forKey: CodingKeys.z)
  }

}

extension Double4x2: Codable {

  enum CodingKeys: CodingKey {
    case x
    case y
    case z
    case w
  }

  public init(from decoder: Decoder) throws {
    let values = try decoder.container(keyedBy: CodingKeys.self)
    let x = try values.decode(Double2.self, forKey: CodingKeys.x)
    let y = try values.decode(Double2.self, forKey: CodingKeys.y)
    let z = try values.decode(Double2.self, forKey: CodingKeys.z)
    let w = try values.decode(Double2.self, forKey: CodingKeys.w)
    self.init(x, y, z, w)
  }

  public func encode(to encoder: Encoder) throws {
    var values = encoder.container(keyedBy: CodingKeys.self)
    try values.encode(x, forKey: CodingKeys.x)
    try values.encode(y, forKey: CodingKeys.y)
    try values.encode(z, forKey: CodingKeys.z)
    try values.encode(w, forKey: CodingKeys.w)
  }

}

extension Double4x3: Codable {

  enum CodingKeys: CodingKey {
    case x
    case y
    case z
    case w
  }

  public init(from decoder: Decoder) throws {
    let values = try decoder.container(keyedBy: CodingKeys.self)
    let x = try values.decode(Double3.self, forKey: CodingKeys.x)
    let y = try values.decode(Double3.self, forKey: CodingKeys.y)
    let z = try values.decode(Double3.self, forKey: CodingKeys.z)
    let w = try values.decode(Double3.self, forKey: CodingKeys.w)
    self.init(x, y, z, w)
  }

  public func encode(to encoder: Encoder) throws {
    var values = encoder.container(keyedBy: CodingKeys.self)
    try values.encode(x, forKey: CodingKeys.x)
    try values.encode(y, forKey: CodingKeys.y)
    try values.encode(z, forKey: CodingKeys.z)
    try values.encode(w, forKey: CodingKeys.w)
  }

}

extension Double4x4: Codable {

  enum CodingKeys: CodingKey {
    case x
    case y
    case z
    case w
  }

  public init(from decoder: Decoder) throws {
    let values = try decoder.container(keyedBy: CodingKeys.self)
    let x = try values.decode(Double4.self, forKey: CodingKeys.x)
    let y = try values.decode(Double4.self, forKey: CodingKeys.y)
    let z = try values.decode(Double4.self, forKey: CodingKeys.z)
    let w = try values.decode(Double4.self, forKey: CodingKeys.w)
    self.init(x, y, z, w)
  }

  public func encode(to encoder: Encoder) throws {
    var values = encoder.container(keyedBy: CodingKeys.self)
    try values.encode(x, forKey: CodingKeys.x)
    try values.encode(y, forKey: CodingKeys.y)
    try values.encode(z, forKey: CodingKeys.z)
    try values.encode(w, forKey: CodingKeys.w)
  }

}

