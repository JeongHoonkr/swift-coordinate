//
//  OutputView.swift
//  CoordinateCalculator
//
//  Created by Choi Jeong Hoon on 2017. 11. 16..
//  Copyright © 2017년 Codesquad Inc. All rights reserved.
//

import Foundation

struct OutputView {
    static func drawAxis () {
        print("\(ANSICode.text.whiteBright)\(ANSICode.axis.draw())")
    }
    
    static func deleteAxis () {
        print("\(ANSICode.clear)\(ANSICode.home)")
    }
    
    static func drawPoint (_ input: MyPoint) {
        deleteAxis()
        print("\(ANSICode.cursor.move(row: input.coordinates.y, col: input.coordinates.x))\(ANSICode.text.redBright).")
        drawAxis()
    }
}
