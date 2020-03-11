//
//  VectorSwizzleGen.swift
//  Math3d
//
//  Created by Kevin Wooten on 6/4/17.
//  Copyright © 2017 Outfox, Inc. All rights reserved.
//
//
//  Command line util that generates the vector swizzling code.
//
//  Run As:
//    swift VectorSwizzleGen.swift
//

import Foundation



let sizes = [2, 3, 4]

let xyzw = ["x", "y", "z", "w"]
let rgba = ["r", "g", "b", "a"]
let stpq = ["s", "t", "p", "q"]
let compSets = [xyzw, rgba, stpq]

func genIter(_ currentComps: [String], _ compSet: [String], _ settableCompSet: [String]) -> String {

  let size = currentComps.count
  let isUnique = Set(currentComps).count == size
  let isSettable = currentComps.reduce(true, { $0 && settableCompSet.contains($1) })

  let getter = "SIMD\(size)<Scalar>(\(currentComps.joined(separator: ", ")))"
  let setter = currentComps.enumerated().map({ "\($1) = newValue.\(xyzw[$0])" }).joined(separator: "; ")

  var iter = "  public var \(currentComps.joined(separator: "")): SIMD\(size)<Scalar> { "
  if (isUnique && isSettable) {
    iter += "get { \(getter) } set { \(setter) }"
  }
  else {
    iter += getter
  }
  iter += " }"

  return iter
}

for size in sizes {

  var extensionData =
  """
  // Autogenerated - Math3d::Gen - \(Date())
  
  
  extension SIMD\(size) where Scalar: ExpressibleByIntegerLiteral {
  
  """

  // Double accessors
  for compSet in compSets {
    let settableCompSet = Array(compSet.prefix(upTo: size))
    for comp1 in compSet {
      for comp2 in compSet {
        extensionData += genIter([comp1, comp2], compSet, settableCompSet)
        extensionData += "\n"
      }
    }
    extensionData += "\n"
  }

  extensionData += "\n"

  // Triple accessors
  for compSet in compSets {
    let settableCompSet = Array(compSet.prefix(upTo: size))
    for comp1 in compSet {
      for comp2 in compSet {
        for comp3 in compSet {
          extensionData += genIter([comp1, comp2, comp3], compSet, settableCompSet)
          extensionData += "\n"
        }
      }
    }
    extensionData += "\n"
  }

  extensionData += "\n"

  // Quadruple accessors
  for compSet in compSets {
    let settableCompSet = Array(compSet.prefix(upTo: size))
    for comp1 in compSet {
      for comp2 in compSet {
        for comp3 in compSet {
          for comp4 in compSet {
            extensionData += genIter([comp1, comp2, comp3, comp4], compSet, settableCompSet)
            extensionData += "\n"
          }
        }
      }
    }
    extensionData += "\n"
  }

  extensionData += "}\n\n"

  try! extensionData.write(toFile: "SIMD\(size)+Swizzle.swift", atomically: true, encoding: .utf8)
}

