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
    @NSManaged public var countries: NSSet?
    // swiftlint:enable identifier_name
}

// MARK: Generated accessors for country
extension Language {

    @objc(addCountriesObject:)
    @NSManaged public func addToCountries(_ value: Country)

    @objc(removeCountriesObject:)
    @NSManaged public func removeFromCountries(_ value: Country)

    @objc(addCountries:)
    @NSManaged public func addToCountries(_ values: NSSet)

    @objc(removeCountries:)
    @NSManaged public func removeFromCountries(_ values: NSSet)

}

extension Language: Identifiable {

}
