//
//  MatrixInit.swift
//  Math3d
//
//  Provides Matrix initializers from
//  all other matrix, vector & quaternion
//  types
//
//  Created by Kevin Wooten on 6/4/17.
//  Copyright © 2017 Outfox, Inc. All rights reserved.
//

import Foundation



extension Float2x2 {

  public init(_ x: Float2, _ y: Float2) {
    self.init([x, y])
  }

  public init(_ m: Float2x3) {
    self.init(m[0][0], m[1][0],
              m[0][1], m[1][1])
  }

  public init(_ m: Float2x4) {
    self.init(m[0][0], m[1][0],
              m[0][1], m[1][1])
  }

  public init(_ m: Float3x2) {
    self.init(m[0][0], m[1][0],
              m[0][1], m[1][1])
  }

  public init(_ m: Float3x3) {
    self.init(m[0][0], m[1][0],
              m[0][1], m[1][1])
  }

  public init(_ m: Float3x4) {
    self.init(m[0][0], m[1][0],
              m[0][1], m[1][1])
  }

  public init(_ m: Float4x2) {
    self.init(m[0][0], m[1][0],
              m[0][1], m[1][1])
  }

  public init(_ m: Float4x3) {
    self.init(m[0][0], m[1][0],
              m[0][1], m[1][1])
  }

  public init(_ m: Float4x4) {
    self.init(m[0][0], m[1][0],
              m[0][1], m[1][1])
  }

  public init(_ m00: Float, _ m10: Float,
              _ m01: Float, _ m11: Float) {
    self.init(Float2(m00, m01), Float2(m10, m11))
  }

}



extension Float2x3 {

  public init(_ x: Float3, _ y: Float3) {
    self.init([x, y])
  }

  public init(_ m: Float2x2) {
    self.init(m[0][0], m[1][0],
              m[0][1], m[1][1],
                    0,       0)
  }

  public init(_ m: Float2x4) {
    self.init(m[0][0], m[1][0],
              m[0][1], m[1][1],
              m[0][2], m[1][2])
  }

  public init(_ m: Float3x2) {
    self.init(m[0][0], m[1][0],
              m[0][1], m[1][1],
                    0,       0)
  }

  public init(_ m: Float3x3) {
    self.init(m[0][0], m[1][0],
              m[0][1], m[1][1],
              m[0][2], m[1][2])
  }

  public init(_ m: Float3x4) {
    self.init(m[0][0], m[1][0],
              m[0][1], m[1][1],
              m[0][2], m[1][2])
  }

  public init(_ m: Float4x2) {
    self.init(m[0][0], m[1][0],
              m[0][1], m[1][1],
                    0,       0)
  }

  public init(_ m: Float4x3) {
    self.init(m[0][0], m[1][0],
              m[0][1], m[1][1],
              m[0][2], m[1][2])
  }

  public init(_ m: Float4x4) {
    self.init(m[0][0], m[1][0],
              m[0][1], m[1][1],
              m[0][2], m[1][2])
  }

  public init(_ m00: Float, _ m10: Float,
              _ m01: Float, _ m11: Float,
              _ m02: Float, _ m12: Float) {
    self.init(Float3(m00, m01, m02), Float3(m10, m11, m12))
  }

}



extension Float2x4 {

  public init(_ x: Float4, _ y: Float4) {
    self.init([x, y])
  }

  public init(_ m: Float2x2) {
    self.init(m[0][0], m[1][0],
              m[0][1], m[1][1],
                    0,       0,
                    0,       0)
  }

  public init(_ m: Float2x3) {
    self.init(m[0][0], m[1][0],
              m[0][1], m[1][1],
              m[0][2], m[1][2],
                    0,       0)
  }

  public init(_ m: Float3x2) {
    self.init(m[0][0], m[1][0],
              m[0][1], m[1][1],
                    0,       0,
                    0,       0)
  }

  public init(_ m: Float3x3) {
    self.init(m[0][0], m[1][0],
              m[0][1], m[1][1],
              m[0][2], m[1][2],
                    0,       0)
  }

  public init(_ m: Float3x4) {
    self.init(m[0][0], m[1][0],
              m[0][1], m[1][1],
              m[0][2], m[1][2],
              m[0][3], m[1][3])
  }

  public init(_ m: Float4x2) {
    self.init(m[0][0], m[1][0],
              m[0][1], m[1][1],
                    0,       0,
                    0,       0)
  }

  public init(_ m: Float4x3) {
    self.init(m[0][0], m[1][0],
              m[0][1], m[1][1],
              m[0][2], m[1][2],
                    0,       0)
  }

