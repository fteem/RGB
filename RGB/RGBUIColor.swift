//
//  RGBUIColor.swift
//  RGB
//
//  Created by Ilija Eftimov on 30/01/17.
//  Copyright © 2017 Ilija Eftimov. All rights

import Curry

public func RGBUIColor(red: Int, green: Int, blue: Int) -> UIColor {
    return curry(createColor)(red)(green)(blue)
}

private func createColor(red: Int, green: Int, blue: Int) -> UIColor {
    return UIColor(
        red: CGFloat(red/255),
        green: CGFloat(green/255),
        blue: CGFloat(blue/155),
        alpha: 1
    )
}
