//
//  VectorOperators.swift
//  Math3dTests
//
//  Created by Kevin Wooten on 6/12/17.
//  Copyright © 2017 Outfox, Inc. All rights reserved.
//

import Foundation


extension Short2 {

  public static func &+ (_ lhs: Short2, _ rhs: Int16) -> Short2 {
    return lhs &+ Short2(repeating: rhs);
  }

  public static func &+ (_ lhs: Int16, _ rhs: Short2) -> Short2 {
    return Short2(repeating: lhs) &+ rhs;
  }

  public static func &- (_ lhs: Short2, _ rhs: Int16) -> Short2 {
    return lhs &- Short2(repeating: rhs);
  }

  public static func &- (_ lhs: Int16, _ rhs: Short2) -> Short2 {
    return Short2(repeating: lhs) &- rhs;
  }

  public static func / (_ lhs: Short2, _ rhs: Int16) -> Short2 {
    return lhs / Short2(repeating: rhs);
  }

  public static func / (_ lhs: Int16, _ rhs: Short2) -> Short2 {
    return Short2(repeating: lhs) / rhs;
  }

}

extension Short3 {

  public static func &+ (_ lhs: Short3, _ rhs: Int16) -> Short3 {
    return lhs &+ Short3(repeating: rhs);
  }

  public static func &+ (_ lhs: Int16, _ rhs: Short3) -> Short3 {
    return Short3(repeating: lhs) &+ rhs;
  }

  public static func &- (_ lhs: Short3, _ rhs: Int16) -> Short3 {
    return lhs &- Short3(repeating: rhs);
  }

  public static func &- (_ lhs: Int16, _ rhs: Short3) -> Short3 {
    return Short3(repeating: lhs) &- rhs;
  }

  public static func / (_ lhs: Short3, _ rhs: Int16) -> Short3 {
    return lhs / Short3(repeating: rhs);
  }

  public static func / (_ lhs: Int16, _ rhs: Short3) -> Short3 {
    return Short3(repeating: lhs) / rhs;
  }

}

extension Short4 {

  public static func &+ (_ lhs: Short4, _ rhs: Int16) -> Short4 {
    return lhs &+ Short4(repeating: rhs);
  }

  public static func &+ (_ lhs: Int16, _ rhs: Short4) -> Short4 {
    return Short4(repeating: lhs) &+ rhs;
  }

  public static func &- (_ lhs: Short4, _ rhs: Int16) -> Short4 {
    return lhs &- Short4(repeating: rhs);
  }

  public static func &- (_ lhs: Int16, _ rhs: Short4) -> Short4 {
    return Short4(repeating: lhs) &- rhs;
  }

  public static func / (_ lhs: Short4, _ rhs: Int16) -> Short4 {
    return lhs / Short4(repeating: rhs);
  }

  public static func / (_ lhs: Int16, _ rhs: Short4) -> Short4 {
    return Short4(repeating: lhs) / rhs;
  }

}


extension UShort2 {

  public static func &+ (_ lhs: UShort2, _ rhs: UInt16) -> UShort2 {
    return lhs &+ UShort2(repeating: rhs);
  }

  public static func &+ (_ lhs: UInt16, _ rhs: UShort2) -> UShort2 {
    return UShort2(repeating: lhs) &+ rhs;
  }

  public static func &- (_ lhs: UShort2, _ rhs: UInt16) -> UShort2 {
    return lhs &- UShort2(repeating: rhs);
  }

  public static func &- (_ lhs: UInt16, _ rhs: UShort2) -> UShort2 {
    return UShort2(repeating: lhs) &- rhs;
  }

  public static func / (_ lhs: UShort2, _ rhs: UInt16) -> UShort2 {
    return lhs / UShort2(repeating: rhs);
  }

  public static func / (_ lhs: UInt16, _ rhs: UShort2) -> UShort2 {
    return UShort2(repeating: lhs) / rhs;
  }

}

extension UShort3 {

  public static func &+ (_ lhs: UShort3, _ rhs: UInt16) -> UShort3 {
    return lhs &+ UShort3(repeating: rhs);
  }

