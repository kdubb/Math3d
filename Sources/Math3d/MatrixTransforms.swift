//
//  MatrixTransforms.swift
//  Math3d
//
//  Provides methods to generate & transform
//  matrices for simple & complex parameters.
//
//  Created by Kevin Wooten on 6/4/17.
//  Copyright © 2017 Outfox, Inc. All rights reserved.
//

import Foundation



/// Builds a translation 4 * 4 matrix created from a vector of 3 components.
public func translate(_ m: Float4x4, _ v: Float3) -> Float4x4 {
  var result = m
  let vv = Float4(v.x, v.y, v.z, 1)
  result[3] = m * vv
  return result
}

/// Builds a translation 4 * 4 matrix created from a vector of 3 components.
public func translate(_ m: Double4x4, _ v: Double3) -> Double4x4 {
  var result = m
  let vv = Double4(v.x, v.y, v.z, 1)
  result[3] = m * vv
  return result
}

/// Builds a rotation 4 * 4 matrix created from an axis vector and an angle.
public func rotate(_ m: Float4x4, angle: Float, axis: Float3) -> Float4x4 {

  let a = angle
  let c = cos(a)
  let s = sin(a)

  let v = normalize(axis)
  let temp = (1 - c) * v

  var rotate = Float4x4(0)
  rotate[0][0] = c + temp[0] * v[0]
  rotate[0][1] = 0 + temp[0] * v[1] + s * v[2]
  rotate[0][2] = 0 + temp[0] * v[2] - s * v[1]

  rotate[1][0] = 0 + temp[1] * v[0] - s * v[2]
  rotate[1][1] = c + temp[1] * v[1]
  rotate[1][2] = 0 + temp[1] * v[2] + s * v[0]

  rotate[2][0] = 0 + temp[2] * v[0] + s * v[1]
  rotate[2][1] = 0 + temp[2] * v[1] - s * v[0]
  rotate[2][2] = c + temp[2] * v[2]

  return Float4x4(m[0] * rotate[0][0] + m[1] * rotate[0][1] + m[2] * rotate[0][2],
                  m[0] * rotate[1][0] + m[1] * rotate[1][1] + m[2] * rotate[1][2],
                  m[0] * rotate[2][0] + m[1] * rotate[2][1] + m[2] * rotate[2][2],
                  m[3])
}

/// Builds a rotation 4 * 4 matrix created from an axis vector and an angle.
public func rotate(_ m: Double4x4, angle: Double, axis: Double3) -> Double4x4 {

  let a = angle
  let c = cos(a)
  let s = sin(a)

  let v = normalize(axis)
  let temp = (1 - c) * v

  var rotate = Double4x4(0)
  rotate[0][0] = c + temp[0] * v[0]
  rotate[0][1] = 0 + temp[0] * v[1] + s * v[2]
  rotate[0][2] = 0 + temp[0] * v[2] - s * v[1]

  rotate[1][0] = 0 + temp[1] * v[0] - s * v[2]
  rotate[1][1] = c + temp[1] * v[1]
  rotate[1][2] = 0 + temp[1] * v[2] + s * v[0]

  rotate[2][0] = 0 + temp[2] * v[0] + s * v[1]
  rotate[2][1] = 0 + temp[2] * v[1] - s * v[0]
  rotate[2][2] = c + temp[2] * v[2]

  return Double4x4(m[0] * rotate[0][0] + m[1] * rotate[0][1] + m[2] * rotate[0][2],
                   m[0] * rotate[1][0] + m[1] * rotate[1][1] + m[2] * rotate[1][2],
                   m[0] * rotate[2][0] + m[1] * rotate[2][1] + m[2] * rotate[2][2],
                   m[3])
}

/// Builds a scale 4 * 4 matrix created from 3 scalars.
public func scale(_ m: Float4x4, _ v: Float3) -> Float4x4 {
  return Float4x4(m[0] * v[0],
                  m[1] * v[1],
                  m[2] * v[2],
                  m[3])
}

/// Builds a scale 4 * 4 matrix created from 3 scalars.
public func scale(_ m: Double4x4, _ v: Double3) -> Double4x4 {
  return Double4x4(m[0] * v[0],
                   m[1] * v[1],
                   m[2] * v[2],
                   m[3])
}

