//
//  Vector.swift
//  Math3d
//
//  Created by Kevin Wooten on 5/25/17.
//  Copyright © 2017 Outfox, Inc. All rights reserved.
//

import Foundation

// Provides Swift compatible type names, equality,
// and axis constants for vector types typically
// used in graphics algorithms.

public typealias Short2 = SIMD2<Int16>
public typealias Short3 = SIMD3<Int16>
public typealias Short4 = SIMD4<Int16>


extension SIMD {
  
  public static func ==(l: Self, r: Scalar) -> Bool {
    return l == Self(repeating: r)
  }
  
}


extension Short2 {

  public static let xAxis = Short2(1, 0)
  public static let yAxis = Short2(0, 1)

  public init<S>(_ v: S) where S: SIMD, S.Scalar == Scalar {
    self.init(v[0], v[1])
  }

}




extension Short3 {

  public static let xAxis = Short3(1, 0, 0)
  public static let yAxis = Short3(0, 1, 0)
  public static let zAxis = Short3(0, 0, 1)

  public init<S>(_ v: S) where S: SIMD, S.Scalar == Scalar {
    self.init(v[0], v[1], v[2])
  }

}




extension Short4 {

  public static let xAxis = Short4(1, 0, 0, 0)
  public static let yAxis = Short4(0, 1, 0, 0)
  public static let zAxis = Short4(0, 0, 1, 0)
  public static let wAxis = Short4(0, 0, 0, 1)

  public init(_ v: Short2, _ z: Int16 = 0, _ w: Int16 = 0) {
    self.init(v.x, v.y, z, w)
  }
  
  public init<S>(_ v: S) where S: SIMD, S.Scalar == Scalar {
    self.init(v[0], v[1], v[2], v[3])
  }

}



public typealias UShort2 = SIMD2<UInt16>
public typealias UShort3 = SIMD3<UInt16>
public typealias UShort4 = SIMD4<UInt16>



extension UShort2 {

  public static let xAxis = UShort2(1, 0)
  public static let yAxis = UShort2(0, 1)
  
  public init<S>(_ v: S) where S: SIMD, S.Scalar == Scalar {
    self.init(v[0], v[1])
  }

}




extension UShort3 {

  public static let xAxis = UShort3(1, 0, 0)
  public static let yAxis = UShort3(0, 1, 0)
  public static let zAxis = UShort3(0, 0, 1)
  
  public init<S>(_ v: S) where S: SIMD, S.Scalar == Scalar {
    self.init(v[0], v[1], v[2])
  }

}




extension UShort4 {

  public static let xAxis = UShort4(1, 0, 0, 0)
  public static let yAxis = UShort4(0, 1, 0, 0)
  public static let zAxis = UShort4(0, 0, 1, 0)
  public static let wAxis = UShort4(0, 0, 0, 1)
  
  public init(_ v: UShort2, _ z: UInt16 = 0, _ w: UInt16 = 0) {
    self.init(v.x, v.y, z, w)
  }
  
  public init<S>(_ v: S) where S: SIMD, S.Scalar == Scalar {
    self.init(v[0], v[1], v[2], v[3])
  }

}



public typealias Int2 = SIMD2<Int32>
public typealias Int3 = SIMD3<Int32>
public typealias Int4 = SIMD4<Int32>



extension Int2 {

  public static let xAxis = Int2(1, 0)
  public static let yAxis = Int2(0, 1)
  
  public init<S>(_ v: S) where S: SIMD, S.Scalar == Scalar {
    self.init(v[0], v[1])
  }

}




extension Int3 {

  public static let xAxis = Int3(1, 0, 0)
  public static let yAxis = Int3(0, 1, 0)
  public static let zAxis = Int3(0, 0, 1)
  
  public init<S>(_ v: S) where S: SIMD, S.Scalar == Scalar {
    self.init(v[0], v[1], v[2])
  }

}




extension Int4 {

  public static let xAxis = Int4(1, 0, 0, 0)
  public static let yAxis = Int4(0, 1, 0, 0)
  public static let zAxis = Int4(0, 0, 1, 0)
  public static let wAxis = Int4(0, 0, 0, 1)
  
  public init(_ v: Int2, _ z: Int32 = 0, _ w: Int32 = 0) {
    self.init(v.x, v.y, z, w)
  }
  
