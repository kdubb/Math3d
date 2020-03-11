//
//  General.swift
//  Math3d
//
//  Created by Kevin Wooten on 6/4/17.
//  Copyright © 2017 Outfox, Inc. All rights reserved.
//

import Foundation
@_exported import simd



// MARK: clamp

/// Clamp `x` to the range [`min`, `max``]. If value is NaN, the result is `min`.
public func clamp(_ value: Float, min _min: Float, max _max: Float) -> Float {
  return min(max(value, _min), _max)
}

/// Clamp `x` to the range [`min``, `max`]. If value is NaN, the result is `min`.
public func clamp(_ value: Double, min _min: Double, max _max: Double) -> Double {
  return min(max(value, _min), _max)
}

extension Float {
  /// Clamp to the range [`min`, `max`]. If value is NaN, the result is `min`.
  public func clamped(min: Float, max: Float) -> Float {
    return clamp(self, min: min, max: max)
  }
}

extension Double {
  /// Clamp to the range [`min`, `max`]. If value is NaN, the result is `min`.
  public func clamped(min: Double, max: Double) -> Double {
    return clamp(self, min: min, max: max)
  }
}

extension SIMD where Scalar: Comparable {
  
  public func clamped(min: Scalar, max: Scalar) -> Self {
    return clamped(lowerBound: Self(repeating: min), upperBound: Self(repeating: max))
  }
  
}

// MARK: - saturate

// Clamp to between [0 .. 1]
public func saturate(_ value: Float) -> Float {
  return value.clamped(min: 0, max: 1)
}

// Clamp to between [0 .. 1]
public func saturate(_ value: Double) -> Double {
  return value.clamped(min: 0, max: 1)
}

// Clamp to between [0 .. 1]
public func saturate<S>(_ value: S) -> S where S: SIMD, S.Scalar: Comparable & ExpressibleByIntegerLiteral {
  return value.clamped(min: 0, max: 1)
}

extension Float {
  // Clamp to between [0 .. 1]
  public var saturated: Float { saturate(self) }
}

extension Double {
  // Clamp to between [0 .. 1]
  public var saturated: Double { saturate(self) }
}

extension SIMD where Scalar: Comparable & ExpressibleByIntegerLiteral {
  // Clamp to between [0 .. 1]
  public var saturated: Self { saturate(self) }
}

// MARK: - fract

/// `x - floor(x)`, clamped to lie in the range [0,1).  Without this clamp step,
/// the result would be 1.0 when `x` is a very small negative number, which may
/// result in out-of-bounds table accesses in common usage.
public func fract(_ x: Float) -> Float {
  return saturate(x - floor(x))
}

/// `x - floor(x)`, clamped to lie in the range [0,1).  Without this clamp step,
/// the result would be 1.0 when `x` is a very small negative number, which may
/// result in out-of-bounds table accesses in common usage.
public func fract(_ x: Double) -> Double {
  return saturate(x - floor(x))
}

// MARK: - round

/// Returns a value equal to the nearest integer to x.
public func round(_ x: Float2) -> Float2 {
  return Float2(round(x[0]), round(x[1]))
}

/// Returns a value equal to the nearest integer to x.
public func round(_ x: Float3) -> Float3 {
  return Float3(round(x[0]), round(x[1]), round(x[2]))
}

/// Returns a value equal to the nearest integer to x.
public func round(_ x: Float4) -> Float4 {
  return Float4(round(x[0]), round(x[1]), round(x[2]), round(x[3]))
}

/// Returns a value equal to the nearest integer to x.
public func round(_ x: Double2) -> Double2 {
  return Double2(round(x[0]), round(x[1]))
}

/// Returns a value equal to the nearest integer to x.
public func round(_ x: Double3) -> Double3 {
  return Double3(round(x[0]), round(x[1]), round(x[2]))
}

/// Returns a value equal to the nearest integer to x.
public func round(_ x: Double4) -> Double4 {
  return Double4(round(x[0]), round(x[1]), round(x[2]), round(x[3]))
}

// MARK: - roundEven

/// Returns a value equal to the nearest integer to x.
/// A fractional part of 0.5 will round toward the nearest even
/// integer. (Both 3.5 and 4.5 for x will return 4.0.)
public func roundEven(_ x: Float) -> Float {
  let fractionalPart = fract(x)
  let integer = Int(x)
  let integerPart = Float(integer)

  if(fractionalPart > 0.5 || fractionalPart < 0.5) {
    return round(x)
  } else if ((integer % 2) == 0) {
    return integerPart
  } else if (x <= 0) {
    return integerPart - 1
  } else {
    return integerPart + 1
  }
}

