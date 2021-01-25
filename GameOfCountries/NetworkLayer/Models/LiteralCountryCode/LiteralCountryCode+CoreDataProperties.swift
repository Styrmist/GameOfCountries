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
    @NSManaged public var countries: NSSet?
}

// MARK: Generated accessors for country
extension LiteralCountryCode {

    @objc(addCountriesObject:)
    @NSManaged public func addToCountries(_ value: Country)

    @objc(removeCountriesObject:)
    @NSManaged public func removeFromCountries(_ value: Country)

    @objc(addCountries:)
    @NSManaged public func addToCountries(_ values: NSSet)

    @objc(removeCountries:)
    @NSManaged public func removeFromCountries(_ values: NSSet)
}

extension LiteralCountryCode: Identifiable {

}
