//
//  Country+CoreDataProperties.swift
//  GameOfCountries
//
//  Created by Kirill Danilov on 24/01/2021.
//
//

import Foundation
import CoreData


extension Country {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Country> {
        return NSFetchRequest<Country>(entityName: "Country")
    }

    @NSManaged public var name: String?
    @NSManaged public var topLevelDomain: NSObject?
    @NSManaged public var alpha2Code: String?
    @NSManaged public var alpha3Code: String?
    @NSManaged public var capital: String?
    @NSManaged public var callingCodes: NSObject?
    @NSManaged public var altSpellings: NSObject?
    @NSManaged public var demonym: String?
    @NSManaged public var area: Double
    @NSManaged public var nativeName: String?
    @NSManaged public var numericCode: String?
    @NSManaged public var flag: URL?
    @NSManaged public var region: Region?
    @NSManaged public var subregion: Subregion?
    @NSManaged public var latlng: Location?
    @NSManaged public var timezones: NSSet?
    @NSManaged public var cioc: LiteralCountryCode?
    @NSManaged public var borders: NSSet?
    @NSManaged public var currencies: NSSet?
    @NSManaged public var languages: NSSet?
    @NSManaged public var regionalBlocs: RegionalBloc?

}

// MARK: Generated accessors for timezones
extension Country {

    @objc(addTimezonesObject:)
    @NSManaged public func addToTimezones(_ value: Timezone)

    @objc(removeTimezonesObject:)
    @NSManaged public func removeFromTimezones(_ value: Timezone)

    @objc(addTimezones:)
    @NSManaged public func addToTimezones(_ values: NSSet)

    @objc(removeTimezones:)
    @NSManaged public func removeFromTimezones(_ values: NSSet)

}

// MARK: Generated accessors for borders
extension Country {

    @objc(addBordersObject:)
    @NSManaged public func addToBorders(_ value: LiteralCountryCode)

    @objc(removeBordersObject:)
    @NSManaged public func removeFromBorders(_ value: LiteralCountryCode)

    @objc(addBorders:)
    @NSManaged public func addToBorders(_ values: NSSet)

    @objc(removeBorders:)
    @NSManaged public func removeFromBorders(_ values: NSSet)

}

// MARK: Generated accessors for currencies
extension Country {

    @objc(addCurrenciesObject:)
    @NSManaged public func addToCurrencies(_ value: Currency)

    @objc(removeCurrenciesObject:)
    @NSManaged public func removeFromCurrencies(_ value: Currency)

    @objc(addCurrencies:)
    @NSManaged public func addToCurrencies(_ values: NSSet)

    @objc(removeCurrencies:)
    @NSManaged public func removeFromCurrencies(_ values: NSSet)

}

// MARK: Generated accessors for languages
extension Country {

    @objc(addLanguagesObject:)
    @NSManaged public func addToLanguages(_ value: Language)

    @objc(removeLanguagesObject:)
    @NSManaged public func removeFromLanguages(_ value: Language)

    @objc(addLanguages:)
    @NSManaged public func addToLanguages(_ values: NSSet)

    @objc(removeLanguages:)
    @NSManaged public func removeFromLanguages(_ values: NSSet)

}

extension Country: Identifiable {

}
