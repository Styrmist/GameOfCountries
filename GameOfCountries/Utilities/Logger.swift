//
//  Logger.swift
//  GameOfCountries
//
//  Created by Kirill Danilov on 23/01/2021.
//

import Logging

let logger: Logger = {
    var logger = Logger(label: "com.laziest.GameOfCountries.main")
    logger.logLevel = .debug
    return logger
}()