/// Creates a matrix for an orthographic parallel viewing volume.
public func ortho(left: Float, right: Float, bottom: Float, top: Float, zNear: Float, zFar: Float) -> Float4x4 {
  var result = Float4x4(1)
  result[0][0] = Float(2) / (right - left)
  result[1][1] = Float(2) / (top - bottom)
  result[2][2] = -Float(2) / (zFar - zNear)
  result[3][0] = -(right + left) / (right - left)
  result[3][1] = -(top + bottom) / (top - bottom)
  result[3][2] = -(zFar + zNear) / (zFar - zNear)
  return result
}

/// Creates a matrix for projecting two-dimensional coordinates onto the screen.
public func ortho(left: Float, right: Float, bottom: Float, top: Float) -> Float4x4 {
  var result = Float4x4(1)
  result[0][0] = Float(2) / (right - left)
  result[1][1] = Float(2) / (top - bottom)
  result[2][2] = -Float(1)
  result[3][0] = -(right + left) / (right - left)
  result[3][1] = -(top + bottom) / (top - bottom)
  return result
}

/// Creates a matrix for an orthographic parallel viewing volume.
public func ortho(left: Double, right: Double, bottom: Double, top: Double, zNear: Double, zFar: Double) -> Double4x4 {
  var result = Double4x4(1)
  result[0][0] = Double(2) / (right - left)
  result[1][1] = Double(2) / (top - bottom)
  result[2][2] = -Double(2) / (zFar - zNear)
  result[3][0] = -(right + left) / (right - left)
  result[3][1] = -(top + bottom) / (top - bottom)
  result[3][2] = -(zFar + zNear) / (zFar - zNear)
  return result
}

/// Creates a matrix for projecting two-dimensional coordinates onto the screen.
public func ortho(left: Double, right: Double, bottom: Double, top: Double) -> Double4x4 {
  var result = Double4x4(1)
  result[0][0] = Double(2) / (right - left)
  result[1][1] = Double(2) / (top - bottom)
  result[2][2] = -Double(1)
  result[3][0] = -(right + left) / (right - left)
  result[3][1] = -(top + bottom) / (top - bottom)
  return result
}

/// Creates a frustum matrix.
public func frustum(left: Float, right: Float, bottom: Float, top: Float, near: Float, far: Float) -> Float4x4 {
  var result = Float4x4(0)
  result[0][0] = (Float(2) * near) / (right - left)
  result[1][1] = (Float(2) * near) / (top - bottom)
  result[2][0] = (right + left) / (right - left)
  result[2][1] = (top + bottom) / (top - bottom)
  result[2][2] = -(far + near) / (far - near)
  result[2][3] = Float(-1)
  result[3][2] = -(Float(2) * far * near) / (far - near)
  return result
}

/// Creates a frustum matrix.
public func frustum(left: Double, right: Double, bottom: Double, top: Double, near: Double, far: Double) -> Double4x4 {
  var result = Double4x4(0)
  result[0][0] = (Double(2) * near) / (right - left)
  result[1][1] = (Double(2) * near) / (top - bottom)
  result[2][0] = (right + left) / (right - left)
  result[2][1] = (top + bottom) / (top - bottom)
  result[2][2] = -(far + near) / (far - near)
  result[2][3] = Double(-1)
  result[3][2] = -(Double(2) * far * near) / (far - near)
  return result
}

/// Creates a matrix for a symetric perspective-view.
public func perspective(fovY: Float, aspect: Float, zNear: Float, zFar: Float) -> Float4x4 {

  precondition(abs(aspect) > Float(0), "")

  let tanHalfFovy = tan(fovY / Float(2))

  var result = Float4x4(0)
  result[0][0] = Float(1) / (aspect * tanHalfFovy)
  result[1][1] = Float(1) / (tanHalfFovy)
  result[2][2] = -(zFar + zNear) / (zFar - zNear)
  result[2][3] = -Float(1)
  result[3][2] = -(Float(2) * zFar * zNear) / (zFar - zNear)
  return result
}

/// Creates a matrix for a symetric perspective-view.
public func perspective(fovY: Double, aspect: Double, zNear: Double, zFar: Double) -> Double4x4 {

  precondition(abs(aspect) > Double(0), "")

  let tanHalfFovy = tan(fovY / Double(2))

  var result = Double4x4(0)
  result[0][0] = Double(1) / (aspect * tanHalfFovy)
  result[1][1] = Double(1) / (tanHalfFovy)
  result[2][2] = -(zFar + zNear) / (zFar - zNear)
  result[2][3] = -Double(1)
  result[3][2] = -(Double(2) * zFar * zNear) / (zFar - zNear)
  return result
}

