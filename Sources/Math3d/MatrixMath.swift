//
//  MatrixMath.swift
//  Math3d
//
//  Provides determinent property plus transpose &
//  inverse functions
//
//  Created by Kevin Wooten on 6/4/17.
//  Copyright © 2017 Outfox, Inc. All rights reserved.
//

import Foundation



extension Float2x2 {
}

/// Return the determinant of a squared matrix.
public func determinant(_ m: Float2x2) -> Float {
  return m[0,0] * m[1,1] - m[0,1] * m[1,0]
}

public func transposed(_ m: Float2x2) -> Float2x2 {
  return m.transpose
}

public func inversed(_ m: Float2x2) -> Float2x2 {
  return m.inverse
}



extension Float2x3 {
}

public func transposed(_ m: Float2x3) -> Float3x2 {
  return m.transpose
}



extension Float2x4 {
}

public func transposed(_ m: Float2x4) -> Float4x2 {
  return m.transpose
}



extension Float3x2 {
}

public func transposed(_ m: Float3x2) -> Float2x3 {
  return m.transpose
}



extension Float3x3 {
}

/// Return the determinant of a squared matrix.
public func determinant(_ m: Float3x3) -> Float {
  let t1 = m[0,0] * (m[1,1] * m[2,2] - m[2,1] * m[1,2])
  let t2 = -m[1,0] * (m[0,1] * m[2,2] - m[2,1] * m[0,2])
  let t3 = m[2,0] * (m[0,1] * m[1,2] - m[1,1] * m[0,2])
  return t1 + t2 + t3
}

public func transposed(_ m: Float3x3) -> Float3x3 {
  return m.transpose
}

public func inversed(_ m: Float3x3) -> Float3x3 {
  return m.inverse
}



extension Float3x4 {
}

public func transposed(_ m: Float3x4) -> Float4x3 {
  return m.transpose
}



extension Float4x2 {
}

public func transposed(_ m: Float4x2) -> Float2x4 {
  return m.transpose
}



extension Float4x3 {
}

public func transposed(_ m: Float4x3) -> Float3x4 {
  return m.transpose
}



extension Float4x4 {
}

/// Return the determinant of a squared matrix.
public func determinant(_ m: Float4x4) -> Float {
  let subFactor00 = m[2,2] * m[3,3] - m[3,2] * m[2,3]
  let subFactor01 = m[2,1] * m[3,3] - m[3,1] * m[2,3]
  let subFactor02 = m[2,1] * m[3,2] - m[3,1] * m[2,2]
  let subFactor03 = m[2,0] * m[3,3] - m[3,0] * m[2,3]
  let subFactor04 = m[2,0] * m[3,2] - m[3,0] * m[2,2]
  let subFactor05 = m[2,0] * m[3,1] - m[3,0] * m[2,1]

  let detCof = Float4(
    +(m[1,1] * subFactor00 - m[1,2] * subFactor01 + m[1,3] * subFactor02),
    -(m[1,0] * subFactor00 - m[1,2] * subFactor03 + m[1,3] * subFactor04),
    +(m[1,0] * subFactor01 - m[1,1] * subFactor03 + m[1,3] * subFactor05),
    -(m[1,0] * subFactor02 - m[1,1] * subFactor04 + m[1,2] * subFactor05)
  )

  return
    m[0,0] * detCof[0] + m[0,1] * detCof[1] +
    m[0,2] * detCof[2] + m[0,3] * detCof[3]
}

public func transposed(_ m: Float4x4) -> Float4x4 {
  return m.transpose
}

public func inversed(_ m: Float4x4) -> Float4x4 {
  return m.inverse
}



extension Double2x2 {
}

/// Return the determinant of a squared matrix.
public func determinant(_ m: Double2x2) -> Double {
  return m[0,0] * m[1,1] - m[0,1] * m[1,0]
}

public func transposed(_ m: Double2x2) -> Double2x2 {
  return m.transpose
}

public func inversed(_ m: Double2x2) -> Double2x2 {
  return m.inverse
}



extension Double2x3 {
}

public func transposed(_ m: Double2x3) -> Double3x2 {
  return m.transpose
}



extension Double2x4 {
}

public func transposed(_ m: Double2x4) -> Double4x2 {
  return m.transpose
}



extension Double3x2 {
}

public func transposed(_ m: Double3x2) -> Double2x3 {
  return m.transpose
}



extension Double3x3 {
}

/// Return the determinant of a squared matrix.
public func determinant(_ m: Double3x3) -> Double {
  let t1 = m[0,0] * (m[1,1] * m[2,2] - m[2,1] * m[1,2])
  let t2 = -m[1,0] * (m[0,1] * m[2,2] - m[2,1] * m[0,2])
  let t3 = m[2,0] * (m[0,1] * m[1,2] - m[1,1] * m[0,2])
  return t1 + t2 + t3
}

public func transposed(_ m: Double3x3) -> Double3x3 {
  return m.transpose
}

public func inversed(_ m: Double3x3) -> Double3x3 {
  return m.inverse
}



extension Double3x4 {
}

public func transposed(_ m: Double3x4) -> Double4x3 {
  return m.transpose
}



extension Double4x2 {
}

public func transposed(_ m: Double4x2) -> Double2x4 {
  return m.transpose
}



extension Double4x3 {
}

public func transposed(_ m: Double4x3) -> Double3x4 {
  return m.transpose
}



extension Double4x4 {
}

/// Return the determinant of a squared matrix.
public func determinant(_ m: Double4x4) -> Double {
  let subFactor00 = m[2,2] * m[3,3] - m[3,2] * m[2,3]
  let subFactor01 = m[2,1] * m[3,3] - m[3,1] * m[2,3]
  let subFactor02 = m[2,1] * m[3,2] - m[3,1] * m[2,2]
  let subFactor03 = m[2,0] * m[3,3] - m[3,0] * m[2,3]
  let subFactor04 = m[2,0] * m[3,2] - m[3,0] * m[2,2]
  let subFactor05 = m[2,0] * m[3,1] - m[3,0] * m[2,1]

  let detCof = Double4(
    +(m[1,1] * subFactor00 - m[1,2] * subFactor01 + m[1,3] * subFactor02),
    -(m[1,0] * subFactor00 - m[1,2] * subFactor03 + m[1,3] * subFactor04),
    +(m[1,0] * subFactor01 - m[1,1] * subFactor03 + m[1,3] * subFactor05),
    -(m[1,0] * subFactor02 - m[1,1] * subFactor04 + m[1,2] * subFactor05)
  )

  return
    m[0,0] * detCof[0] + m[0,1] * detCof[1] +
    m[0,2] * detCof[2] + m[0,3] * detCof[3]
}

public func transposed(_ m: Double4x4) -> Double4x4 {
  return m.transpose
}

public func inversed(_ m: Double4x4) -> Double4x4 {
  return m.inverse
}