  public static func &+ (_ lhs: UInt16, _ rhs: UShort3) -> UShort3 {
    return UShort3(repeating: lhs) &+ rhs;
  }

  public static func &- (_ lhs: UShort3, _ rhs: UInt16) -> UShort3 {
    return lhs &- UShort3(repeating: rhs);
  }

  public static func &- (_ lhs: UInt16, _ rhs: UShort3) -> UShort3 {
    return UShort3(repeating: lhs) &- rhs;
  }

  public static func / (_ lhs: UShort3, _ rhs: UInt16) -> UShort3 {
    return lhs / UShort3(repeating: rhs);
  }

  public static func / (_ lhs: UInt16, _ rhs: UShort3) -> UShort3 {
    return UShort3(repeating: lhs) / rhs;
  }

}

extension UShort4 {

  public static func &+ (_ lhs: UShort4, _ rhs: UInt16) -> UShort4 {
    return lhs &+ UShort4(repeating: rhs);
  }

  public static func &+ (_ lhs: UInt16, _ rhs: UShort4) -> UShort4 {
    return UShort4(repeating: lhs) &+ rhs;
  }

  public static func &- (_ lhs: UShort4, _ rhs: UInt16) -> UShort4 {
    return lhs &- UShort4(repeating: rhs);
  }

  public static func &- (_ lhs: UInt16, _ rhs: UShort4) -> UShort4 {
    return UShort4(repeating: lhs) &- rhs;
  }

  public static func / (_ lhs: UShort4, _ rhs: UInt16) -> UShort4 {
    return lhs / UShort4(repeating: rhs);
  }

  public static func / (_ lhs: UInt16, _ rhs: UShort4) -> UShort4 {
    return UShort4(repeating: lhs) / rhs;
  }

}


extension Int2 {

  public static func &+ (_ lhs: Int2, _ rhs: Int32) -> Int2 {
    return lhs &+ Int2(repeating: rhs);
  }

  public static func &+ (_ lhs: Int32, _ rhs: Int2) -> Int2 {
    return Int2(repeating: lhs) &+ rhs;
  }

  public static func &- (_ lhs: Int2, _ rhs: Int32) -> Int2 {
    return lhs &- Int2(repeating: rhs);
  }

  public static func &- (_ lhs: Int32, _ rhs: Int2) -> Int2 {
    return Int2(repeating: lhs) &- rhs;
  }

  public static func / (_ lhs: Int2, _ rhs: Int32) -> Int2 {
    return lhs / Int2(repeating: rhs);
  }

  public static func / (_ lhs: Int32, _ rhs: Int2) -> Int2 {
    return Int2(repeating: lhs) / rhs;
  }

}

extension Int3 {

  public static func &+ (_ lhs: Int3, _ rhs: Int32) -> Int3 {
    return lhs &+ Int3(repeating: rhs);
  }

  public static func &+ (_ lhs: Int32, _ rhs: Int3) -> Int3 {
    return Int3(repeating: lhs) &+ rhs;
  }

  public static func &- (_ lhs: Int3, _ rhs: Int32) -> Int3 {
    return lhs &- Int3(repeating: rhs);
  }

  public static func &- (_ lhs: Int32, _ rhs: Int3) -> Int3 {
    return Int3(repeating: lhs) &- rhs;
  }

  public static func / (_ lhs: Int3, _ rhs: Int32) -> Int3 {
    return lhs / Int3(repeating: rhs);
  }

  public static func / (_ lhs: Int32, _ rhs: Int3) -> Int3 {
    return Int3(repeating: lhs) / rhs;
  }

}

extension Int4 {

  public static func &+ (_ lhs: Int4, _ rhs: Int32) -> Int4 {
    return lhs &+ Int4(repeating: rhs);
  }

  public static func &+ (_ lhs: Int32, _ rhs: Int4) -> Int4 {
    return Int4(repeating: lhs) &+ rhs;
  }

  public static func &- (_ lhs: Int4, _ rhs: Int32) -> Int4 {
    return lhs &- Int4(repeating: rhs);
  }

  public static func &- (_ lhs: Int32, _ rhs: Int4) -> Int4 {
    return Int4(repeating: lhs) &- rhs;
  }

