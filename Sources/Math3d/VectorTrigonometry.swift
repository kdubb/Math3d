//
//  VectorTrigonometry.swift
//  Math3d
//
//  Created by Kevin Wooten on 6/4/17.
//  Copyright © 2017 Outfox, Inc. All rights reserved.
//

import Foundation
@_exported import simd



// MARK: sin

/// The standard trigonometric sine function.
/// The values returned by this function will range from [-1, 1].
public func sin(_ v: Float2) -> Float2 {
  return Float2(sin(v.x), sin(v.y))
}

/// The standard trigonometric sine function.
/// The values returned by this function will range from [-1, 1].
public func sin(_ v: Float3) -> Float3 {
  return Float3(sin(v.x), sin(v.y), sin(v.z))
}

/// The standard trigonometric sine function.
/// The values returned by this function will range from [-1, 1].
public func sin(_ v: Float4) -> Float4 {
  return Float4(sin(v.x), sin(v.y), sin(v.z), sin(v.w))
}

/// The standard trigonometric sine function.
/// The values returned by this function will range from [-1, 1].
public func sin(_ v: Double2) -> Double2 {
  return Double2(sin(v.x), sin(v.y))
}

/// The standard trigonometric sine function.
/// The values returned by this function will range from [-1, 1].
public func sin(_ v: Double3) -> Double3 {
  return Double3(sin(v.x), sin(v.y), sin(v.z))
}

/// The standard trigonometric sine function.
/// The values returned by this function will range from [-1, 1].
public func sin(_ v: Double4) -> Double4 {
  return Double4(sin(v.x), sin(v.y), sin(v.z), sin(v.w))
}

// MARK: cos

/// The standard trigonometric cosine function.
/// The values returned by this function will range from [-1, 1].
public func cos(_ v: Float2) -> Float2 {
  return Float2(cos(v.x), cos(v.y))
}

/// The standard trigonometric cosine function.
/// The values returned by this function will range from [-1, 1].
public func cos(_ v: Float3) -> Float3 {
  return Float3(cos(v.x), cos(v.y), cos(v.z))
}

/// The standard trigonometric cosine function.
/// The values returned by this function will range from [-1, 1].
public func cos(_ v: Float4) -> Float4 {
  return Float4(cos(v.x), cos(v.y), cos(v.z), cos(v.w))
}

/// The standard trigonometric cosine function.
/// The values returned by this function will range from [-1, 1].
public func cos(_ v: Double2) -> Double2 {
  return Double2(cos(v.x), cos(v.y))
}

/// The standard trigonometric cosine function.
/// The values returned by this function will range from [-1, 1].
public func cos(_ v: Double3) -> Double3 {
  return Double3(cos(v.x), cos(v.y), cos(v.z))
}

/// The standard trigonometric cosine function.
/// The values returned by this function will range from [-1, 1].
public func cos(_ v: Double4) -> Double4 {
  return Double4(cos(v.x), cos(v.y), cos(v.z), cos(v.w))
}

// MARK: tan

/// The standard trigonometric tangent function.
/// The values returned by this function will range from [-1, 1].
public func tan(_ v: Float2) -> Float2 {
  return Float2(tan(v.x), tan(v.y))
}

/// The standard trigonometric tangent function.
/// The values returned by this function will range from [-1, 1].
public func tan(_ v: Float3) -> Float3 {
  return Float3(tan(v.x), tan(v.y), tan(v.z))
}

/// The standard trigonometric tangent function.
/// The values returned by this function will range from [-1, 1].
public func tan(_ v: Float4) -> Float4 {
  return Float4(tan(v.x), tan(v.y), tan(v.z), tan(v.w))
}

/// The standard trigonometric tangent function.
/// The values returned by this function will range from [-1, 1].
public func tan(_ v: Double2) -> Double2 {
  return Double2(tan(v.x), tan(v.y))
}

/// The standard trigonometric tangent function.
/// The values returned by this function will range from [-1, 1].
public func tan(_ v: Double3) -> Double3 {
  return Double3(tan(v.x), tan(v.y), tan(v.z))
}

/// The standard trigonometric tangent function.
/// The values returned by this function will range from [-1, 1].
public func tan(_ v: Double4) -> Double4 {
  return Double4(tan(v.x), tan(v.y), tan(v.z), tan(v.w))
}

// MARK: asin