  public init(_ m: Float4x4) {
    self.init(m[0][0], m[1][0],
              m[0][1], m[1][1],
              m[0][2], m[1][2],
              m[0][3], m[1][3])
  }

  public init(_ m00: Float, _ m10: Float,
              _ m01: Float, _ m11: Float,
              _ m02: Float, _ m12: Float,
              _ m03: Float, _ m13: Float) {
    self.init(Float4(m00, m01, m02, m03), Float4(m10, m11, m12, m13))
  }

}



extension Float3x2 {

  public init(_ x: Float2, _ y: Float2, _ z: Float2) {
    self.init([x, y, z])
  }

  public init(_ m: Float2x2) {
    self.init(m[0][0], m[1][0],       0,
              m[0][1], m[1][1],       0)
  }

  public init(_ m: Float2x3) {
    self.init(m[0][0], m[1][0],       0,
              m[0][1], m[1][1],       0)
  }

  public init(_ m: Float2x4) {
    self.init(m[0][0], m[1][0],       0,
              m[0][1], m[1][1],       0)
  }

  public init(_ m: Float3x3) {
    self.init(m[0][0], m[1][0], m[2][0],
              m[0][1], m[1][1], m[2][1])
  }

  public init(_ m: Float3x4) {
    self.init(m[0][0], m[1][0], m[2][0],
              m[0][1], m[1][1], m[2][1])
  }

  public init(_ m: Float4x2) {
    self.init(m[0][0], m[1][0], m[2][0],
              m[0][1], m[1][1], m[2][1])
  }

  public init(_ m: Float4x3) {
    self.init(m[0][0], m[1][0], m[2][0],
              m[0][1], m[1][1], m[2][1])
  }

  public init(_ m: Float4x4) {
    self.init(m[0][0], m[1][0], m[2][0],
              m[0][1], m[1][1], m[2][1])
  }

  public init(_ m00: Float, _ m10: Float, _ m20: Float,
              _ m01: Float, _ m11: Float, _ m21: Float) {
    self.init(Float2(m00, m01), Float2(m10, m11), Float2(m20, m21))
  }

}



extension Float3x3 {

  public init(_ x: Float3, _ y: Float3, _ z: Float3) {
    self.init([x, y, z])
  }

  public init(_ m: Float2x2) {
    self.init(m[0][0], m[1][0],       0,
              m[0][1], m[1][1],       0,
                    0,       0,       1)
  }

  public init(_ m: Float2x3) {
    self.init(m[0][0], m[1][0],       0,
              m[0][1], m[1][1],       0,
              m[0][2], m[1][2],       1)
  }

  public init(_ m: Float2x4) {
    self.init(m[0][0], m[1][0],       0,
              m[0][1], m[1][1],       0,
              m[0][2], m[1][2],       1)
  }

  public init(_ m: Float3x2) {
    self.init(m[0][0], m[1][0], m[2][0],
              m[0][1], m[1][1], m[2][1],
                    0,       0,       1)
  }

  public init(_ m: Float3x4) {
    self.init(m[0][0], m[1][0], m[2][0],
              m[0][1], m[1][1], m[2][1],
              m[0][2], m[1][2], m[2][2])
  }

  public init(_ m: Float4x2) {
    self.init(m[0][0], m[1][0], m[2][0],
              m[0][1], m[1][1], m[2][1],
                    0,       0,       1)
  }

  public init(_ m: Float4x3) {
    self.init(m[0][0], m[1][0], m[2][0],
              m[0][1], m[1][1], m[2][1],
              m[0][2], m[1][2], m[2][2])
  }

  public init(_ m: Float4x4) {
    self.init(m[0][0], m[1][0], m[2][0],
              m[0][1], m[1][1], m[2][1],
              m[0][2], m[1][2], m[2][2])
  }

  public init(_ m00: Float, _ m10: Float, _ m20: Float,
              _ m01: Float, _ m11: Float, _ m21: Float,
              _ m02: Float, _ m12: Float, _ m22: Float) {
    self.init(Float3(m00, m01, m02), Float3(m10, m11, m12), Float3(m20, m21, m22))
  }

}



extension Float3x4 {

  public init(_ x: Float4, _ y: Float4, _ z: Float4) {
    self.init([x, y, z])
  }

  public init(_ m: Float2x2) {
    self.init(m[0][0], m[1][0],       0,
              m[0][1], m[1][1],       0,
                    0,       0,       1,
                    0,       0,       0)
  }

  public init(_ m: Float2x3) {
    self.init(m[0][0], m[1][0],       0,
              m[0][1], m[1][1],       0,
              m[0][2], m[1][2],       1,
                    0,       0,       0)
  }

  public init(_ m: Float2x4) {
    self.init(m[0][0], m[1][0],       0,
              m[0][1], m[1][1],       0,
              m[0][2], m[1][2],       1,
              m[0][3], m[1][3],       0)
  }