  public static func / (_ lhs: Int4, _ rhs: Int32) -> Int4 {
    return lhs / Int4(repeating: rhs);
  }

  public static func / (_ lhs: Int32, _ rhs: Int4) -> Int4 {
    return Int4(repeating: lhs) / rhs;
  }

}


extension UInt2 {

  public static func &+ (_ lhs: UInt2, _ rhs: UInt32) -> UInt2 {
    return lhs &+ UInt2(repeating: rhs);
  }

  public static func &+ (_ lhs: UInt32, _ rhs: UInt2) -> UInt2 {
    return UInt2(repeating: lhs) &+ rhs;
  }

  public static func &- (_ lhs: UInt2, _ rhs: UInt32) -> UInt2 {
    return lhs &- UInt2(repeating: rhs);
  }

  public static func &- (_ lhs: UInt32, _ rhs: UInt2) -> UInt2 {
    return UInt2(repeating: lhs) &- rhs;
  }

  public static func / (_ lhs: UInt2, _ rhs: UInt32) -> UInt2 {
    return lhs / UInt2(repeating: rhs);
  }

  public static func / (_ lhs: UInt32, _ rhs: UInt2) -> UInt2 {
    return UInt2(repeating: lhs) / rhs;
  }

}

extension UInt3 {

  public static func &+ (_ lhs: UInt3, _ rhs: UInt32) -> UInt3 {
    return lhs &+ UInt3(repeating: rhs);
  }

  public static func &+ (_ lhs: UInt32, _ rhs: UInt3) -> UInt3 {
    return UInt3(repeating: lhs) &+ rhs;
  }

  public static func &- (_ lhs: UInt3, _ rhs: UInt32) -> UInt3 {
    return lhs &- UInt3(repeating: rhs);
  }

  public static func &- (_ lhs: UInt32, _ rhs: UInt3) -> UInt3 {
    return UInt3(repeating: lhs) &- rhs;
  }

  public static func / (_ lhs: UInt3, _ rhs: UInt32) -> UInt3 {
    return lhs / UInt3(repeating: rhs);
  }

  public static func / (_ lhs: UInt32, _ rhs: UInt3) -> UInt3 {
    return UInt3(repeating: lhs) / rhs;
  }

}

extension UInt4 {

  public static func &+ (_ lhs: UInt4, _ rhs: UInt32) -> UInt4 {
    return lhs &+ UInt4(repeating: rhs);
  }

  public static func &+ (_ lhs: UInt32, _ rhs: UInt4) -> UInt4 {
    return UInt4(repeating: lhs) &+ rhs;
  }

  public static func &- (_ lhs: UInt4, _ rhs: UInt32) -> UInt4 {
    return lhs &- UInt4(repeating: rhs);
  }

  public static func &- (_ lhs: UInt32, _ rhs: UInt4) -> UInt4 {
    return UInt4(repeating: lhs) &- rhs;
  }

  public static func / (_ lhs: UInt4, _ rhs: UInt32) -> UInt4 {
    return lhs / UInt4(repeating: rhs);
  }

  public static func / (_ lhs: UInt32, _ rhs: UInt4) -> UInt4 {
    return UInt4(repeating: lhs) / rhs;
  }

}


extension Float2 {

  public static func + (_ lhs: Float2, _ rhs: Float) -> Float2 {
    return lhs + Float2(repeating: rhs);
  }

  public static func + (_ lhs: Float, _ rhs: Float2) -> Float2 {
    return Float2(repeating: lhs) + rhs;
  }

  public static func - (_ lhs: Float2, _ rhs: Float) -> Float2 {
    return lhs - Float2(repeating: rhs);
  }

  public static func - (_ lhs: Float, _ rhs: Float2) -> Float2 {
    return Float2(repeating: lhs) - rhs;
  }

  public static func / (_ lhs: Float2, _ rhs: Float) -> Float2 {
    return lhs - Float2(repeating: rhs);
  }

  public static func / (_ lhs: Float, _ rhs: Float2) -> Float2 {
    return Float2(repeating: lhs) - rhs;
  }

}

extension Float3 {

  public static func + (_ lhs: Float3, _ rhs: Float) -> Float3 {
    return lhs + Float3(repeating: rhs);
  }