/// The standard trigonometric inverse sine function.
/// The values returned by this function will range from [-1, 1].
public func asin(_ v: Float2) -> Float2 {
  return Float2(asin(v.x), asin(v.y))
}

/// The standard trigonometric inverse sine function.
/// The values returned by this function will range from [-1, 1].
public func asin(_ v: Float3) -> Float3 {
  return Float3(asin(v.x), asin(v.y), asin(v.z))
}

/// The standard trigonometric inverse sine function.
/// The values returned by this function will range from [-1, 1].
public func asin(_ v: Float4) -> Float4 {
  return Float4(asin(v.x), asin(v.y), asin(v.z), asin(v.w))
}

/// The standard trigonometric inverse sine function.
/// The values returned by this function will range from [-1, 1].
public func asin(_ v: Double2) -> Double2 {
  return Double2(asin(v.x), asin(v.y))
}

/// The standard trigonometric inverse sine function.
/// The values returned by this function will range from [-1, 1].
public func asin(_ v: Double3) -> Double3 {
  return Double3(asin(v.x), asin(v.y), asin(v.z))
}

/// The standard trigonometric inverse sine function.
/// The values returned by this function will range from [-1, 1].
public func asin(_ v: Double4) -> Double4 {
  return Double4(asin(v.x), asin(v.y), asin(v.z), asin(v.w))
}

// MARK: acos

/// The standard trigonometric inverse cosine function.
/// The values returned by this function will range from [-1, 1].
public func acos(_ v: Float2) -> Float2 {
  return Float2(acos(v.x), acos(v.y))
}

/// The standard trigonometric inverse cosine function.
/// The values returned by this function will range from [-1, 1].
public func acos(_ v: Float3) -> Float3 {
  return Float3(acos(v.x), acos(v.y), acos(v.z))
}

/// The standard trigonometric inverse cosine function.
/// The values returned by this function will range from [-1, 1].
public func acos(_ v: Float4) -> Float4 {
  return Float4(acos(v.x), acos(v.y), acos(v.z), acos(v.w))
}

/// The standard trigonometric inverse cosine function.
/// The values returned by this function will range from [-1, 1].
public func acos(_ v: Double2) -> Double2 {
  return Double2(acos(v.x), acos(v.y))
}

/// The standard trigonometric inverse cosine function.
/// The values returned by this function will range from [-1, 1].
public func acos(_ v: Double3) -> Double3 {
  return Double3(acos(v.x), acos(v.y), acos(v.z))
}

/// The standard trigonometric inverse cosine function.
/// The values returned by this function will range from [-1, 1].
public func acos(_ v: Double4) -> Double4 {
  return Double4(acos(v.x), acos(v.y), acos(v.z), acos(v.w))
}

// MARK: atan

/// The standard trigonometric inverse tangent function.
/// The values returned by this function will range from [-1, 1].
public func atan(_ v: Float2) -> Float2 {
  return Float2(atan(v.x), atan(v.y))
}

/// The standard trigonometric inverse tangent function.
/// The values returned by this function will range from [-1, 1].
public func atan(_ v: Float3) -> Float3 {
  return Float3(atan(v.x), atan(v.y), atan(v.z))
}

/// The standard trigonometric inverse tangent function.
/// The values returned by this function will range from [-1, 1].
public func atan(_ v: Float4) -> Float4 {
  return Float4(atan(v.x), atan(v.y), atan(v.z), atan(v.w))
}

/// The standard trigonometric inverse tangent function.
/// The values returned by this function will range from [-1, 1].
public func atan(_ v: Double2) -> Double2 {
  return Double2(atan(v.x), atan(v.y))
}

/// The standard trigonometric inverse tangent function.
/// The values returned by this function will range from [-1, 1].
public func atan(_ v: Double3) -> Double3 {
  return Double3(atan(v.x), atan(v.y), atan(v.z))
}

/// The standard trigonometric inverse tangent function.
/// The values returned by this function will range from [-1, 1].
public func atan(_ v: Double4) -> Double4 {
  return Double4(atan(v.x), atan(v.y), atan(v.z), atan(v.w))
}

// MARK: sinh

/// The standard trigonometric hyperbolic sine function.
/// The values returned by this function will range from [-1, 1].
public func sinh(_ v: Float2) -> Float2 {
  return Float2(sinh(v.x), sinh(v.y))
}

