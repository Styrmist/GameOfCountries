//
//  Subregion+CoreDataProperties.swift
//  GameOfCountries
//
//  Created by Kirill Danilov on 24/01/2021.
//
//

import Foundation
import CoreData


extension Subregion {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Subregion> {
        return NSFetchRequest<Subregion>(entityName: "Subregion")
    }

    @NSManaged public var name: String?
    @NSManaged public var country: NSSet?

}

// MARK: Generated accessors for country
extension Subregion {

    @objc(addCountryObject:)
    @NSManaged public func addToCountry(_ value: Country)

    @objc(removeCountryObject:)
    @NSManaged public func removeFromCountry(_ value: Country)

    @objc(addCountry:)
    @NSManaged public func addToCountry(_ values: NSSet)

    @objc(removeCountry:)
    @NSManaged public func removeFromCountry(_ values: NSSet)

}

extension Subregion : Identifiable {

}