/// Returns a value equal to the nearest integer to x.
/// A fractional part of 0.5 will round toward the nearest even
/// integer. (Both 3.5 and 4.5 for x will return 4.0.)
public func roundEven(_ x: Float2) -> Float2 {
  return Float2(roundEven(x[0]), roundEven(x[1]))
}

/// Returns a value equal to the nearest integer to x.
/// A fractional part of 0.5 will round toward the nearest even
/// integer. (Both 3.5 and 4.5 for x will return 4.0.)
public func roundEven(_ x: Float3) -> Float3 {
  return Float3(roundEven(x[0]), roundEven(x[1]), roundEven(x[2]))
}

/// Returns a value equal to the nearest integer to x.
/// A fractional part of 0.5 will round toward the nearest even
/// integer. (Both 3.5 and 4.5 for x will return 4.0.)
public func roundEven(_ x: Float4) -> Float4 {
  return Float4(roundEven(x[0]), roundEven(x[1]), roundEven(x[2]), roundEven(x[3]))
}

/// Returns a value equal to the nearest integer to x.
/// A fractional part of 0.5 will round toward the nearest even
/// integer. (Both 3.5 and 4.5 for x will return 4.0.)
public func roundEven(_ x: Double) -> Double {
  let fractionalPart = fract(x)
  let integer = Int(x)
  let integerPart = Double(integer)

  if(fractionalPart > 0.5 || fractionalPart < 0.5) {
    return round(x)
  } else if ((integer % 2) == 0) {
    return integerPart
  } else if (x <= 0) {
    return integerPart - 1
  } else {
    return integerPart + 1
  }
}

/// Returns a value equal to the nearest integer to x.
/// A fractional part of 0.5 will round toward the nearest even
/// integer. (Both 3.5 and 4.5 for x will return 4.0.)
public func roundEven(_ x: Double2) -> Double2 {
  return Double2(roundEven(x[0]), roundEven(x[1]))
}

/// Returns a value equal to the nearest integer to x.
/// A fractional part of 0.5 will round toward the nearest even
/// integer. (Both 3.5 and 4.5 for x will return 4.0.)
public func roundEven(_ x: Double3) -> Double3 {
  return Double3(roundEven(x[0]), roundEven(x[1]), roundEven(x[2]))
}

/// Returns a value equal to the nearest integer to x.
/// A fractional part of 0.5 will round toward the nearest even
/// integer. (Both 3.5 and 4.5 for x will return 4.0.)
public func roundEven(_ x: Double4) -> Double4 {
  return Double4(roundEven(x[0]), roundEven(x[1]), roundEven(x[2]), roundEven(x[3]))
}

// MARK: - mod

/// Modulus. Returns x - y * floor(x / y)
/// for each component in x using the floating point value y.
public func mod(_ x: Float, _ y: Float) -> Float {
  return x-y * floor(x/y)
}

/// Modulus. Returns x - y * floor(x / y)
/// for each component in x using the floating point value y.
public func mod(_ x: Float2, _ y: Float) -> Float2 {
  return Float2(mod(x[0], y), mod(x[1], y))
}

/// Modulus. Returns x - y * floor(x / y)
/// for each component in x using the floating point value y.
public func mod(_ x: Float3, _ y: Float) -> Float3 {
  return Float3(mod(x[0], y), mod(x[1], y), mod(x[2], y))
}

/// Modulus. Returns x - y * floor(x / y)
/// for each component in x using the floating point value y.
public func mod(_ x: Float4, _ y: Float) -> Float4 {
  return Float4(mod(x[0], y), mod(x[1], y), mod(x[2], y), mod(x[3], y))
}

/// Modulus. Returns x - y * floor(x / y)
/// for each component in x using the floating point value y.
public func mod(_ x: Float2, _ y: Float2) -> Float2 {
  return Float2(mod(x[0], y[0]), mod(x[1], y[1]))
}

/// Modulus. Returns x - y * floor(x / y)
/// for each component in x using the floating point value y.
public func mod(_ x: Float3, _ y: Float3) -> Float3 {
  return Float3(mod(x[0], y[0]), mod(x[1], y[1]), mod(x[2], y[2]))
}

