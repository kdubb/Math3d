//
//  VectorExponent.swift
//  Math3d
//
//  Created by Kevin Wooten on 6/4/17.
//  Copyright © 2017 Outfox, Inc. All rights reserved.
//

import Foundation
@_exported import simd



// MARK: pow

/// Returns 'base' raised to the power 'exp'.
public func pow(_ base: Float2, _ exp: Float2) -> Float2 {
  return Float2(pow(base[0], exp[0]), pow(base[1], exp[1]))
}

/// Returns 'base' raised to the power 'exp'.
public func pow(_ base: Float3, _ exp: Float3) -> Float3 {
  return Float3(pow(base[0], exp[0]), pow(base[1], exp[1]), pow(base[2], exp[2]))
}

/// Returns 'base' raised to the power 'exp'.
public func pow(_ base: Float4, _ exp: Float4) -> Float4 {
  return Float4(pow(base[0], exp[0]), pow(base[1], exp[1]), pow(base[2], exp[2]), pow(base[3], exp[3]))
}

/// Returns 'base' raised to the power 'exp'.
public func pow(_ base: Double2, _ exp: Double2) -> Double2 {
  return Double2(pow(base[0], exp[0]), pow(base[1], exp[1]))
}

/// Returns 'base' raised to the power 'exp'.
public func pow(_ base: Double3, _ exp: Double3) -> Double3 {
  return Double3(pow(base[0], exp[0]), pow(base[1], exp[1]), pow(base[2], exp[2]))
}

/// Returns 'base' raised to the power 'exp'.
public func pow(_ base: Double4, _ exp: Double4) -> Double4 {
  return Double4(pow(base[0], exp[0]), pow(base[1], exp[1]), pow(base[2], exp[2]), pow(base[3], exp[3]))
}

// MARK: exp

/// Returns the natural exponentiation of x, i.e., e^x.
public func exp(_ x: Float2) -> Float2 {
  return Float2(exp(x[0]), exp(x[1]))
}

/// Returns the natural exponentiation of x, i.e., e^x.
public func exp(_ x: Float3) -> Float3 {
  return Float3(exp(x[0]), exp(x[1]), exp(x[2]))
}

/// Returns the natural exponentiation of x, i.e., e^x.
public func exp(_ x: Float4) -> Float4 {
  return Float4(exp(x[0]), exp(x[1]), exp(x[2]), exp(x[3]))
}

/// Returns the natural exponentiation of x, i.e., e^x.
public func exp(_ x: Double2) -> Double2 {
  return Double2(exp(x[0]), exp(x[1]))
}

/// Returns the natural exponentiation of x, i.e., e^x.
public func exp(_ x: Double3) -> Double3 {
  return Double3(exp(x[0]), exp(x[1]), exp(x[2]))
}

/// Returns the natural exponentiation of x, i.e., e^x.
public func exp(_ x: Double4) -> Double4 {
  return Double4(exp(x[0]), exp(x[1]), exp(x[2]), exp(x[3]))
}

// MARK: log

/// Returns the natural logarithm of v, i.e.,
/// Returns the value y which satisfies the equation x = e^y.
/// Results are undefined if v <= 0.
public func log(_ v: Float2) -> Float2 {
  return Float2(log(v[0]), log(v[1]))
}

/// Returns the natural logarithm of v, i.e.,
/// Returns the value y which satisfies the equation x = e^y.
/// Results are undefined if v <= 0.
public func log(_ v: Float3) -> Float3 {
  return Float3(log(v[0]), log(v[1]), log(v[2]))
}

/// Returns the natural logarithm of v, i.e.,
/// Returns the value y which satisfies the equation x = e^y.
/// Results are undefined if v <= 0.
public func log(_ v: Float4) -> Float4 {
  return Float4(log(v[0]), log(v[1]), log(v[2]), log(v[3]))
}

/// Returns the natural logarithm of v, i.e.,
/// Returns the value y which satisfies the equation x = e^y.
/// Results are undefined if v <= 0.
public func log(_ v: Double2) -> Double2 {
  return Double2(log(v[0]), log(v[1]))
}

/// Returns the natural logarithm of v, i.e.,
/// Returns the value y which satisfies the equation x = e^y.
/// Results are undefined if v <= 0.
public func log(_ v: Double3) -> Double3 {
  return Double3(log(v[0]), log(v[1]), log(v[2]))
}

/// Returns the natural logarithm of v, i.e.,
/// Returns the value y which satisfies the equation x = e^y.
/// Results are undefined if v <= 0.
public func log(_ v: Double4) -> Double4 {
  return Double4(log(v[0]), log(v[1]), log(v[2]), log(v[3]))
}

// MARK: exp2

