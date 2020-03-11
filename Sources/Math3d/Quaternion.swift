//
//  Quaternion.swift
//  Math3d
//
//  Provides Quaternion implementations
//
//  NOTE: Name is derived from GL naming
//  for vectors and matrices.
//
//  Created by Kevin Wooten on 6/3/17.
//  Copyright © 2017 Outfox, Inc. All rights reserved.
//

import Foundation
import simd


// MARK: Float Quaternion

public typealias FloatQ = simd_quatf

extension FloatQ: ExpressibleByArrayLiteral {

  public typealias ArrayLiteralElement = Float

  public static let identity = FloatQ(1, Float3(repeating: 0))

  public var x: Float { get { return vector.x } set { vector.x = newValue } }
  public var y: Float { get { return vector.y } set { vector.y = newValue } }
  public var z: Float { get { return vector.z } set { vector.z = newValue } }
  public var w: Float { get { return vector.w } set { vector.w = newValue } }

  /// Initialization from components
  ///
  /// - Parameters:
  ///   - w: Explicit W value
  ///   - v: 'XYZ' values as vector
  public init(_ w: Float, _ v: Float3) {
    self.init(real: w, imag: v)
  }

  /// Initialization from components
  ///
  /// - Parameters:
  ///   - w: Explicit W values
  ///   - x: Explicit X values
  ///   - y: Explicit Y values
  ///   - z: Explicit Z values
  public init(_ w: Float, _ x: Float, _ y: Float, _ z: Float) {
    self.init(ix: x, iy: y, iz: z, r: w)
  }

  /// Copy initialization
  ///
  /// - Parameter q: Source quaternion
  public init(_ q: FloatQ) {
    self.init(q.w, q.x, q.y, q.z)
  }

  /// Initialization with elements from `array`.
  ///
  /// - Precondition: `array` must have exactly four elements.
  /// - Parameter array: Source elements
  public init(_ array: [Float]) {
    precondition(array.count == 4)
    self.init(array[0], array[1], array[2], array[3])
  }

  /// Initialize from array literal
  ///
  /// - Precondition: the array literal must exactly four elements.
  /// - Parameter arrayLiteral: Source elements
  public init(arrayLiteral elements: Float...) {
    precondition(elements.count == 4)
    self.init(elements[0], elements[1], elements[2], elements[3])
  }

  /// Initialization from two normalized axis
  ///
  /// - Parameters:
  ///   - u: U axis
  ///   - v: V axis
  public init(u: Float3, v: Float3) {
    let src: Self
    let d1 = dot(u, v) + 1
    if d1 < 0.0001 {
      if abs(u.x) > abs (u.z) {
        src = Self(0, -u.y, u.x, 0)
      }
      else {
        src = Self(0, 0, -u.z, u.y)
      }
    }
    else {
      let c = cross(u, v)
      src = Self(d1, c.x, c.y, c.z)
    }
    self = src.normalized
  }

  /// Initialization from euler angles
  ///
  /// - Parameter euler: Euler angles vector
  public init(euler: Float3) {
    let c = cos(euler * 0.5)
    let s = sin(euler * 0.5)

    let w = c.x * c.y * c.z + s.x * s.y * s.z
    let x = s.x * c.y * c.z - c.x * s.y * s.z
    let y = c.x * s.y * c.z + s.x * c.y * s.z
    let z = c.x * c.y * s.z - s.x * s.y * c.z

    self = Self(w, x, y, z).normalized
  }