/// Modulus. Returns x - y * floor(x / y)
/// for each component in x using the floating point value y.
public func mod(_ x: Float4, _ y: Float4) -> Float4 {
  return Float4(mod(x[0], y[0]), mod(x[1], y[1]), mod(x[2], y[2]), mod(x[3], y[3]))
}

/// Modulus. Returns x - y * floor(x / y)
/// for each component in x using the floating point value y.
public func mod(_ x: Double, _ y: Double) -> Double {
  return x-y * floor(x/y)
}

/// Modulus. Returns x - y * floor(x / y)
/// for each component in x using the floating point value y.
public func mod(_ x: Double2, _ y: Double) -> Double2 {
  return Double2(mod(x[0], y), mod(x[1], y))
}

/// Modulus. Returns x - y * floor(x / y)
/// for each component in x using the floating point value y.
public func mod(_ x: Double3, _ y: Double) -> Double3 {
  return Double3(mod(x[0], y), mod(x[1], y), mod(x[2], y))
}

/// Modulus. Returns x - y * floor(x / y)
/// for each component in x using the floating point value y.
public func mod(_ x: Double4, _ y: Double) -> Double4 {
  return Double4(mod(x[0], y), mod(x[1], y), mod(x[2], y), mod(x[3], y))
}

/// Modulus. Returns x - y * floor(x / y)
/// for each component in x using the floating point value y.
public func mod(_ x: Double2, _ y: Double2) -> Double2 {
  return Double2(mod(x[0], y[0]), mod(x[1], y[1]))
}

/// Modulus. Returns x - y * floor(x / y)
/// for each component in x using the floating point value y.
public func mod(_ x: Double3, _ y: Double3) -> Double3 {
  return Double3(mod(x[0], y[0]), mod(x[1], y[1]), mod(x[2], y[2]))
}

/// Modulus. Returns x - y * floor(x / y)
/// for each component in x using the floating point value y.
public func mod(_ x: Double4, _ y: Double4) -> Double4 {
  return Double4(mod(x[0], y[0]), mod(x[1], y[1]), mod(x[2], y[2]), mod(x[3], y[3]))
}

// MARK: - modf

/// Returns the integer (as a whole number floating point value) and fractional
/// part of x. Both the return values will have the same sign as x.
public func modf(_ x: Float2) -> (Float2, Float2) {
  let y = trunc(x)
  return (y, x - y)
}

/// Returns the integer (as a whole number floating point value) and fractional
/// part of x. Both the return values will have the same sign as x.
public func modf(_ x: Float3) -> (Float3, Float3) {
  let y = trunc(x)
  return (y, x - y)
}

/// Returns the integer (as a whole number floating point value) and fractional
/// part of x. Both the return values will have the same sign as x.
public func modf(_ x: Float4) -> (Float4, Float4) {
  let y = trunc(x)
  return (y, x - y)
}

/// Returns the integer (as a whole number floating point value) and fractional
/// part of x. Both the return values will have the same sign as x.
public func modf(_ x: Double2) -> (Double2, Double2) {
  let y = trunc(x)
  return (y, x - y)
}

/// Returns the integer (as a whole number floating point value) and fractional
/// part of x. Both the return values will have the same sign as x.
public func modf(_ x: Double3) -> (Double3, Double3) {
  let y = trunc(x)
  return (y, x - y)
}

/// Returns the integer (as a whole number floating point value) and fractional
/// part of x. Both the return values will have the same sign as x.
public func modf(_ x: Double4) -> (Double4, Double4) {
  let y = trunc(x)
  return (y, x - y)
}

// MARK: - mix

/// Returns x * (1.0 - t) + y * t, i.e., the linear blend of
/// x and y using the floating-point value a.
/// The value for t is not restricted to the range [0, 1].
public func mix(_ x: Float, _ y: Float, _ t: Float) -> Float {
  return x + t * (y - x)
}

/// Returns x * (1.0 - t) + y * t, i.e., the linear blend of
/// x and y using the floating-point value a.
/// The value for t is not restricted to the range [0, 1].
public func mix(_ x: Double, _ y: Double, _ t: Double) -> Double {
  return x + t * (y - x)
}

/// Returns x * (1.0 - t) + y * t, i.e., the linear blend of
/// x and y using the floating-point value a.
/// The value for t is not restricted to the range [0, 1].
public func mix(_ x: Float2, _ y: Float2, _ t: Float) -> Float2 {
  return x + t * (y - x)
}

/// Returns x * (1.0 - t) + y * t, i.e., the linear blend of
/// x and y using the floating-point value a.
/// The value for t is not restricted to the range [0, 1].
public func mix(_ x: Float2, _ y: Float2, _ t: Float2) -> Float2 {
  return x + t * (y - x)
}

