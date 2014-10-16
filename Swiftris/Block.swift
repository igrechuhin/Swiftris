//
//  Block.swift
//  Swiftris
//
//  Created by Илья on 13.10.14.
//  Copyright (c) 2014 Ilya. All rights reserved.
//

import Spritekit

let NumberOfColors : UInt32 = 6

enum BlockColor : Int, Printable {
    case Blue = 0, Orange, Purple, Red, Teal, Yellow

    var description: String {
        switch self {
        case .Blue:
            return "blue"
        case .Orange:
            return "orange"
        case .Purple:
            return "purple"
        case .Red:
            return "red"
        case .Teal:
            return "teal"
        case .Yellow:
            return "yellow"
            }
    }

    static func random() -> BlockColor {
        return BlockColor.fromRaw(Int(arc4random_uniform(NumberOfColors)))!
    }
}

class Block : Hashable, Printable {
  let color : BlockColor

  var column : Int
  var row : Int
  var sprite : SKSpriteNode?

  var spriteName : String {
    return color.description
  }

  var hashValue : Int {
    return self.column ^ self.row
  }

  var description : String {
    return "\(color): [\(column), \(row))]"
  }

  init(column : Int, row : Int, color : BlockColor) {
    self.column = column
    self.row = row
    self.color = color
  }
}

func ==(lhs : Block, rhs : Block) -> Bool {
  return lhs.column == rhs.column && lhs.row == rhs.row && lhs.color == rhs.color
}