  /// Initialization from 3x3 matrix
  ///
  /// - Parameter m: Source matrix
  public init(_ m: Float3x3) {
    let fourXSquaredMinus1 = m[0][0] - m[1][1] - m[2][2]
    let fourYSquaredMinus1 = m[1][1] - m[0][0] - m[2][2]
    let fourZSquaredMinus1 = m[2][2] - m[0][0] - m[1][1]
    let fourWSquaredMinus1 = m[0][0] + m[1][1] + m[2][2]

    var biggestIndex = 0
    var fourBiggestSquaredMinus1 = fourWSquaredMinus1

    if fourXSquaredMinus1 > fourBiggestSquaredMinus1 {
      fourBiggestSquaredMinus1 = fourXSquaredMinus1
      biggestIndex = 1
    }
    if fourYSquaredMinus1 > fourBiggestSquaredMinus1 {
      fourBiggestSquaredMinus1 = fourYSquaredMinus1
      biggestIndex = 2
    }
    if fourZSquaredMinus1 > fourBiggestSquaredMinus1 {
      fourBiggestSquaredMinus1 = fourZSquaredMinus1
      biggestIndex = 3
    }

    let biggestVal = sqrt(fourBiggestSquaredMinus1 + 1) * 0.5
    let mult = 0.25 / biggestVal

    let w, x, y, z: Float
    switch (biggestIndex) {
    case 0:
      w = biggestVal
      x = (m[1][2] - m[2][1]) * mult
      y = (m[2][0] - m[0][2]) * mult
      z = (m[0][1] - m[1][0]) * mult
      break
    case 1:
      w = (m[1][2] - m[2][1]) * mult
      x = biggestVal
      y = (m[0][1] + m[1][0]) * mult
      z = (m[2][0] + m[0][2]) * mult
      break
    case 2:
      w = (m[2][0] - m[0][2]) * mult
      x = (m[0][1] + m[1][0]) * mult
      y = biggestVal
      z = (m[1][2] + m[2][1]) * mult
      break
    case 3:
      w = (m[0][1] - m[1][0]) * mult
      x = (m[2][0] + m[0][2]) * mult
      y = (m[1][2] + m[2][1]) * mult
      z = biggestVal
      break
      
    default:
      fatalError()
    }

    self = Self(w, x, y, z).normalized
  }

  /// Initialization from the 3x3 portion of
  /// a 4x4 matrix
  ///
  /// - Parameter m: Source matrix
  public init(_ m: Float4x4) {
    self.init(Float3x3(m))
  }

  public var debugDescription: String {
    get {
      return "FloatQ(w=\(w), x=\(x), y=\(y), z=\(z))"
    }
  }
}

public func *(q: FloatQ, v: Float3) -> Float3 {
  let qv = Float3(q.x, q.y, q.z)
  let uv = cross(qv, v)
  let uuv = cross(qv, uv)

  return v + ((uv * q.w) + uuv) * 2
}

public func *(v: Float3, q: FloatQ) -> Float3 {
  return inversed(q) * v
}

public func *(q: FloatQ, v: Float4) -> Float4 {
  return Float4(q * Float3(v), v.w)
}

public func *(v: Float4, q: FloatQ) -> Float4 {
  return inversed(q) * v
}

/// Returns the normalized quaternion.
public func normalized(_ q: FloatQ) -> FloatQ {
  return q.normalized
}

/// Returns the length of the quaternion.
public func length(_ q: FloatQ) -> Float {
  return sqrt(dot(q, q))
}

/// Returns the conjugate of the quaternion.
public func conjugated(_ q: FloatQ) -> FloatQ {
  return FloatQ(q.w, -q.x, -q.y, -q.z)
}

/// Returns the inverse of the quaternion.
public func inversed(_ q: FloatQ) -> FloatQ {
  return q.inverse
}

/// Returns dot product of quaternions
public func dot(_ q1: FloatQ, _ q2: FloatQ) -> Float {
  let tmp = Float4(q1.x * q2.x, q1.y * q2.y, q1.z * q2.z, q1.w * q2.w)
  return (tmp.x + tmp.y) + (tmp.z + tmp.w)
}

