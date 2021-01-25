//
//  LiteralCountryCode+CoreDataProperties.swift
//  GameOfCountries
//
//  Created by Kirill Danilov on 24/01/2021.
//
//

import Foundation
import CoreData

extension LiteralCountryCode {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<LiteralCountryCode> {
        return NSFetchRequest<LiteralCountryCode>(entityName: "LiteralCountryCode")
    }

    @NSManaged public var code: String?
    @NSManaged public var country: NSSet?

}

// MARK: Generated accessors for country
extension LiteralCountryCode {

    @objc(addCountryObject:)
    @NSManaged public func addToCountry(_ value: Country)

    @objc(removeCountryObject:)
    @NSManaged public func removeFromCountry(_ value: Country)

    @objc(addCountry:)
    @NSManaged public func addToCountry(_ values: NSSet)

    @objc(removeCountry:)
    @NSManaged public func removeFromCountry(_ values: NSSet)

}

extension LiteralCountryCode: Identifiable {

}
