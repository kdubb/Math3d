//
//  Angles.swift
//  Math3d
//
//  Created by Kevin Wooten on 6/3/17.
//  Copyright © 2017 Outfox, Inc. All rights reserved.
//

import Foundation
@_exported import simd



/// Converts degrees to radians and returns the result.
public func radians(_ degrees: Float) -> Float {
  return degrees * Float.pi / 180.0
}

/// Converts degrees to radians and returns the result.
public func radians(_ degrees: Float2) -> Float2 {
  return degrees * (Float.pi / 180.0)
}

/// Converts degrees to radians and returns the result.
public func radians(_ degrees: Float3) -> Float3 {
  return degrees * (Float.pi / 180.0)
}

/// Converts degrees to radians and returns the result.
public func radians(_ degrees: Float4) -> Float4 {
  return degrees * (Float.pi / 180.0)
}

/// Converts degrees to radians and returns the result.
public func radians(_ degrees: Double) -> Double {
  return degrees * (Double.pi / 180.0)
}

/// Converts degrees to radians and returns the result.
public func radians(_ degrees: Double2) -> Double2 {
  return degrees * (Double.pi / 180.0)
}

/// Converts degrees to radians and returns the result.
public func radians(_ degrees: Double3) -> Double3 {
  return degrees * (Double.pi / 180.0)
}

/// Converts degrees to radians and returns the result.
public func radians(_ degrees: Double4) -> Double4 {
  return degrees * (Double.pi / 180.0)
}

// MARK: degrees

/// Converts radians to degrees and returns the result.
public func degrees(_ radians: Float) -> Float {
  return radians * (180.0 / Float.pi)
}

/// Converts radians to degrees and returns the result.
public func degrees(_ radians: Float2) -> Float2 {
  return radians * (180.0 / Float.pi)
}

/// Converts radians to degrees and returns the result.
public func degrees(_ radians: Float3) -> Float3 {
  return radians * (180.0 / Float.pi)
}

/// Converts radians to degrees and returns the result.
public func degrees(_ radians: Float4) -> Float4 {
  return radians * (180.0 / Float.pi)
}

/// Converts radians to degrees and returns the result.
public func degrees(_ radians: Double) -> Double {
  return radians * (180.0 / Double.pi)
}

/// Converts radians to degrees and returns the result.
public func degrees(_ radians: Double2) -> Double2 {
  return radians * (180.0 / Double.pi)
}

/// Converts radians to degrees and returns the result.
public func degrees(_ radians: Double3) -> Double3 {
  return radians * (180.0 / Double.pi)
}

/// Converts radians to degrees and returns the result.
public func degrees(_ radians: Double4) -> Double4 {
  return radians * (180.0 / Double.pi)
}



// Float (in degrees) to radians

postfix operator °


/// Degrees to radians
///
/// Symbol via [Cmd + Shift + 8] on macOS
///
/// - Parameter degrees: Angle in degrees
/// - Returns: Angle in radians
///
public postfix func °(_ degrees: Int) -> Float {
  return radians(Float(degrees))
}

/// Degrees to radians
///
/// Symbol via [Cmd + Shift + 8] on macOS
///
/// - Parameter degrees: Angle in degrees
/// - Returns: Angle in radians
///
public postfix func °(_ degrees: Int) -> Double {
  return radians(Double(degrees))
}

/// Degrees to radians
///
/// Symbol via [Cmd + Shift + 8] on macOS
///
/// - Parameter degrees: Angle in degrees
/// - Returns: Angle in radians
///
public postfix func °(_ degrees: Float) -> Float {
  return radians(degrees)
}

/// Degrees to radians
///
/// Symbol via [Cmd + Shift + 8] on macOS
///
/// - Parameter degrees: Angle in degrees
/// - Returns: Angle in radians
///
public postfix func °(_ degrees: Double) -> Double {
  return radians(degrees)
}
