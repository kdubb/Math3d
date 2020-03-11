//
//  QuaternionCoding.swift
//  Math3dTests
//
//  Created by Kevin Wooten on 6/12/17.
//  Copyright © 2017 Outfox, Inc. All rights reserved.
//

import Foundation


extension FloatQ: Codable {

  enum CodingKeys: CodingKey {
    case w
    case x
    case y
    case z
  }

  public init(from decoder: Decoder) throws {
    let values = try decoder.container(keyedBy: CodingKeys.self)
    let w = try values.decode(Float.self, forKey: CodingKeys.w)
    let x = try values.decode(Float.self, forKey: CodingKeys.x)
    let y = try values.decode(Float.self, forKey: CodingKeys.y)
    let z = try values.decode(Float.self, forKey: CodingKeys.z)
    self.init(x, y, z, w)
  }

  public func encode(to encoder: Encoder) throws {
    var values = encoder.container(keyedBy: CodingKeys.self)
    try values.encode(w, forKey: CodingKeys.w)
    try values.encode(x, forKey: CodingKeys.x)
    try values.encode(y, forKey: CodingKeys.y)
    try values.encode(z, forKey: CodingKeys.z)
  }

}

extension DoubleQ: Codable {

  enum CodingKeys: CodingKey {
    case w
    case x
    case y
    case z
  }

  public init(from decoder: Decoder) throws {
    let values = try decoder.container(keyedBy: CodingKeys.self)
    let w = try values.decode(Double.self, forKey: CodingKeys.w)
    let x = try values.decode(Double.self, forKey: CodingKeys.x)
    let y = try values.decode(Double.self, forKey: CodingKeys.y)
    let z = try values.decode(Double.self, forKey: CodingKeys.z)
    self.init(x, y, z, w)
  }

  public func encode(to encoder: Encoder) throws {
    var values = encoder.container(keyedBy: CodingKeys.self)
    try values.encode(w, forKey: CodingKeys.w)
    try values.encode(x, forKey: CodingKeys.x)
    try values.encode(y, forKey: CodingKeys.y)
    try values.encode(z, forKey: CodingKeys.z)
  }

}