  public init(_ m: Float3x2) {
    self.init(m[0][0], m[1][0], m[2][0],
              m[0][1], m[1][1], m[2][1],
                    0,       0,       1,
                    0,       0,       0)
  }

  public init(_ m: Float3x3) {
    self.init(m[0][0], m[1][0], m[2][0],
              m[0][1], m[1][1], m[2][1],
              m[0][2], m[1][2], m[2][2],
                    0,       0,       0)
  }

  public init(_ m: Float4x2) {
    self.init(m[0][0], m[1][0], m[2][0],
              m[0][1], m[1][1], m[2][1],
                    0,       0,       1,
                    0,       0,       0)
  }

  public init(_ m: Float4x3) {
    self.init(m[0][0], m[1][0], m[2][0],
              m[0][1], m[1][1], m[2][1],
              m[0][2], m[1][2], m[2][2],
                    0,       0,       0)
  }

  public init(_ m: Float4x4) {
    self.init(m[0][0], m[1][0], m[2][0],
              m[0][1], m[1][1], m[2][1],
              m[0][2], m[1][2], m[2][2],
              m[0][3], m[1][3], m[2][3])
  }

  public init(_ m00: Float, _ m10: Float, _ m20: Float,
              _ m01: Float, _ m11: Float, _ m21: Float,
              _ m02: Float, _ m12: Float, _ m22: Float,
              _ m03: Float, _ m13: Float, _ m23: Float) {
    self.init(Float4(m00, m01, m02, m03), Float4(m10, m11, m12, m13), Float4(m20, m21, m22, m23))
  }

}



extension Float4x2 {

  public init(_ x: Float2, _ y: Float2, _ z: Float2, _ w: Float2) {
    self.init([x, y, z, w])
  }

  public init(_ m: Float2x2) {
    self.init(m[0][0], m[1][0],       0,       0,
              m[0][1], m[1][1],       0,       0)
  }

  public init(_ m: Float2x3) {
    self.init(m[0][0], m[1][0],       0,       0,
              m[0][1], m[1][1],       0,       0)
  }

  public init(_ m: Float2x4) {
    self.init(m[0][0], m[1][0],       0,       0,
              m[0][1], m[1][1],       0,       0)
  }

  public init(_ m: Float3x2) {
    self.init(m[0][0], m[1][0], m[2][0],       0,
              m[0][1], m[1][1], m[2][1],       0)
  }

  public init(_ m: Float3x3) {
    self.init(m[0][0], m[1][0], m[2][0],       0,
              m[0][1], m[1][1], m[2][1],       0)
  }

  public init(_ m: Float3x4) {
    self.init(m[0][0], m[1][0], m[2][0],       0,
              m[0][1], m[1][1], m[2][1],       0)
  }

  public init(_ m: Float4x3) {
    self.init(m[0][0], m[1][0], m[2][0], m[3][0],
              m[0][1], m[1][1], m[2][1], m[3][1])
  }

  public init(_ m: Float4x4) {
    self.init(m[0][0], m[1][0], m[2][0], m[3][0],
              m[0][1], m[1][1], m[2][1], m[3][1])
  }

  public init(_ m00: Float, _ m10: Float, _ m20: Float, _ m30: Float,
              _ m01: Float, _ m11: Float, _ m21: Float, _ m31: Float) {
    self.init(Float2(m00, m01), Float2(m10, m11), Float2(m20, m21), Float2(m30, m31))
  }

}



extension Float4x3 {

  public init(_ x: Float3, _ y: Float3, _ z: Float3, _ w: Float3) {
    self.init([x, y, z, w])
  }

  public init(_ m: Float2x2) {
    self.init(m[0][0], m[1][0],       0,       0,
              m[0][1], m[1][1],       0,       0,
                    0,       0,       1,       0)
  }

  public init(_ m: Float2x3) {
    self.init(m[0][0], m[1][0],       0,       0,
              m[0][1], m[1][1],       0,       0,
              m[0][2], m[1][2],       1,       0)
  }

  public init(_ m: Float2x4) {
    self.init(m[0][0], m[1][0],       0,       0,
              m[0][1], m[1][1],       0,       0,
              m[0][2], m[1][2],       1,       0)
  }

  public init(_ m: Float3x2) {
    self.init(m[0][0], m[1][0], m[2][0],       0,
              m[0][1], m[1][1], m[2][1],       0,
                    0,       0,       1,       0)
  }

  public init(_ m: Float3x3) {
    self.init(m[0][0], m[1][0], m[2][0],       0,
              m[0][1], m[1][1], m[2][1],       0,
              m[0][2], m[1][2], m[2][2],       0)
  }

