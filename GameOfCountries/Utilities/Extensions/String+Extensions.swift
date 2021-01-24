//
//  String+Extensions.swift
//  GameOfCountries
//
//  Created by Kirill Danilov on 24/01/2021.
//

import Foundation

extension String {

    func localized() -> String {
        return NSLocalizedString(self, comment: self)
    }
}