/// The standard trigonometric hyperbolic sine function.
/// The values returned by this function will range from [-1, 1].
public func sinh(_ v: Float3) -> Float3 {
  return Float3(sinh(v.x), sinh(v.y), sinh(v.z))
}

/// The standard trigonometric hyperbolic sine function.
/// The values returned by this function will range from [-1, 1].
public func sinh(_ v: Float4) -> Float4 {
  return Float4(sinh(v.x), sinh(v.y), sinh(v.z), sinh(v.w))
}

/// The standard trigonometric hyperbolic sine function.
/// The values returned by this function will range from [-1, 1].
public func sinh(_ v: Double2) -> Double2 {
  return Double2(sinh(v.x), sinh(v.y))
}

/// The standard trigonometric hyperbolic sine function.
/// The values returned by this function will range from [-1, 1].
public func sinh(_ v: Double3) -> Double3 {
  return Double3(sinh(v.x), sinh(v.y), sinh(v.z))
}

/// The standard trigonometric hyperbolic sine function.
/// The values returned by this function will range from [-1, 1].
public func sinh(_ v: Double4) -> Double4 {
  return Double4(sinh(v.x), sinh(v.y), sinh(v.z), sinh(v.w))
}

// MARK: cosh

/// The standard trigonometric hyperbolic cosine function.
/// The values returned by this function will range from [-1, 1].
public func cosh(_ v: Float2) -> Float2 {
  return Float2(cosh(v.x), cosh(v.y))
}

/// The standard trigonometric hyperbolic cosine function.
/// The values returned by this function will range from [-1, 1].
public func cosh(_ v: Float3) -> Float3 {
  return Float3(cosh(v.x), cosh(v.y), cosh(v.z))
}

/// The standard trigonometric hyperbolic cosine function.
/// The values returned by this function will range from [-1, 1].
public func cosh(_ v: Float4) -> Float4 {
  return Float4(cosh(v.x), cosh(v.y), cosh(v.z), cosh(v.w))
}

/// The standard trigonometric hyperbolic cosine function.
/// The values returned by this function will range from [-1, 1].
public func cosh(_ v: Double2) -> Double2 {
  return Double2(cosh(v.x), cosh(v.y))
}

/// The standard trigonometric hyperbolic cosine function.
/// The values returned by this function will range from [-1, 1].
public func cosh(_ v: Double3) -> Double3 {
  return Double3(cosh(v.x), cosh(v.y), cosh(v.z))
}

/// The standard trigonometric hyperbolic cosine function.
/// The values returned by this function will range from [-1, 1].
public func cosh(_ v: Double4) -> Double4 {
  return Double4(cosh(v.x), cosh(v.y), cosh(v.z), cosh(v.w))
}

// MARK: tanh

/// The standard trigonometric hyperbolic tangent function.
/// The values returned by this function will range from [-1, 1].
public func tanh(_ v: Float2) -> Float2 {
  return Float2(tanh(v.x), tanh(v.y))
}

/// The standard trigonometric hyperbolic tangent function.
/// The values returned by this function will range from [-1, 1].
public func tanh(_ v: Float3) -> Float3 {
  return Float3(tanh(v.x), tanh(v.y), tanh(v.z))
}

/// The standard trigonometric hyperbolic tangent function.
/// The values returned by this function will range from [-1, 1].
public func tanh(_ v: Float4) -> Float4 {
  return Float4(tanh(v.x), tanh(v.y), tanh(v.z), tanh(v.w))
}

/// The standard trigonometric hyperbolic tangent function.
/// The values returned by this function will range from [-1, 1].
public func tanh(_ v: Double2) -> Double2 {
  return Double2(tanh(v.x), tanh(v.y))
}

/// The standard trigonometric hyperbolic tangent function.
/// The values returned by this function will range from [-1, 1].
public func tanh(_ v: Double3) -> Double3 {
  return Double3(tanh(v.x), tanh(v.y), tanh(v.z))
}

/// The standard trigonometric hyperbolic tangent function.
/// The values returned by this function will range from [-1, 1].
public func tanh(_ v: Double4) -> Double4 {
  return Double4(tanh(v.x), tanh(v.y), tanh(v.z), tanh(v.w))
}

// MARK: asinh

/// The standard trigonometric inverse hyperbolic sine function.
/// The values returned by this function will range from [-1, 1].
public func asinh(_ v: Float2) -> Float2 {
  return Float2(asinh(v.x), asinh(v.y))
}

