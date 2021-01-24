//
//  Region+CoreDataProperties.swift
//  GameOfCountries
//
//  Created by Kirill Danilov on 24/01/2021.
//
//

import Foundation
import CoreData


extension Region {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Region> {
        return NSFetchRequest<Region>(entityName: "Region")
    }

    @NSManaged public var name: String?
    @NSManaged public var country: NSSet?

}

// MARK: Generated accessors for country
extension Region {

    @objc(addCountryObject:)
    @NSManaged public func addToCountry(_ value: Country)

    @objc(removeCountryObject:)
    @NSManaged public func removeFromCountry(_ value: Country)

    @objc(addCountry:)
    @NSManaged public func addToCountry(_ values: NSSet)

    @objc(removeCountry:)
    @NSManaged public func removeFromCountry(_ values: NSSet)

}

extension Region : Identifiable {

}