  public init(_ m: Float3x4) {
    self.init(m[0][0], m[1][0], m[2][0],       0,
              m[0][1], m[1][1], m[2][1],       0,
              m[0][2], m[1][2], m[2][2],       0)
  }

  public init(_ m: Float4x2) {
    self.init(m[0][0], m[1][0], m[2][0], m[3][0],
              m[0][1], m[1][1], m[2][1], m[3][1],
                    0,       0,       1,       0)
  }

  public init(_ m: Float4x4) {
    self.init(m[0][0], m[1][0], m[2][0], m[3][0],
              m[0][1], m[1][1], m[2][1], m[3][1],
              m[0][2], m[1][2], m[2][2], m[3][2])
  }

  public init(_ m00: Float, _ m10: Float, _ m20: Float, _ m30: Float,
              _ m01: Float, _ m11: Float, _ m21: Float, _ m31: Float,
              _ m02: Float, _ m12: Float, _ m22: Float, _ m32: Float) {
    self.init(Float3(m00, m01, m02), Float3(m10, m11, m12), Float3(m20, m21, m22), Float3(m30, m31, m32))
  }

}



extension Float4x4 {

  public init(_ x: Float4, _ y: Float4, _ z: Float4, _ w: Float4) {
    self.init([x, y, z, w])
  }

  public init(_ m: Float2x2) {
    self.init(m[0][0], m[1][0],       0,       0,
              m[0][1], m[1][1],       0,       0,
                    0,       0,       1,       0,
                    0,       0,       0,       1)
  }

  public init(_ m: Float2x3) {
    self.init(m[0][0], m[1][0],       0,       0,
              m[0][1], m[1][1],       0,       0,
              m[0][2], m[1][2],       1,       0,
                    0,       0,       0,       1)
  }

  public init(_ m: Float2x4) {
    self.init(m[0][0], m[1][0],       0,       0,
              m[0][1], m[1][1],       0,       0,
              m[0][2], m[1][2],       1,       0,
              m[0][3], m[1][3],       0,       1)
  }

  public init(_ m: Float3x2) {
    self.init(m[0][0], m[1][0], m[2][0],       0,
              m[0][1], m[1][1], m[2][1],       0,
                    0,       0,       1,       0,
                    0,       0,       0,       1)
  }

  public init(_ m: Float3x3) {
    self.init(m[0][0], m[1][0], m[2][0],       0,
              m[0][1], m[1][1], m[2][1],       0,
              m[0][2], m[1][2], m[2][2],       0,
                    0,       0,       0,       1)
  }

  public init(_ m: Float3x4) {
    self.init(m[0][0], m[1][0], m[2][0],       0,
              m[0][1], m[1][1], m[2][1],       0,
              m[0][2], m[1][2], m[2][2],       0,
              m[0][3], m[1][3], m[2][3],       1)
  }

  public init(_ m: Float4x2) {
    self.init(m[0][0], m[1][0], m[2][0], m[3][0],
              m[0][1], m[1][1], m[2][1], m[3][1],
                    0,       0,       1,       0,
                    0,       0,       0,       1)
  }

  public init(_ m: Float4x3) {
    self.init(m[0][0], m[1][0], m[2][0], m[3][0],
              m[0][1], m[1][1], m[2][1], m[3][1],
              m[0][2], m[1][2], m[2][2], m[3][2],
                    0,       0,       0,       1)
  }

  public init(_ m00: Float, _ m10: Float, _ m20: Float, _ m30: Float,
              _ m01: Float, _ m11: Float, _ m21: Float, _ m31: Float,
              _ m02: Float, _ m12: Float, _ m22: Float, _ m32: Float,
              _ m03: Float, _ m13: Float, _ m23: Float, _ m33: Float) {
    self.init(Float4(m00, m01, m02, m03), Float4(m10, m11, m12, m13),
              Float4(m20, m21, m22, m23), Float4(m30, m31, m32, m33))
  }

  public init(translation: Float3) {
    self.init(.xAxis, .yAxis, .zAxis, Float4(translation, 1))
  }

}



extension Double2x2 {

  public init(_ x: Double2, _ y: Double2) {
    self.init([x, y])
  }

  public init(_ m: Double2x3) {
    self.init(m[0][0], m[1][0],
              m[0][1], m[1][1])
  }

  public init(_ m: Double2x4) {
    self.init(m[0][0], m[1][0],
              m[0][1], m[1][1])
  }

  public init(_ m: Double3x2) {
    self.init(m[0][0], m[1][0],
              m[0][1], m[1][1])
  }

  public init(_ m: Double3x3) {
    self.init(m[0][0], m[1][0],
              m[0][1], m[1][1])
  }