/// Builds a perspective projection matrix based on a field of view.
public func perspectiveFov(fov: Float, width: Float, height: Float, zNear: Float, zFar: Float) -> Float4x4 {
  precondition(width > Float(0))
  precondition(height > Float(0))
  precondition(fov > Float(0))

  let rad = fov
  let h = cos(Float(0.5) * rad) / sin(Float(0.5) * rad)
  let w = h * height / width

  var result = Float4x4(0)
  result[0][0] = w
  result[1][1] = h
  result[2][2] = -(zFar + zNear) / (zFar - zNear)
  result[2][3] = -Float(1)
  result[3][2] = -(Float(2) * zFar * zNear) / (zFar - zNear)
  return result;
}

/// Builds a perspective projection matrix based on a field of view.
public func perspectiveFov(fov: Double, width: Double, height: Double, zNear: Double, zFar: Double) -> Double4x4 {
  precondition(width > Double(0))
  precondition(height > Double(0))
  precondition(fov > Double(0))

  let rad = fov
  let h = cos(Double(0.5) * rad) / sin(Double(0.5) * rad)
  let w = h * height / width

  var result = Double4x4(0)
  result[0][0] = w
  result[1][1] = h
  result[2][2] = -(zFar + zNear) / (zFar - zNear)
  result[2][3] = -Double(1)
  result[3][2] = -(Double(2) * zFar * zNear) / (zFar - zNear)
  return result;
}

/// Creates a matrix for a symmetric perspective-view frustum with far plane at infinite.
public func infinitePerspective(fovY : Float, aspect: Float, zNear : Float) -> Float4x4 {
  let range = tan(fovY / Float(2)) * zNear;
  let left = -range * aspect;
  let right = range * aspect;
  let bottom = -range;
  let top = range;

  var result = Float4x4(0)
  result[0][0] = (Float(2) * zNear) / (right - left);
  result[1][1] = (Float(2) * zNear) / (top - bottom);
  result[2][2] = -Float(1);
  result[2][3] = -Float(1);
  result[3][2] = -Float(2) * zNear;
  return result;
}

/// Creates a matrix for a symmetric perspective-view frustum with far plane at infinite.
public func infinitePerspective(fovY : Double, aspect: Double, zNear : Double) -> Double4x4 {
  let range = tan(fovY / Double(2)) * zNear;
  let left = -range * aspect;
  let right = range * aspect;
  let bottom = -range;
  let top = range;

  var result = Double4x4(0)
  result[0][0] = (Double(2) * zNear) / (right - left);
  result[1][1] = (Double(2) * zNear) / (top - bottom);
  result[2][2] = -Double(1);
  result[2][3] = -Double(1);
  result[3][2] = -Double(2) * zNear;
  return result;
}

/// Build a look at view matrix.
public func lookAt(eye: Float3, center: Float3, up: Float3) -> Float4x4 {

  let f = normalize(center - eye);
  let s = normalize(cross(f, up));
  let u = cross(s, f);

  var result = Float4x4(1);
  result[0][0] = s.x;
  result[1][0] = s.y;
  result[2][0] = s.z;
  result[0][1] = u.x;
  result[1][1] = u.y;
  result[2][1] = u.z;
  result[0][2] = -f.x;
  result[1][2] = -f.y;
  result[2][2] = -f.z;
  result[3][0] = -dot(s, eye);
  result[3][1] = -dot(u, eye);
  result[3][2] = dot(f, eye);
  return result
}

/// Build a look at view matrix.
public func lookAt(eye: Double3, center: Double3, up: Double3) -> Double4x4 {

  let f = normalize(center - eye);
  let s = normalize(cross(f, up));
  let u = cross(s, f);

  var result = Double4x4(1);
  result[0][0] = s.x;
  result[1][0] = s.y;
  result[2][0] = s.z;
  result[0][1] = u.x;
  result[1][1] = u.y;
  result[2][1] = u.z;
  result[0][2] = -f.x;
  result[1][2] = -f.y;
  result[2][2] = -f.z;
  result[3][0] = -dot(s, eye);
  result[3][1] = -dot(u, eye);
  result[3][2] = dot(f, eye);
  return result
}

