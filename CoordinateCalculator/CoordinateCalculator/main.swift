//
//  main.swift
//  CoordinateCalculator
//
//  Created by Choi Jeong Hoon on 2017. 11. 27..
//  Copyright © 2017 Codesquad Inc. All rights reserved.
//

import Foundation

while (true) {
    do {
        let stringCoords = InputView().readInput()
        if stringCoords == "q" {
            break
        }
        let checked = try SyntaxChecker().getErrorChekcedValue(stringCoords)
        let shapes = try ShapeFactory.makeShapeInstance(checked)
        OutputView().printPoints(shapes)
        if let calculatableShapes = shapes as? (ShapeCalculation & MyShape) {
            OutputView().printCalculation(myShape: calculatableShapes)
        }
    } catch let error as SyntaxChecker.ErrorMessage {
        print (error.rawValue)
    } catch let error as ShapeFactory.ErrorMessage {
        print (error.rawValue)
    } catch {
        print (SyntaxChecker.ErrorMessage.ofUnKnownError.rawValue)
    }
}