/// The standard trigonometric inverse hyperbolic sine function.
/// The values returned by this function will range from [-1, 1].
public func asinh(_ v: Float3) -> Float3 {
  return Float3(asinh(v.x), asinh(v.y), asinh(v.z))
}

/// The standard trigonometric inverse hyperbolic sine function.
/// The values returned by this function will range from [-1, 1].
public func asinh(_ v: Float4) -> Float4 {
  return Float4(asinh(v.x), asinh(v.y), asinh(v.z), asinh(v.w))
}

/// The standard trigonometric inverse hyperbolic sine function.
/// The values returned by this function will range from [-1, 1].
public func asinh(_ v: Double2) -> Double2 {
  return Double2(asinh(v.x), asinh(v.y))
}

/// The standard trigonometric inverse hyperbolic sine function.
/// The values returned by this function will range from [-1, 1].
public func asinh(_ v: Double3) -> Double3 {
  return Double3(asinh(v.x), asinh(v.y), asinh(v.z))
}

/// The standard trigonometric inverse hyperbolic sine function.
/// The values returned by this function will range from [-1, 1].
public func asinh(_ v: Double4) -> Double4 {
  return Double4(asinh(v.x), asinh(v.y), asinh(v.z), asinh(v.w))
}

// MARK: acosh

/// The standard trigonometric inverse hyperbolic cosine function.
/// The values returned by this function will range from [-1, 1].
public func acosh(_ v: Float2) -> Float2 {
  return Float2(acosh(v.x), acosh(v.y))
}

/// The standard trigonometric inverse hyperbolic cosine function.
/// The values returned by this function will range from [-1, 1].
public func acosh(_ v: Float3) -> Float3 {
  return Float3(acosh(v.x), acosh(v.y), acosh(v.z))
}

/// The standard trigonometric inverse hyperbolic cosine function.
/// The values returned by this function will range from [-1, 1].
public func acosh(_ v: Float4) -> Float4 {
  return Float4(acosh(v.x), acosh(v.y), acosh(v.z), acosh(v.w))
}

/// The standard trigonometric inverse hyperbolic cosine function.
/// The values returned by this function will range from [-1, 1].
public func acosh(_ v: Double2) -> Double2 {
  return Double2(acosh(v.x), acosh(v.y))
}

/// The standard trigonometric inverse hyperbolic cosine function.
/// The values returned by this function will range from [-1, 1].
public func acosh(_ v: Double3) -> Double3 {
  return Double3(acosh(v.x), acosh(v.y), acosh(v.z))
}

/// The standard trigonometric inverse hyperbolic cosine function.
/// The values returned by this function will range from [-1, 1].
public func acosh(_ v: Double4) -> Double4 {
  return Double4(acosh(v.x), acosh(v.y), acosh(v.z), acosh(v.w))
}

// MARK: atanh

/// The standard trigonometric inverse hyperbolic tangent function.
/// The values returned by this function will range from [-1, 1].
public func atanh(_ v: Float2) -> Float2 {
  return Float2(atanh(v.x), atanh(v.y))
}

/// The standard trigonometric inverse hyperbolic tangent function.
/// The values returned by this function will range from [-1, 1].
public func atanh(_ v: Float3) -> Float3 {
  return Float3(atanh(v.x), atanh(v.y), atanh(v.z))
}

/// The standard trigonometric inverse hyperbolic tangent function.
/// The values returned by this function will range from [-1, 1].
public func atanh(_ v: Float4) -> Float4 {
  return Float4(atanh(v.x), atanh(v.y), atanh(v.z), atanh(v.w))
}

/// The standard trigonometric inverse hyperbolic tangent function.
/// The values returned by this function will range from [-1, 1].
public func atanh(_ v: Double2) -> Double2 {
  return Double2(atanh(v.x), atanh(v.y))
}

/// The standard trigonometric inverse hyperbolic tangent function.
/// The values returned by this function will range from [-1, 1].
public func atanh(_ v: Double3) -> Double3 {
  return Double3(atanh(v.x), atanh(v.y), atanh(v.z))
}

/// The standard trigonometric inverse hyperbolic tangent function.
/// The values returned by this function will range from [-1, 1].
public func atanh(_ v: Double4) -> Double4 {
  return Double4(atanh(v.x), atanh(v.y), atanh(v.z), atanh(v.w))
}