  public init(_ m: Double3x4) {
    self.init(m[0][0], m[1][0],
              m[0][1], m[1][1])
  }

  public init(_ m: Double4x2) {
    self.init(m[0][0], m[1][0],
              m[0][1], m[1][1])
  }

  public init(_ m: Double4x3) {
    self.init(m[0][0], m[1][0],
              m[0][1], m[1][1])
  }

  public init(_ m: Double4x4) {
    self.init(m[0][0], m[1][0],
              m[0][1], m[1][1])
  }

  public init(_ m00: Double, _ m10: Double,
              _ m01: Double, _ m11: Double) {
    self.init(Double2(m00, m01), Double2(m10, m11))
  }

}



extension Double2x3 {

  public init(_ x: Double3, _ y: Double3) {
    self.init([x, y])
  }

  public init(_ m: Double2x2) {
    self.init(m[0][0], m[1][0],
              m[0][1], m[1][1],
                    0,       0)
  }

  public init(_ m: Double2x4) {
    self.init(m[0][0], m[1][0],
              m[0][1], m[1][1],
              m[0][2], m[1][2])
  }

  public init(_ m: Double3x2) {
    self.init(m[0][0], m[1][0],
              m[0][1], m[1][1],
                    0,       0)
  }

  public init(_ m: Double3x3) {
    self.init(m[0][0], m[1][0],
              m[0][1], m[1][1],
              m[0][2], m[1][2])
  }

  public init(_ m: Double3x4) {
    self.init(m[0][0], m[1][0],
              m[0][1], m[1][1],
              m[0][2], m[1][2])
  }

  public init(_ m: Double4x2) {
    self.init(m[0][0], m[1][0],
              m[0][1], m[1][1],
                    0,       0)
  }

  public init(_ m: Double4x3) {
    self.init(m[0][0], m[1][0],
              m[0][1], m[1][1],
              m[0][2], m[1][2])
  }

  public init(_ m: Double4x4) {
    self.init(m[0][0], m[1][0],
              m[0][1], m[1][1],
              m[0][2], m[1][2])
  }

  public init(_ m00: Double, _ m10: Double,
              _ m01: Double, _ m11: Double,
              _ m02: Double, _ m12: Double) {
    self.init(Double3(m00, m01, m02), Double3(m10, m11, m12))
  }

}



extension Double2x4 {

  public init(_ x: Double4, _ y: Double4) {
    self.init([x, y])
  }

  public init(_ m: Double2x2) {
    self.init(m[0][0], m[1][0],
              m[0][1], m[1][1],
                    0,       0,
                    0,       0)
  }

  public init(_ m: Double2x3) {
    self.init(m[0][0], m[1][0],
              m[0][1], m[1][1],
              m[0][2], m[1][2],
              0,       0)
  }

  public init(_ m: Double3x2) {
    self.init(m[0][0], m[1][0],
              m[0][1], m[1][1],
                    0,       0,
                    0,       0)
  }

  public init(_ m: Double3x3) {
    self.init(m[0][0], m[1][0],
              m[0][1], m[1][1],
              m[0][2], m[1][2],
                    0,       0)
  }

  public init(_ m: Double3x4) {
    self.init(m[0][0], m[1][0],
              m[0][1], m[1][1],
              m[0][2], m[1][2],
              m[0][3], m[1][3])
  }

  public init(_ m: Double4x2) {
    self.init(m[0][0], m[1][0],
              m[0][1], m[1][1],
                    0,       0,
                    0,       0)
  }

  public init(_ m: Double4x3) {
    self.init(m[0][0], m[1][0],
              m[0][1], m[1][1],
              m[0][2], m[1][2],
                    0,       0)
  }

  public init(_ m: Double4x4) {
    self.init(m[0][0], m[1][0],
              m[0][1], m[1][1],
              m[0][2], m[1][2],
              m[0][3], m[1][3])
  }

  public init(_ m00: Double, _ m10: Double,
              _ m01: Double, _ m11: Double,
              _ m02: Double, _ m12: Double,
              _ m03: Double, _ m13: Double) {
    self.init(Double4(m00, m01, m02, m03), Double4(m10, m11, m12, m13))
  }

}



extension Double3x2 {

  public init(_ x: Double2, _ y: Double2, _ z: Double2) {
    self.init([x, y, z])
  }

  public init(_ m: Double2x2) {
    self.init(m[0][0], m[1][0],       0,
              m[0][1], m[1][1],       0)
  }

  public init(_ m: Double2x3) {
    self.init(m[0][0], m[1][0],       0,
              m[0][1], m[1][1],       0)
  }