/// Spherical linear interpolation of two quaternions.
/// The interpolation is oriented and the rotation is performed at constant speed.
/// For short path spherical linear interpolation, use the slerp function.
public func mix(_ x: FloatQ, _ y: FloatQ, _ a: Float) -> FloatQ {
  let cosTheta = dot(x, y);

  // Perform a linear interpolation when cosTheta is close to 1 to avoid side effect of sin(angle) becoming a zero denominator
  if cosTheta > 1 - 0.0000001 {
    // Linear interpolation
    return FloatQ(
      mix(x.w, y.w, a),
      mix(x.x, y.x, a),
      mix(x.y, y.y, a),
      mix(x.z, y.z, a))

  }
  else {
    // Essential Mathematics, page 467
    let angle = acos(cosTheta)
    return (sin((1 - a) * angle) * x + sin(a * angle) * y) / sin(angle)
  }
}

/// Linear interpolation of two quaternions.
/// The interpolation is oriented.
public func lerp(_ x: FloatQ, _ y: FloatQ, _ a: Float) -> FloatQ {
  return x * (1 - a) + (y * a)
}

/// Spherical linear interpolation of two quaternions.
/// The interpolation always take the short path and the rotation is performed at constant speed.
public func slerp(_ x: FloatQ, _ y: FloatQ, _ a: Float) -> FloatQ {
  var z = y

  var cosTheta = dot(x, y)

  // If cosTheta < 0, the interpolation will take the long way around the sphere.
  // To fix this, one quat must be negated.
  if cosTheta < 0 {
    z = -y
    cosTheta = -cosTheta
  }

  // Perform a linear interpolation when cosTheta is close to 1 to avoid side effect of sin(angle) becoming a zero denominator
  if cosTheta > 1 - 0.0000001 {
    // Linear interpolation
    return FloatQ(
      mix(x.w, z.w, a),
      mix(x.x, z.x, a),
      mix(x.y, z.y, a),
      mix(x.z, z.z, a))
  }
  else {
    // Essential Mathematics, page 467
    let angle = acos(cosTheta)
    return (sin((1 - a) * angle) * x + sin(a * angle) * z) / sin(angle)
  }
}

/// Rotates a quaternion from a vector of 3 components axis and an angle.
public func rotate(_ q: FloatQ, angle: Float, axis: Float3) -> FloatQ {
  var tmp = axis

  // Axis of rotation must be normalised
  let len = length(tmp)
  if abs(len - 1) > 0.001 {
    let oneOverLen = 1 / len
    tmp *= oneOverLen
  }

  let s = sin(angle * 0.5)

  return q * FloatQ(cos(angle * 0.5), tmp.x * s, tmp.y * s, tmp.z * s)
}

/// Returns euler angles, yitch as x, yaw as y, roll as z.
public func euler(_ x: FloatQ) -> Float3 {
  return Float3(pitch(x), yaw(x), roll(x))
}

/// Returns roll value of euler angles expressed in radians.
public func roll(_ q: FloatQ) -> Float {
  return atan2(2 * (q.x * q.y + q.w * q.z), q.w * q.w + q.x * q.x - q.y * q.y - q.z * q.z)
}

/// Returns pitch value of euler angles expressed in radians.
public func pitch(_ q: FloatQ) -> Float {
  return atan2(2 * (q.y * q.z + q.w * q.x), q.w * q.w - q.x * q.x - q.y * q.y + q.z * q.z)
}

/// Returns yaw value of euler angles expressed in radians.
public func yaw(_ q: FloatQ) -> Float {
  return asin(-2 * (q.x * q.z - q.w * q.y))
}

/// Returns the quaternion rotation angle.
public func angle(q: FloatQ) -> Float {
  return acos(q.w) * 2
}

/// Returns the q rotation axis.
public func axis(q: FloatQ) -> Float3 {
  let tmp1 = 1 - q.w * q.w
  if tmp1 <= 0 {
    return Float3(0, 0, 1)
  }
  let tmp2 = 1 / sqrt(tmp1)
  return Float3(q.x * tmp2, q.y * tmp2, q.z * tmp2)
}



