//
//  Matrix.swift
//  Math3d
//
//  Provides proper Swift type names, equality and
//  identity constants for vector types.
//
//  Created by Kevin Wooten on 6/2/17.
//  Copyright © 2017 Outfox, Inc. All rights reserved.
//

import Foundation
@_exported import simd



public typealias Float2x2 = float2x2
public typealias Float2x3 = float2x3
public typealias Float2x4 = float2x4



extension Float2x2 {

  public static let identity = Float2x2(diagonal: Float2(repeating: 1.0))
  
}

public func ==(a: Float2x2, b: Float2x2) -> Bool {
  return a.x == b.x && a.y == b.y
}



extension Float2x3 {

  public static let identity = Float2x3(diagonal: Float2(repeating: 1.0))
  
}

public func ==(a: Float2x3, b: Float2x3) -> Bool {
  return a.x == b.x && a.y == b.y
}



extension Float2x4 {

  public static let identity = Float2x4(diagonal: Float2(repeating: 1.0))
  
}

public func ==(a: Float2x4, b: Float2x4) -> Bool {
  return a.x == b.x && a.y == b.y
}



public typealias Float3x2 = float3x2
public typealias Float3x3 = float3x3
public typealias Float3x4 = float3x4



extension Float3x2 {

  public static let identity = Float3x2(diagonal: Float2(repeating: 1.0))
  
}

public func ==(a: Float3x2, b: Float3x2) -> Bool {
  return a.x == b.x && a.y == b.y && a.z == b.z
}



extension Float3x3 {

  public static let identity = Float3x3(diagonal: Float3(repeating: 1.0))
  
}

public func ==(a: Float3x3, b: Float3x3) -> Bool {
  return a.x == b.x && a.y == b.y && a.z == b.z
}



extension Float3x4 {

  public static let identity = Float3x4(diagonal: Float3(repeating: 1.0))

}

public func ==(a: Float3x4, b: Float3x4) -> Bool {
  return a.x == b.x && a.y == b.y && a.z == b.z
}



public typealias Float4x2 = float4x2
public typealias Float4x3 = float4x3
public typealias Float4x4 = float4x4



extension Float4x2 {

  public static let identity = Float4x2(diagonal: Float2(repeating: 1.0))

}

public func ==(a: Float4x2, b: Float4x2) -> Bool {
  return a.x == b.x && a.y == b.y && a.z == b.z && a.w == b.w
}



extension Float4x3 {

  public static let identity = Float4x3(diagonal: Float3(repeating: 1.0))

}

public func ==(a: Float4x3, b: Float4x3) -> Bool {
  return a.x == b.x && a.y == b.y && a.z == b.z && a.w == b.w
}



extension Float4x4 {

  public static let identity = Float4x4(diagonal: Float4(repeating: 1.0))
  
}

public func ==(a: Float4x4, b: Float4x4) -> Bool {
  return a.x == b.x && a.y == b.y && a.z == b.z && a.w == b.w
}



public typealias Double2x2 = double2x2
public typealias Double2x3 = double2x3
public typealias Double2x4 = double2x4



extension Double2x2 {

  public static let identity = Double2x2(diagonal: Double2(repeating: 1.0))

}

public func ==(a: Double2x2, b: Double2x2) -> Bool {
  return a.x == b.x && a.y == b.y
}



extension Double2x3 {

  public static let identity = Double2x3(diagonal: Double2(repeating: 1.0))

}

public func ==(a: Double2x3, b: Double2x3) -> Bool {
  return a.x == b.x && a.y == b.y
}



extension Double2x4 {

  public static let identity = Double2x4(diagonal: Double2(repeating: 1.0))

}

public func ==(a: Double2x4, b: Double2x4) -> Bool {
  return a.x == b.x && a.y == b.y
}



public typealias Double3x2 = double3x2
public typealias Double3x3 = double3x3
public typealias Double3x4 = double3x4



extension Double3x2 {

  public static let identity = Double3x2(diagonal: Double2(repeating: 1.0))

}

public func ==(a: Double3x2, b: Double3x2) -> Bool {
  return a.x == b.x && a.y == b.y && a.z == b.z
}



extension Double3x3 {

  public static let identity = Double3x3(diagonal: Double3(repeating: 1.0))

}

public func ==(a: Double3x3, b: Double3x3) -> Bool {
  return a.x == b.x && a.y == b.y && a.z == b.z
}



extension Double3x4 {

  public static let identity = Double3x4(diagonal: Double3(repeating: 1.0))

}

public func ==(a: Double3x4, b: Double3x4) -> Bool {
  return a.x == b.x && a.y == b.y && a.z == b.z
}



public typealias Double4x2 = double4x2
public typealias Double4x3 = double4x3
public typealias Double4x4 = double4x4



extension Double4x2 {

  public static let identity = Double4x2(diagonal: Double2(repeating: 1.0))

}

public func ==(a: Double4x2, b: Double4x2) -> Bool {
  return a.x == b.x && a.y == b.y && a.z == b.z && a.w == b.w
}



extension Double4x3 {

  public static let identity = Double4x3(diagonal: Double3(repeating: 1.0))

}

public func ==(a: Double4x3, b: Double4x3) -> Bool {
  return a.x == b.x && a.y == b.y && a.z == b.z && a.w == b.w
}



extension Double4x4 {

  public static let identity = Double4x4(diagonal: Double4(repeating: 1.0))

}

public func ==(a: Double4x4, b: Double4x4) -> Bool {
  return a.x == b.x && a.y == b.y && a.z == b.z && a.w == b.w
}