/// Returns x * (1.0 - t) + y * t, i.e., the linear blend of
/// x and y using the floating-point value a.
/// The value for t is not restricted to the range [0, 1].
public func mix(_ x: Double2, _ y: Double2, _ t: Double) -> Double2 {
  return x + t * (y - x)
}

/// Returns x * (1.0 - t) + y * t, i.e., the linear blend of
/// x and y using the floating-point value a.
/// The value for t is not restricted to the range [0, 1].
public func mix(_ x: Double2, _ y: Double2, _ t: Double2) -> Double2 {
  return x + t * (y - x)
}

/// Returns x * (1.0 - t) + y * t, i.e., the linear blend of
/// x and y using the floating-point value a.
/// The value for t is not restricted to the range [0, 1].
public func mix(_ x: Float3, _ y: Float3, _ t: Float) -> Float3 {
  return x + t * (y - x)
}

/// Returns x * (1.0 - t) + y * t, i.e., the linear blend of
/// x and y using the floating-point value a.
/// The value for t is not restricted to the range [0, 1].
public func mix(_ x: Float3, _ y: Float3, _ t: Float3) -> Float3 {
  return x + t * (y - x)
}

/// Returns x * (1.0 - t) + y * t, i.e., the linear blend of
/// x and y using the floating-point value a.
/// The value for t is not restricted to the range [0, 1].
public func mix(_ x: Double3, _ y: Double3, _ t: Double) -> Double3 {
  return x + t * (y - x)
}

/// Returns x * (1.0 - t) + y * t, i.e., the linear blend of
/// x and y using the floating-point value a.
/// The value for t is not restricted to the range [0, 1].
public func mix(_ x: Double3, _ y: Double3, _ t: Double3) -> Double3 {
  return x + t * (y - x)
}

/// Returns x * (1.0 - t) + y * t, i.e., the linear blend of
/// x and y using the floating-point value a.
/// The value for t is not restricted to the range [0, 1].
public func mix(_ x: Float4, _ y: Float4, _ t: Float) -> Float4 {
  return x + t * (y - x)
}

/// Returns x * (1.0 - t) + y * t, i.e., the linear blend of
/// x and y using the floating-point value a.
/// The value for t is not restricted to the range [0, 1].
public func mix(_ x: Float4, _ y: Float4, _ t: Float4) -> Float4 {
  return x + t * (y - x)
}

/// Returns x * (1.0 - t) + y * t, i.e., the linear blend of
/// x and y using the floating-point value a.
/// The value for t is not restricted to the range [0, 1].
public func mix(_ x: Double4, _ y: Double4, _ t: Double) -> Double4 {
  return x + t * (y - x)
}

/// Returns x * (1.0 - t) + y * t, i.e., the linear blend of
/// x and y using the floating-point value a.
/// The value for t is not restricted to the range [0, 1].
public func mix(_ x: Double4, _ y: Double4, _ t: Double4) -> Double4 {
  return x + t * (y - x)
}

// MARK: - smoothstep

/// Returns 0.0 if x <= edge0 and 1.0 if x >= edge1 and
/// performs smooth Hermite interpolation between 0 and 1
/// when edge0 < x < edge1. This is useful in cases where
/// you would want a threshold function with a smooth
public func smoothstep(_ x: Float, edge0: Float, edge1: Float) -> Float {
  let t = saturate((x - edge0) / (edge1 - edge0))
  return t * t * (3 - 2 * t);
}

/// Returns 0.0 if x <= edge0 and 1.0 if x >= edge1 and
/// performs smooth Hermite interpolation between 0 and 1
/// when edge0 < x < edge1. This is useful in cases where
/// you would want a threshold function with a smooth
public func smoothstep(_ x: Double, edge0: Double, edge1: Double) -> Double {
  let t = saturate((x - edge0) / (edge1 - edge0))
  return t * t * (3 - 2 * t);
}

/// Returns 0.0 if x <= edge0 and 1.0 if x >= edge1 and
/// performs smooth Hermite interpolation between 0 and 1
/// when edge0 < x < edge1. This is useful in cases where
/// you would want a threshold function with a smooth
public func smoothstep(_ x: Float2, edge0: Float, edge1: Float) -> Float2 {
  let t = saturate((x - edge0) / (edge1 - edge0))
  return t * t * (3 - 2 * t);
}