// MARK: Double Quaternion
public typealias DoubleQ = simd_quatd

extension DoubleQ: ExpressibleByArrayLiteral {

  public static let identity = DoubleQ(1, Double3(repeating: 0))

  public var x: Double { get { return vector.x } set { vector.x = newValue } }
  public var y: Double { get { return vector.y } set { vector.y = newValue } }
  public var z: Double { get { return vector.z } set { vector.z = newValue } }
  public var w: Double { get { return vector.w } set { vector.w = newValue } }

  /// Initialization from components
  ///
  /// - Parameters:
  ///   - w: Explicit W value
  ///   - v: 'XYZ' values as vector
  public init(_ w: Double, _ v: Double3) {
    self.init(w, v.x, v.y, v.z)
  }

  /// Initialization from a rotation value
  /// around a given axis
  ///
  /// - Parameters:
  ///   - angle: Angle of rotation
  ///   - axis: Axis or rotation
  public init(angle: Double, axis: Double3) {
    let s = sin(angle * 0.5)
    self.init(cos(angle * 0.5), axis.x * s, axis.y * s, axis.z * s)
  }

  /// Initialization from components
  ///
  /// - Parameters:
  ///   - w: Explicit W values
  ///   - x: Explicit X values
  ///   - y: Explicit Y values
  ///   - z: Explicit Z values
  public init(_ w: Double, _ x: Double, _ y: Double, _ z: Double) {
    self.init(vector: Double4(x, y, z, w))
  }

  /// Copy initialization
  ///
  /// - Parameter q: Source quaternion
  public init(_ q: DoubleQ) {
    self.init(q.w, q.x, q.y, q.z)
  }

  /// Initialization with elements from `array`.
  ///
  /// - Precondition: `array` must have exactly four elements.
  /// - Parameter array: Source elements
  public init(_ array: [Double]) {
    precondition(array.count == 4)
    self.init(array[0], array[1], array[2], array[3])
  }

  /// Initialize from array literal
  ///
  /// - Precondition: the array literal must exactly four elements.
  /// - Parameter arrayLiteral: Source elements
  public init(arrayLiteral elements: Double...) {
    precondition(elements.count == 4)
    self.init(elements[0], elements[1], elements[2], elements[3])
  }


  /// Initialization from two normalized axis
  ///
  /// - Parameters:
  ///   - u: U axis
  ///   - v: V axis
  public init(_ u: Double3, _ v: Double3) {
    let localW = cross(u, v)
    let d = dot(u, v)
    let q = DoubleQ(1 + d, localW.x, localW.y, localW.z)
    self.init(q.normalized)
  }

  /// Initialization from euler angles
  ///
  /// - Parameter euler: Euler angles vector
  public init(euler: Double3) {
    let c = cos(euler * 0.5)
    let s = sin(euler * 0.5)

    let w = c.x * c.y * c.z + s.x * s.y * s.z
    let x = s.x * c.y * c.z - c.x * s.y * s.z
    let y = c.x * s.y * c.z + s.x * c.y * s.z
    let z = c.x * c.y * s.z - s.x * s.y * c.z

    self.init(w, x, y, z)
  }

