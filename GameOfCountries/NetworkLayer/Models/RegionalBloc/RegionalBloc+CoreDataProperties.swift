//
//  RegionalBloc+CoreDataProperties.swift
//  GameOfCountries
//
//  Created by Kirill Danilov on 24/01/2021.
//
//

import Foundation
import CoreData


extension RegionalBloc {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<RegionalBloc> {
        return NSFetchRequest<RegionalBloc>(entityName: "RegionalBloc")
    }

    @NSManaged public var name: String?
    @NSManaged public var acronym: String?
    @NSManaged public var country: NSSet?

}

// MARK: Generated accessors for country
extension RegionalBloc {

    @objc(addCountryObject:)
    @NSManaged public func addToCountry(_ value: Country)

    @objc(removeCountryObject:)
    @NSManaged public func removeFromCountry(_ value: Country)

    @objc(addCountry:)
    @NSManaged public func addToCountry(_ values: NSSet)

    @objc(removeCountry:)
    @NSManaged public func removeFromCountry(_ values: NSSet)

}

extension RegionalBloc : Identifiable {

}