  public init<S>(_ v: S) where S: SIMD, S.Scalar == Scalar {
    self.init(v[0], v[1], v[2], v[3])
  }

}



public typealias UInt2 = SIMD2<UInt32>
public typealias UInt3 = SIMD3<UInt32>
public typealias UInt4 = SIMD4<UInt32>



extension UInt2 {

  public static let xAxis = UInt2(1, 0)
  public static let yAxis = UInt2(0, 1)
  
  public init<S>(_ v: S) where S: SIMD, S.Scalar == Scalar {
    self.init(v[0], v[1])
  }

}




extension UInt3 {

  public static let xAxis = UInt3(1, 0, 0)
  public static let yAxis = UInt3(0, 1, 0)
  public static let zAxis = UInt3(0, 0, 1)
  
  public init<S>(_ v: S) where S: SIMD, S.Scalar == Scalar {
    self.init(v[0], v[1], v[2])
  }

}




extension UInt4 {

  public static let xAxis = UInt4(1, 0, 0, 0)
  public static let yAxis = UInt4(0, 1, 0, 0)
  public static let zAxis = UInt4(0, 0, 1, 0)
  public static let wAxis = UInt4(0, 0, 0, 1)
  
  public init(_ v: UInt2, _ z: UInt32 = 0, _ w: UInt32 = 0) {
    self.init(v.x, v.y, z, w)
  }
  
  public init<S>(_ v: S) where S: SIMD, S.Scalar == Scalar {
    self.init(v[0], v[1], v[2], v[3])
  }

}



public typealias Float2 = SIMD2<Float32>
public typealias Float3 = SIMD3<Float32>
public typealias Float4 = SIMD4<Float32>



extension Float2 {

  public static let xAxis = Float2(1, 0)
  public static let yAxis = Float2(0, 1)
  
  public init<S>(_ v: S) where S: SIMD, S.Scalar == Scalar {
    self.init(v[0], v[1])
  }
  
}




extension Float3 {

  public static let xAxis = Float3(1, 0, 0)
  public static let yAxis = Float3(0, 1, 0)
  public static let zAxis = Float3(0, 0, 1)
  
  public init<S>(_ v: S) where S: SIMD, S.Scalar == Scalar {
    self.init(v[0], v[1], v[2])
  }

}




extension Float4 {

  public static let xAxis = Float4(1, 0, 0, 0)
  public static let yAxis = Float4(0, 1, 0, 0)
  public static let zAxis = Float4(0, 0, 1, 0)
  public static let wAxis = Float4(0, 0, 0, 1)
  
  public init(_ v: Float2, _ z: Float32 = 0, _ w: Float32 = 0) {
    self.init(v.x, v.y, z, w)
  }
  
  public init<S>(_ v: S) where S: SIMD, S.Scalar == Scalar {
    self.init(v[0], v[1], v[2], v[3])
  }

}



public typealias Double2 = SIMD2<Float64>
public typealias Double3 = SIMD3<Float64>
public typealias Double4 = SIMD4<Float64>



extension Double2 {

  public static let xAxis = Double2(1, 0)
  public static let yAxis = Double2(0, 1)
  
  public init<S>(_ v: S) where S: SIMD, S.Scalar == Scalar {
    self.init(v[0], v[1])
  }

}




extension Double3 {

  public static let xAxis = Double3(1, 0, 0)
  public static let yAxis = Double3(0, 1, 0)
  public static let zAxis = Double3(0, 0, 1)
  
  public init<S>(_ v: S) where S: SIMD, S.Scalar == Scalar {
    self.init(v[0], v[1], v[2])
  }

}




extension Double4 {

  public static let xAxis = Double4(1, 0, 0, 0)
  public static let yAxis = Double4(0, 1, 0, 0)
  public static let zAxis = Double4(0, 0, 1, 0)
  public static let wAxis = Double4(0, 0, 0, 1)
  
  public init(_ v: Double2, _ z: Float64 = 0, _ w: Float64 = 0) {
    self.init(v.x, v.y, z, w)
  }
  
  public init<S>(_ v: S) where S: SIMD, S.Scalar == Scalar {
    self.init(v[0], v[1], v[2], v[3])
  }

}
