//
//  Timezone+CoreDataProperties.swift
//  GameOfCountries
//
//  Created by Kirill Danilov on 24/01/2021.
//
//

import Foundation
import CoreData

extension Timezone {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Timezone> {
        return NSFetchRequest<Timezone>(entityName: "Timezone")
    }

    @NSManaged public var utc: NSObject?
    @NSManaged public var country: NSSet?

}

// MARK: Generated accessors for country
extension Timezone {

    @objc(addCountryObject:)
    @NSManaged public func addToCountry(_ value: Country)

    @objc(removeCountryObject:)
    @NSManaged public func removeFromCountry(_ value: Country)

    @objc(addCountry:)
    @NSManaged public func addToCountry(_ values: NSSet)

    @objc(removeCountry:)
    @NSManaged public func removeFromCountry(_ values: NSSet)

}

extension Timezone: Identifiable {

}