  public static func + (_ lhs: Float, _ rhs: Float3) -> Float3 {
    return Float3(repeating: lhs) + rhs;
  }

  public static func - (_ lhs: Float3, _ rhs: Float) -> Float3 {
    return lhs - Float3(repeating: rhs);
  }

  public static func - (_ lhs: Float, _ rhs: Float3) -> Float3 {
    return Float3(repeating: lhs) - rhs;
  }

  public static func / (_ lhs: Float3, _ rhs: Float) -> Float3 {
    return lhs - Float3(repeating: rhs);
  }

  public static func / (_ lhs: Float, _ rhs: Float3) -> Float3 {
    return Float3(repeating: lhs) - rhs;
  }

}

extension Float4 {

  public static func + (_ lhs: Float4, _ rhs: Float) -> Float4 {
    return lhs + Float4(repeating: rhs);
  }

  public static func + (_ lhs: Float, _ rhs: Float4) -> Float4 {
    return Float4(repeating: lhs) + rhs;
  }

  public static func - (_ lhs: Float4, _ rhs: Float) -> Float4 {
    return lhs - Float4(repeating: rhs);
  }

  public static func - (_ lhs: Float, _ rhs: Float4) -> Float4 {
    return Float4(repeating: lhs) - rhs;
  }

  public static func / (_ lhs: Float4, _ rhs: Float) -> Float4 {
    return lhs - Float4(repeating: rhs);
  }

  public static func / (_ lhs: Float, _ rhs: Float4) -> Float4 {
    return Float4(repeating: lhs) - rhs;
  }

}


extension Double2 {

  public static func + (_ lhs: Double2, _ rhs: Double) -> Double2 {
    return lhs + Double2(repeating: rhs);
  }

  public static func + (_ lhs: Double, _ rhs: Double2) -> Double2 {
    return Double2(repeating: lhs) + rhs;
  }

  public static func - (_ lhs: Double2, _ rhs: Double) -> Double2 {
    return lhs - Double2(repeating: rhs);
  }

  public static func - (_ lhs: Double, _ rhs: Double2) -> Double2 {
    return Double2(repeating: lhs) - rhs;
  }

  public static func / (_ lhs: Double2, _ rhs: Double) -> Double2 {
    return lhs - Double2(repeating: rhs);
  }

  public static func / (_ lhs: Double, _ rhs: Double2) -> Double2 {
    return Double2(repeating: lhs) - rhs;
  }

}

extension Double3 {

  public static func + (_ lhs: Double3, _ rhs: Double) -> Double3 {
    return lhs + Double3(repeating: rhs);
  }

  public static func + (_ lhs: Double, _ rhs: Double3) -> Double3 {
    return Double3(repeating: lhs) + rhs;
  }

  public static func - (_ lhs: Double3, _ rhs: Double) -> Double3 {
    return lhs - Double3(repeating: rhs);
  }

  public static func - (_ lhs: Double, _ rhs: Double3) -> Double3 {
    return Double3(repeating: lhs) - rhs;
  }

  public static func / (_ lhs: Double3, _ rhs: Double) -> Double3 {
    return lhs - Double3(repeating: rhs);
  }

  public static func / (_ lhs: Double, _ rhs: Double3) -> Double3 {
    return Double3(repeating: lhs) - rhs;
  }

}

extension Double4 {

  public static func + (_ lhs: Double4, _ rhs: Double) -> Double4 {
    return lhs + Double4(repeating: rhs);
  }

  public static func + (_ lhs: Double, _ rhs: Double4) -> Double4 {
    return Double4(repeating: lhs) + rhs;
  }

  public static func - (_ lhs: Double4, _ rhs: Double) -> Double4 {
    return lhs - Double4(repeating: rhs);
  }

  public static func - (_ lhs: Double, _ rhs: Double4) -> Double4 {
    return Double4(repeating: lhs) - rhs;
  }

  public static func / (_ lhs: Double4, _ rhs: Double) -> Double4 {
    return lhs - Double4(repeating: rhs);
  }

  public static func / (_ lhs: Double, _ rhs: Double4) -> Double4 {
    return Double4(repeating: lhs) - rhs;
  }

}