  /// Initialization from 3x3 matrix
  ///
  /// - Parameter m: Source matrix
  public init(_ m: Double3x3) {
    let fourXSquaredMinus1 = m[0][0] - m[1][1] - m[2][2]
    let fourYSquaredMinus1 = m[1][1] - m[0][0] - m[2][2]
    let fourZSquaredMinus1 = m[2][2] - m[0][0] - m[1][1]
    let fourWSquaredMinus1 = m[0][0] + m[1][1] + m[2][2]

    var biggestIndex = 0
    var fourBiggestSquaredMinus1 = fourWSquaredMinus1

    if fourXSquaredMinus1 > fourBiggestSquaredMinus1 {
      fourBiggestSquaredMinus1 = fourXSquaredMinus1
      biggestIndex = 1
    }
    if fourYSquaredMinus1 > fourBiggestSquaredMinus1 {
      fourBiggestSquaredMinus1 = fourYSquaredMinus1
      biggestIndex = 2
    }
    if fourZSquaredMinus1 > fourBiggestSquaredMinus1 {
      fourBiggestSquaredMinus1 = fourZSquaredMinus1
      biggestIndex = 3
    }

    let biggestVal = sqrt(fourBiggestSquaredMinus1 + 1) * 0.5
    let mult = 0.25 / biggestVal

    let w, x, y, z: Double
    switch (biggestIndex) {
    case 0:
      w = biggestVal
      x = (m[1][2] - m[2][1]) * mult
      y = (m[2][0] - m[0][2]) * mult
      z = (m[0][1] - m[1][0]) * mult
      break
    case 1:
      w = (m[1][2] - m[2][1]) * mult
      x = biggestVal
      y = (m[0][1] + m[1][0]) * mult
      z = (m[2][0] + m[0][2]) * mult
      break
    case 2:
      w = (m[2][0] - m[0][2]) * mult
      x = (m[0][1] + m[1][0]) * mult
      y = biggestVal
      z = (m[1][2] + m[2][1]) * mult
      break
    case 3:
      w = (m[0][1] - m[1][0]) * mult
      x = (m[2][0] + m[0][2]) * mult
      y = (m[1][2] + m[2][1]) * mult
      z = biggestVal
      break

    default:
      fatalError()
    }

    self.init(w, x, y, z)
  }

  /// Initialization from the 3x3 portion of
  /// a 4x4 matrix
  ///
  /// - Parameter m: Source matrix
  public init(_ m: Double4x4) {
    self.init(Double3x3(m))
  }

  public var debugDescription: String {
    get {
      return "DoubleQ(w=\(w), x=\(x), y=\(y), z=\(z))"
    }
  }
}

prefix public func +(q: DoubleQ) -> DoubleQ {
  return q
}

public func *(q: DoubleQ, v: Double3) -> Double3 {
  let qv = Double3(q.x, q.y, q.z)
  let uv = cross(qv, v)
  let uuv = cross(qv, uv)

  return v + ((uv * q.w) + uuv) * 2
}

public func *(v: Double3, q: DoubleQ) -> Double3 {
  return inversed(q) * v
}

public func *(q: DoubleQ, v: Double4) -> Double4 {
  return Double4(q * Double3(v), v.w)
}

public func *(v: Double4, q: DoubleQ) -> Double4 {
  return inversed(q) * v
}

/// Returns the normalized quaternion.
public func normalized(_ q: DoubleQ) -> DoubleQ {
  return q.normalized
}

/// Returns the length of the quaternion.
public func length(_ q: DoubleQ) -> Double {
  return q.length
}

/// Returns the conjugate of the quaternion.
public func conjugated(_ q: DoubleQ) -> DoubleQ {
  return DoubleQ(q.w, -q.x, -q.y, -q.z)
}

/// Returns the inverse of the quaternion.
public func inversed(_ q: DoubleQ) -> DoubleQ {
  return q.inverse
}

/// Returns dot product of q1 and q2, i.e., q1[0] * q2[0] + q1[1] * q2[1] + ...
public func dot(_ q1: DoubleQ, _ q2: DoubleQ) -> Double {
  let tmp = Double4(q1.x * q2.x, q1.y * q2.y, q1.z * q2.z, q1.w * q2.w)
  return (tmp.x + tmp.y) + (tmp.z + tmp.w)
}

