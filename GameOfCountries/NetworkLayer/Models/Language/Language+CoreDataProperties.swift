//
//  Language+CoreDataProperties.swift
//  GameOfCountries
//
//  Created by Kirill Danilov on 24/01/2021.
//
//

import Foundation
import CoreData

extension Language {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Language> {
        return NSFetchRequest<Language>(entityName: "Language")
    }
    // swiftlint:disable identifier_name
    @NSManaged public var iso639_1: String?
    @NSManaged public var iso639_2: String?
    @NSManaged public var name: String?
    @NSManaged public var nativeName: String?
    @NSManaged public var country: NSSet?

    // swiftlint:enable identifier_name
}

// MARK: Generated accessors for country
extension Language {

    @objc(addCountryObject:)
    @NSManaged public func addToCountry(_ value: Country)

    @objc(removeCountryObject:)
    @NSManaged public func removeFromCountry(_ value: Country)

    @objc(addCountry:)
    @NSManaged public func addToCountry(_ values: NSSet)

    @objc(removeCountry:)
    @NSManaged public func removeFromCountry(_ values: NSSet)

}

extension Language: Identifiable {

}
