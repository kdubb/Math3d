//
//  VectorSwizzle.swift
//  Math3d
//
//  Created by Kevin Wooten on 6/4/17.
//  Copyright © 2017 Outfox, Inc. All rights reserved.
//

import Foundation

// Vector swizzling support

extension SIMD2 where Scalar: ExpressibleByIntegerLiteral {

  public var z: Scalar { return 0 }
  public var w: Scalar { return 0 }

  public var r: Scalar { get { return x } set { x = newValue } }
  public var g: Scalar { get { return y } set { y = newValue } }
  public var b: Scalar { return z }
  public var a: Scalar { return w }

  public var s: Scalar { get { return x } set { x = newValue } }
  public var t: Scalar { get { return y } set { y = newValue } }
  public var p: Scalar { return z }
  public var q: Scalar { return w }

}

extension SIMD3 where Scalar: ExpressibleByIntegerLiteral {

  public var w: Scalar { return 0 }

  public var r: Scalar { get { return x } set { x = newValue } }
  public var g: Scalar { get { return y } set { y = newValue } }
  public var b: Scalar { get { return z } set { z = newValue } }
  public var a: Scalar { return w }

  public var s: Scalar { get { return x } set { x = newValue } }
  public var t: Scalar { get { return y } set { y = newValue } }
  public var p: Scalar { get { return z } set { z = newValue } }
  public var q: Scalar { return w }

}

extension SIMD4 where Scalar: ExpressibleByIntegerLiteral {

  public var r: Scalar { get { return x } set { x = newValue } }
  public var g: Scalar { get { return y } set { y = newValue } }
  public var b: Scalar { get { return z } set { z = newValue } }
  public var a: Scalar { get { return w } set { w = newValue } }

  public var s: Scalar { get { return x } set { x = newValue } }
  public var t: Scalar { get { return y } set { y = newValue } }
  public var p: Scalar { get { return z } set { z = newValue } }
  public var q: Scalar { get { return w } set { z = newValue } }
  
  
}
