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