/// Returns 0.0 if x <= edge0 and 1.0 if x >= edge1 and
/// performs smooth Hermite interpolation between 0 and 1
/// when edge0 < x < edge1. This is useful in cases where
/// you would want a threshold function with a smooth
public func smoothstep(_ x: Double2, edge0: Double, edge1: Double) -> Double2 {
  let t = saturate((x - edge0) / (edge1 - edge0))
  return t * t * (3 - 2 * t);
}

/// Returns 0.0 if x <= edge0 and 1.0 if x >= edge1 and
/// performs smooth Hermite interpolation between 0 and 1
/// when edge0 < x < edge1. This is useful in cases where
/// you would want a threshold function with a smooth
public func smoothstep(_ x: Float3, edge0: Float, edge1: Float) -> Float3 {
  let t = saturate((x - edge0) / (edge1 - edge0))
  return t * t * (3 - 2 * t);
}

/// Returns 0.0 if x <= edge0 and 1.0 if x >= edge1 and
/// performs smooth Hermite interpolation between 0 and 1
/// when edge0 < x < edge1. This is useful in cases where
/// you would want a threshold function with a smooth
public func smoothstep(_ x: Double3, edge0: Double, edge1: Double) -> Double3 {
  let t = saturate((x - edge0) / (edge1 - edge0))
  return t * t * (3 - 2 * t);
}

/// Returns 0.0 if x <= edge0 and 1.0 if x >= edge1 and
/// performs smooth Hermite interpolation between 0 and 1
/// when edge0 < x < edge1. This is useful in cases where
/// you would want a threshold function with a smooth
public func smoothstep(_ x: Float4, edge0: Float, edge1: Float) -> Float4 {
  let t = saturate((x - edge0) / (edge1 - edge0))
  return t * t * (3 - 2 * t);
}

/// Returns 0.0 if x <= edge0 and 1.0 if x >= edge1 and
/// performs smooth Hermite interpolation between 0 and 1
/// when edge0 < x < edge1. This is useful in cases where
/// you would want a threshold function with a smooth
public func smoothstep(_ x: Double4, edge0: Double, edge1: Double) -> Double4 {
  let t = saturate((x - edge0) / (edge1 - edge0))
  return t * t * (3 - 2 * t);
}

// MARK: - fma

/// Computes and returns a * b + c.
public func fma(_ a: Float2, b: Float2, c: Float2) -> Float2 {
  return Float2(fma(a[0], b[0], c[0]), fma(a[1], b[1], c[1]))
}

/// Computes and returns a * b + c.
public func fma(_ a: Float3, b: Float3, c: Float3) -> Float3 {
  return Float3(fma(a[0], b[0], c[0]), fma(a[1], b[1], c[1]), fma(a[2], b[2], c[2]))
}

/// Computes and returns a * b + c.
public func fma(_ a: Float4, b: Float4, c: Float4) -> Float4 {
  return Float4(fma(a[0], b[0], c[0]), fma(a[1], b[1], c[1]), fma(a[2], b[2], c[2]), fma(a[3], b[3], c[3]))
}

/// Computes and returns a * b + c.
public func fma(_ a: Double2, b: Double2, c: Double2) -> Double2 {
  return Double2(fma(a[0], b[0], c[0]), fma(a[1], b[1], c[1]))
}

/// Computes and returns a * b + c.
public func fma(_ a: Double3, b: Double3, c: Double3) -> Double3 {
  return Double3(fma(a[0], b[0], c[0]), fma(a[1], b[1], c[1]), fma(a[2], b[2], c[2]))
}

/// Computes and returns a * b + c.
public func fma(_ a: Double4, b: Double4, c: Double4) -> Double4 {
  return Double4(fma(a[0], b[0], c[0]), fma(a[1], b[1], c[1]), fma(a[2], b[2], c[2]), fma(a[3], b[3], c[3]))
}

// MARK: - frexp

/// Splits x into a floating-point significand in the range
/// [0.5, 1.0) and an integral exponent of two, such that:
/// x = significand * exp(2, exponent)
public func frexp(_ x: Float2) -> (Float2, Int2) {
  let f1 = frexp(x[0])
  let f2 = frexp(x[1])
  return (Float2(f1.0, f2.0), Int2(Int32(f1.1), Int32(f2.1)))
}