/// Spherical linear interpolation of two quaternions.
/// The interpolation is oriented and the rotation is performed at constant speed.
/// For short path spherical linear interpolation, use the slerp function.
public func mix(_ x: DoubleQ, _ y: DoubleQ, _ a: Double) -> DoubleQ {
  let cosTheta = dot(x, y);

  // Perform a linear interpolation when cosTheta is close to 1 to avoid side effect of sin(angle) becoming a zero denominator
  if cosTheta > 1 - 0.0000001 {
    // Linear interpolation
    return DoubleQ(
      mix(x.w, y.w, a),
      mix(x.x, y.x, a),
      mix(x.y, y.y, a),
      mix(x.z, y.z, a))
  }
  else {
    // Essential Mathematics, page 467
    let angle = acos(cosTheta)
    return (sin((1 - a) * angle) * x + sin(a * angle) * y) / sin(angle)
  }
}

/// Linear interpolation of two quaternions.
/// The interpolation is oriented.
public func lerp(_ x: DoubleQ, _ y: DoubleQ, _ a: Double) -> DoubleQ {
  return x * (1 - a) + (y * a)
}

/// Spherical linear interpolation of two quaternions.
/// The interpolation always take the short path and the rotation is performed at constant speed.
public func slerp(_ x: DoubleQ, _ y: DoubleQ, _ a: Double) -> DoubleQ {
  var z = y

  var cosTheta = dot(x, y)

  // If cosTheta < 0, the interpolation will take the long way around the sphere.
  // To fix this, one quat must be negated.
  if cosTheta < 0 {
    z = -y
    cosTheta = -cosTheta
  }

  // Perform a linear interpolation when cosTheta is close to 1 to avoid side effect of sin(angle) becoming a zero denominator
  if cosTheta > 1 - 0.0000001 {
    // Linear interpolation
    return DoubleQ(
      mix(x.w, z.w, a),
      mix(x.x, z.x, a),
      mix(x.y, z.y, a),
      mix(x.z, z.z, a))
  }
  else {
    // Essential Mathematics, page 467
    let angle = acos(cosTheta)
    return (sin((1 - a) * angle) * x + sin(a * angle) * z) / sin(angle)
  }
}

/// Rotates a quaternion from a vector of 3 components axis and an angle.
public func rotate(_ q: DoubleQ, angle: Double, axis: Double3) -> DoubleQ {
  var tmp = axis

  // Axis of rotation must be normalised
  let len = length(tmp)
  if abs(len - 1) > 0.001 {
    let oneOverLen = 1 / len
    tmp *= oneOverLen
  }

  let s = sin(angle * 0.5)

  return q * DoubleQ(cos(angle * 0.5), tmp.x * s, tmp.y * s, tmp.z * s)
}

/// Returns euler angles, yitch as x, yaw as y, roll as z.
public func angles(_ x: DoubleQ) -> Double3 {
  return Double3(pitch(x), yaw(x), roll(x))
}

/// Returns roll value of euler angles expressed in radians.
public func roll(_ q: DoubleQ) -> Double {
  return Double(atan2(2 * (q.x * q.y + q.w * q.z), q.w * q.w + q.x * q.x - q.y * q.y - q.z * q.z))
}

/// Returns pitch value of euler angles expressed in radians.
public func pitch(_ q: DoubleQ) -> Double {
  return Double(atan2(2 * (q.y * q.z + q.w * q.x), q.w * q.w - q.x * q.x - q.y * q.y + q.z * q.z))
}

/// Returns yaw value of euler angles expressed in radians.
public func yaw(_ q: DoubleQ) -> Double {
  return asin(Double(-2) * (q.x * q.z - q.w * q.y))
}

/// Returns the quaternion rotation angle.
public func angle(q: DoubleQ) -> Double {
  return acos(q.w) * 2
}

/// Returns the q rotation axis.
public func axis(q: DoubleQ) -> Double3 {
  let tmp1 = 1 - q.w * q.w
  if tmp1 <= 0 {
    return Double3(0, 0, 1)
  }
  let tmp2 = 1 / sqrt(tmp1)
  return Double3(q.x * tmp2, q.y * tmp2, q.z * tmp2)
}