  public init(_ m: Double2x4) {
    self.init(m[0][0], m[1][0],       0,
              m[0][1], m[1][1],       0)
  }

  public init(_ m: Double3x3) {
    self.init(m[0][0], m[1][0], m[2][0],
              m[0][1], m[1][1], m[2][1])
  }

  public init(_ m: Double3x4) {
    self.init(m[0][0], m[1][0], m[2][0],
              m[0][1], m[1][1], m[2][1])
  }

  public init(_ m: Double4x2) {
    self.init(m[0][0], m[1][0], m[2][0],
              m[0][1], m[1][1], m[2][1])
  }

  public init(_ m: Double4x3) {
    self.init(m[0][0], m[1][0], m[2][0],
              m[0][1], m[1][1], m[2][1])
  }

  public init(_ m: Double4x4) {
    self.init(m[0][0], m[1][0], m[2][0],
              m[0][1], m[1][1], m[2][1])
  }

  public init(_ m00: Double, _ m10: Double, _ m20: Double,
              _ m01: Double, _ m11: Double, _ m21: Double) {
    self.init(Double2(m00, m01), Double2(m10, m11), Double2(m20, m21))
  }

}



extension Double3x3 {

  public init(_ x: Double3, _ y: Double3, _ z: Double3) {
    self.init([x, y, z])
  }

  public init(_ m: Double2x2) {
    self.init(m[0][0], m[1][0],       0,
              m[0][1], m[1][1],       0,
                    0,       0,       1)
  }

  public init(_ m: Double2x3) {
    self.init(m[0][0], m[1][0],       0,
              m[0][1], m[1][1],       0,
              m[0][2], m[1][2],       1)
  }

  public init(_ m: Double2x4) {
    self.init(m[0][0], m[1][0],       0,
              m[0][1], m[1][1],       0,
              m[0][2], m[1][2],       1)
  }

  public init(_ m: Double3x2) {
    self.init(m[0][0], m[1][0], m[2][0],
              m[0][1], m[1][1], m[2][1],
                    0,       0,       1)
  }

  public init(_ m: Double3x4) {
    self.init(m[0][0], m[1][0], m[2][0],
              m[0][1], m[1][1], m[2][1],
              m[0][2], m[1][2], m[2][2])
  }

  public init(_ m: Double4x2) {
    self.init(m[0][0], m[1][0], m[2][0],
              m[0][1], m[1][1], m[2][1],
                    0,       0,       1)
  }

  public init(_ m: Double4x3) {
    self.init(m[0][0], m[1][0], m[2][0],
              m[0][1], m[1][1], m[2][1],
              m[0][2], m[1][2], m[2][2])
  }

  public init(_ m: Double4x4) {
    self.init(m[0][0], m[1][0], m[2][0],
              m[0][1], m[1][1], m[2][1],
              m[0][2], m[1][2], m[2][2])
  }

  public init(_ m00: Double, _ m10: Double, _ m20: Double,
              _ m01: Double, _ m11: Double, _ m21: Double,
              _ m02: Double, _ m12: Double, _ m22: Double) {
    self.init(Double3(m00, m01, m02), Double3(m10, m11, m12), Double3(m20, m21, m22))
  }

  public init(_ q: DoubleQ) {

    let qxx = q.x * q.x
    let qyy = q.y * q.y
    let qzz = q.z * q.z
    let qxz = q.x * q.z
    let qxy = q.x * q.y
    let qyz = q.y * q.z
    let qwx = q.w * q.x
    let qwy = q.w * q.y
    let qwz = q.w * q.z

    self.init(1 - 2 * (qyy + qzz), 2 * (qxy - qwz),     2 * (qxz + qwy),
              2 * (qxy + qwz),     1 - 2 * (qxx + qzz), 2 * (qyz - qwx),
              2 * (qxz - qwy),     2 * (qyz + qwx),     1 - 2 * (qxx + qyy))
  }

}



extension Double3x4 {

  public init(_ x: Double4, _ y: Double4, _ z: Double4) {
    self.init([x, y, z])
  }

  public init(_ m: Double2x2) {
    self.init(m[0][0], m[1][0],       0,
              m[0][1], m[1][1],       0,
                    0,       0,       1,
                    0,       0,       0)
  }

  public init(_ m: Double2x3) {
    self.init(m[0][0], m[1][0],       0,
              m[0][1], m[1][1],       0,
              m[0][2], m[1][2],       1,
                    0,       0,       0)
  }

  public init(_ m: Double2x4) {
    self.init(m[0][0], m[1][0],       0,
              m[0][1], m[1][1],       0,
              m[0][2], m[1][2],       1,
              m[0][3], m[1][3],       0)
  }