/// Splits x into a floating-point significand in the range
/// [0.5, 1.0) and an integral exponent of two, such that:
/// x = significand * exp(2, exponent)
public func frexp(_ x: Float3) -> (Float3, Int3) {
  let f1 = frexp(x[0])
  let f2 = frexp(x[1])
  let f3 = frexp(x[2])
  return (Float3(f1.0, f2.0, f3.0), Int3(Int32(f1.1), Int32(f2.1), Int32(f3.1)))
}

/// Splits x into a floating-point significand in the range
/// [0.5, 1.0) and an integral exponent of two, such that:
/// x = significand * exp(2, exponent)
public func frexp(_ x: Float4) -> (Float4, Int4) {
  let f1 = frexp(x[0])
  let f2 = frexp(x[1])
  let f3 = frexp(x[2])
  let f4 = frexp(x[3])
  return (Float4(f1.0, f2.0, f3.0, f4.0), Int4(Int32(f1.1), Int32(f2.1), Int32(f3.1), Int32(f4.1)))
}

/// Splits x into a floating-point significand in the range
/// [0.5, 1.0) and an integral exponent of two, such that:
/// x = significand * exp(2, exponent)
public func frexp(_ x: Double2) -> (Double2, Int2) {
  let f1 = frexp(x[0])
  let f2 = frexp(x[1])
  return (Double2(f1.0, f2.0), Int2(Int32(f1.1), Int32(f2.1)))
}

/// Splits x into a floating-point significand in the range
/// [0.5, 1.0) and an integral exponent of two, such that:
/// x = significand * exp(2, exponent)
public func frexp(_ x: Double3) -> (Double3, Int3) {
  let f1 = frexp(x[0])
  let f2 = frexp(x[1])
  let f3 = frexp(x[2])
  return (Double3(f1.0, f2.0, f3.0), Int3(Int32(f1.1), Int32(f2.1), Int32(f3.1)))
}

/// Splits x into a floating-point significand in the range
/// [0.5, 1.0) and an integral exponent of two, such that:
/// x = significand * exp(2, exponent)
public func frexp(_ x: Double4) -> (Double4, Int4) {
  let f1 = frexp(x[0])
  let f2 = frexp(x[1])
  let f3 = frexp(x[2])
  let f4 = frexp(x[3])
  return (Double4(f1.0, f2.0, f3.0, f4.0), Int4(Int32(f1.1), Int32(f2.1), Int32(f3.1), Int32(f4.1)))
}

// MARK: - scalbn

/// Builds a floating-point number from x and the
/// corresponding integral exponent of two in exp, returning:
/// significand * exp(2, exponent)
public func scalbn(_ x: Float2, exp: Int2) -> Float2 {
  return Float2(scalbn(x[0], Int(exp[0])), scalbn(x[1], Int(exp[1])))
}

/// Builds a floating-point number from x and the
/// corresponding integral exponent of two in exp, returning:
/// significand * exp(2, exponent)
public func scalbn(_ x: Float3, exp: Int3) -> Float3 {
  return Float3(scalbn(x[0], Int(exp[0])), scalbn(x[1], Int(exp[1])), scalbn(x[2], Int(exp[2])))
}

/// Builds a floating-point number from x and the
/// corresponding integral exponent of two in exp, returning:
/// significand * exp(2, exponent)
public func scalbn(_ x: Float4, exp: Int4) -> Float4 {
  return Float4(scalbn(x[0], Int(exp[0])), scalbn(x[1], Int(exp[1])), scalbn(x[2], Int(exp[2])), scalbn(x[3], Int(exp[3])))
}

/// Builds a floating-point number from x and the
/// corresponding integral exponent of two in exp, returning:
/// significand * exp(2, exponent)
public func scalbn(_ x: Double2, exp: Int2) -> Double2 {
  return Double2(scalbn(x[0], Int(exp[0])), scalbn(x[1], Int(exp[1])))
}

/// Builds a floating-point number from x and the
/// corresponding integral exponent of two in exp, returning:
/// significand * exp(2, exponent)
public func scalbn(_ x: Double3, exp: Int3) -> Double3 {
  return Double3(scalbn(x[0], Int(exp[0])), scalbn(x[1], Int(exp[1])), scalbn(x[2], Int(exp[2])))
}

/// Builds a floating-point number from x and the
/// corresponding integral exponent of two in exp, returning:
/// significand * exp(2, exponent)
public func scalbn(_ x: Double4, exp: Int4) -> Double4 {
  return Double4(scalbn(x[0], Int(exp[0])), scalbn(x[1], Int(exp[1])), scalbn(x[2], Int(exp[2])), scalbn(x[3], Int(exp[3])))
}