/// Returns 2 raised to the v power.
public func exp2(_ v: Float2) -> Float2 {
  return Float2(exp2(v[0]), exp2(v[1]))
}

/// Returns 2 raised to the v power.
public func exp2(_ v: Float3) -> Float3 {
  return Float3(exp2(v[0]), exp2(v[1]), exp2(v[2]))
}

/// Returns 2 raised to the v power.
public func exp2(_ v: Float4) -> Float4 {
  return Float4(exp2(v[0]), exp2(v[1]), exp2(v[2]), exp2(v[3]))
}

/// Returns 2 raised to the v power.
public func exp2(_ v: Double2) -> Double2 {
  return Double2(exp2(v[0]), exp2(v[1]))
}

/// Returns 2 raised to the v power.
public func exp2(_ v: Double3) -> Double3 {
  return Double3(exp2(v[0]), exp2(v[1]), exp2(v[2]))
}

/// Returns 2 raised to the v power.
public func exp2(_ v: Double4) -> Double4 {
  return Double4(exp2(v[0]), exp2(v[1]), exp2(v[2]), exp2(v[3]))
}

// MARK: log2

/// Returns the base 2 log of x, i.e., returns the value y,
/// which satisfies the equation x = 2 ^ y.
public func log2(_ x: Float2) -> Float2 {
  return Float2(log2(x[0]), log2(x[1]))
}

/// Returns the base 2 log of x, i.e., returns the value y,
/// which satisfies the equation x = 2 ^ y.
public func log2(_ x: Float3) -> Float3 {
  return Float3(log2(x[0]), log2(x[1]), log2(x[2]))
}

/// Returns the base 2 log of x, i.e., returns the value y,
/// which satisfies the equation x = 2 ^ y.
public func log2(_ x: Float4) -> Float4 {
  return Float4(log2(x[0]), log2(x[1]), log2(x[2]), log2(x[3]))
}

/// Returns the base 2 log of x, i.e., returns the value y,
/// which satisfies the equation x = 2 ^ y.
public func log2(_ x: Double2) -> Double2 {
  return Double2(log2(x[0]), log2(x[1]))
}

/// Returns the base 2 log of x, i.e., returns the value y,
/// which satisfies the equation x = 2 ^ y.
public func log2(_ x: Double3) -> Double3 {
  return Double3(log2(x[0]), log2(x[1]), log2(x[2]))
}

/// Returns the base 2 log of x, i.e., returns the value y,
/// which satisfies the equation x = 2 ^ y.
public func log2(_ x: Double4) -> Double4 {
  return Double4(log2(x[0]), log2(x[1]), log2(x[2]), log2(x[3]))
}

// MARK: sqrt

/// Returns the positive square root of v.
public func sqrt(_ v: Float2) -> Float2 {
  return Float2(sqrt(v[0]), sqrt(v[1]))
}

/// Returns the positive square root of v.
public func sqrt(_ v: Float3) -> Float3 {
  return Float3(sqrt(v[0]), sqrt(v[1]), sqrt(v[2]))
}

/// Returns the positive square root of v.
public func sqrt(_ v: Float4) -> Float4 {
  return Float4(sqrt(v[0]), sqrt(v[1]), sqrt(v[2]), sqrt(v[3]))
}

/// Returns the positive square root of v.
public func sqrt(_ v: Double2) -> Double2 {
  return Double2(sqrt(v[0]), sqrt(v[1]))
}

/// Returns the positive square root of v.
public func sqrt(_ v: Double3) -> Double3 {
  return Double3(sqrt(v[0]), sqrt(v[1]), sqrt(v[2]))
}

/// Returns the positive square root of v.
public func sqrt(_ v: Double4) -> Double4 {
  return Double4(sqrt(v[0]), sqrt(v[1]), sqrt(v[2]), sqrt(v[3]))
}

// MARK: inversesqrt

/// Returns the reciprocal of the positive square root of v.
public func inversesqrt(_ v: Float2) -> Float2 {
  return 1 / sqrt(v)
}

/// Returns the reciprocal of the positive square root of v.
public func inversesqrt(_ v: Float3) -> Float3 {
  return 1 / sqrt(v)
}

/// Returns the reciprocal of the positive square root of v.
public func inversesqrt(_ v: Float4) -> Float4 {
  return 1 / sqrt(v)
}

/// Returns the reciprocal of the positive square root of v.
public func inversesqrt(_ v: Double2) -> Double2 {
  return 1 / sqrt(v)
}

/// Returns the reciprocal of the positive square root of v.
public func inversesqrt(_ v: Double3) -> Double3 {
  return 1 / sqrt(v)
}

/// Returns the reciprocal of the positive square root of v.
public func inversesqrt(_ v: Double4) -> Double4 {
  return 1 / sqrt(v)
}