  public init(_ m: Double3x2) {
    self.init(m[0][0], m[1][0], m[2][0],
              m[0][1], m[1][1], m[2][1],
                    0,       0,       1,
                    0,       0,       0)
  }

  public init(_ m: Double3x3) {
    self.init(m[0][0], m[1][0], m[2][0],
              m[0][1], m[1][1], m[2][1],
              m[0][2], m[1][2], m[2][2],
                    0,       0,       0)
  }

  public init(_ m: Double4x2) {
    self.init(m[0][0], m[1][0], m[2][0],
              m[0][1], m[1][1], m[2][1],
                    0,       0,       1,
                    0,       0,       0)
  }

  public init(_ m: Double4x3) {
    self.init(m[0][0], m[1][0], m[2][0],
              m[0][1], m[1][1], m[2][1],
              m[0][2], m[1][2], m[2][2],
                    0,       0,       0)
  }

  public init(_ m: Double4x4) {
    self.init(m[0][0], m[1][0], m[2][0],
              m[0][1], m[1][1], m[2][1],
              m[0][2], m[1][2], m[2][2],
              m[0][3], m[1][3], m[2][3])
  }

  public init(_ m00: Double, _ m10: Double, _ m20: Double,
              _ m01: Double, _ m11: Double, _ m21: Double,
              _ m02: Double, _ m12: Double, _ m22: Double,
              _ m03: Double, _ m13: Double, _ m23: Double) {
    self.init(Double4(m00, m01, m02, m03), Double4(m10, m11, m12, m13), Double4(m20, m21, m22, m23))
  }

}



extension Double4x2 {

  public init(_ m: Double2x2) {
    self.init(m[0][0], m[1][0],       0,       0,
              m[0][1], m[1][1],       0,       0)
  }

  public init(_ m: Double2x3) {
    self.init(m[0][0], m[1][0],       0,       0,
              m[0][1], m[1][1],       0,       0)
  }

  public init(_ m: Double2x4) {
    self.init(m[0][0], m[1][0],       0,       0,
              m[0][1], m[1][1],       0,       0)
  }

  public init(_ m: Double3x2) {
    self.init(m[0][0], m[1][0], m[2][0],       0,
              m[0][1], m[1][1], m[2][1],       0)
  }

  public init(_ m: Double3x3) {
    self.init(m[0][0], m[1][0], m[2][0],       0,
              m[0][1], m[1][1], m[2][1],       0)
  }

  public init(_ m: Double3x4) {
    self.init(m[0][0], m[1][0], m[2][0],       0,
              m[0][1], m[1][1], m[2][1],       0)
  }

  public init(_ m: Double4x3) {
    self.init(m[0][0], m[1][0], m[2][0], m[3][0],
              m[0][1], m[1][1], m[2][1], m[3][1])
  }

  public init(_ m: Double4x4) {
    self.init(m[0][0], m[1][0], m[2][0], m[3][0],
              m[0][1], m[1][1], m[2][1], m[3][1])
  }

  public init(_ x: Double2, _ y: Double2, _ z: Double2, _ w: Double2) {
    self.init([x, y, z, w])
  }

  public init(_ m00: Double, _ m10: Double, _ m20: Double, _ m30: Double,
              _ m01: Double, _ m11: Double, _ m21: Double, _ m31: Double) {
    self.init(Double2(m00, m01), Double2(m10, m11), Double2(m20, m21), Double2(m30, m31))
  }

}



extension Double4x3 {

  public init(_ x: Double3, _ y: Double3, _ z: Double3, _ w: Double3) {
    self.init([x, y, z, w])
  }

  public init(_ m: Double2x2) {
    self.init(m[0][0], m[1][0],       0,       0,
              m[0][1], m[1][1],       0,       0,
                    0,       0,       1,       0)
  }

  public init(_ m: Double2x3) {
    self.init(m[0][0], m[1][0],       0,       0,
              m[0][1], m[1][1],       0,       0,
              m[0][2], m[1][2],       1,       0)
  }

  public init(_ m: Double2x4) {
    self.init(m[0][0], m[1][0],       0,       0,
              m[0][1], m[1][1],       0,       0,
              m[0][2], m[1][2],       1,       0)
  }

  public init(_ m: Double3x2) {
    self.init(m[0][0], m[1][0], m[2][0],       0,
              m[0][1], m[1][1], m[2][1],       0,
                    0,       0,       1,       0)
  }

  public init(_ m: Double3x3) {
    self.init(m[0][0], m[1][0], m[2][0],       0,
              m[0][1], m[1][1], m[2][1],       0,
              m[0][2], m[1][2], m[2][2],       0)
  }

  public init(_ m: Double3x4) {
    self.init(m[0][0], m[1][0], m[2][0],       0,
              m[0][1], m[1][1], m[2][1],       0,
              m[0][2], m[1][2], m[2][2],       0)
  }

  public init(_ m: Double4x2) {
    self.init(m[0][0], m[1][0], m[2][0], m[3][0],
              m[0][1], m[1][1], m[2][1], m[3][1],
                    0,       0,       1,       0)
  }

  public init(_ m: Double4x4) {
    self.init(m[0][0], m[1][0], m[2][0], m[3][0],
              m[0][1], m[1][1], m[2][1], m[3][1],
              m[0][2], m[1][2], m[2][2], m[3][2])
  }

  public init(_ m00: Double, _ m10: Double, _ m20: Double, _ m30: Double,
              _ m01: Double, _ m11: Double, _ m21: Double, _ m31: Double,
              _ m02: Double, _ m12: Double, _ m22: Double, _ m32: Double) {
    self.init(Double3(m00, m01, m02), Double3(m10, m11, m12), Double3(m20, m21, m22), Double3(m30, m31, m32))
  }

}



extension Double4x4 {

  public init(_ x: Double4, _ y: Double4, _ z: Double4, _ w: Double4) {
    self.init([x, y, z, w])
  }

  public init(_ m: Double2x2) {
    self.init(m[0][0], m[1][0],       0,       0,
              m[0][1], m[1][1],       0,       0,
                    0,       0,       1,       0,
                    0,       0,       0,       1)
  }

  public init(_ m: Double2x3) {
    self.init(m[0][0], m[1][0],       0,       0,
              m[0][1], m[1][1],       0,       0,
              m[0][2], m[1][2],       1,       0,
                    0,       0,       0,       1)
  }

  public init(_ m: Double2x4) {
    self.init(m[0][0], m[1][0],       0,       0,
              m[0][1], m[1][1],       0,       0,
              m[0][2], m[1][2],       1,       0,
              m[0][3], m[1][3],       0,       1)
  }

  public init(_ m: Double3x2) {
    self.init(m[0][0], m[1][0], m[2][0],       0,
              m[0][1], m[1][1], m[2][1],       0,
                    0,       0,       1,       0,
                    0,       0,       0,       1)
  }

  public init(_ m: Double3x3) {
    self.init(m[0][0], m[1][0], m[2][0],       0,
              m[0][1], m[1][1], m[2][1],       0,
              m[0][2], m[1][2], m[2][2],       0,
                    0,       0,       0,       1)
  }

  public init(_ m: Double3x4) {
    self.init(m[0][0], m[1][0], m[2][0],       0,
              m[0][1], m[1][1], m[2][1],       0,
              m[0][2], m[1][2], m[2][2],       0,
              m[0][3], m[1][3], m[2][3],       1)
  }

  public init(_ m: Double4x2) {
    self.init(m[0][0], m[1][0], m[2][0], m[3][0],
              m[0][1], m[1][1], m[2][1], m[3][1],
                    0,       0,       1,       0,
                    0,       0,       0,       1)
  }

  public init(_ m: Double4x3) {
    self.init(m[0][0], m[1][0], m[2][0], m[3][0],
              m[0][1], m[1][1], m[2][1], m[3][1],
              m[0][2], m[1][2], m[2][2], m[3][2],
                    0,       0,       0,       1)
  }

  public init(_ m00: Double, _ m10: Double, _ m20: Double, _ m30: Double,
              _ m01: Double, _ m11: Double, _ m21: Double, _ m31: Double,
              _ m02: Double, _ m12: Double, _ m22: Double, _ m32: Double,
              _ m03: Double, _ m13: Double, _ m23: Double, _ m33: Double) {
    self.init(Double4(m00, m01, m02, m03), Double4(m10, m11, m12, m13),
              Double4(m20, m21, m22, m23), Double4(m30, m31, m32, m33))
  }

  public init(translation: Double3) {
    self.init(.xAxis, .yAxis, .zAxis, Double4(translation, 1))
  }

  public init(_ q: DoubleQ) {

    let qxx = q.x * q.x
    let qyy = q.y * q.y
    let qzz = q.z * q.z
    let qxz = q.x * q.z
    let qxy = q.x * q.y
    let qyz = q.y * q.z
    let qwx = q.w * q.x
    let qwy = q.w * q.y
    let qwz = q.w * q.z

    self.init(1 - 2 * (qyy + qzz), 2 * (qxy - qwz),     2 * (qxz + qwy),      0,
              2 * (qxy + qwz),     1 - 2 * (qxx + qzz), 2 * (qyz - qwx),      0,
              2 * (qxz - qwy),     2 * (qyz + qwx),     1 - 2 * (qxx + qyy),  0,
                                0,                   0,                   0,  1)
  }

}
