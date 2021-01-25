//
//  Country+CoreDataClass.swift
//  GameOfCountries
//
//  Created by Kirill Danilov on 24/01/2021.
//
//

import Foundation
import CoreData


public class Country: NSManagedObject, Codable {

    enum CodingKeys: CodingKey {
        case name
//        case topLevelDomain
//        case alpha2Code
//        case alpha3Code
//        case capital
//        case callingCodes
//        case altSpellings
//        case demonym
//        case area
//        case nativeName
//        case numericCode
//        case flag
//        case region
//        case subregion
//        case latlng
//        case timezones
//        case cioc
//        case borders
//        case currencies
//        case languages
//        case regionalBlocs
    }

    required convenience public init(from decoder: Decoder) throws {
        guard let managedObjectContext = CodingUserInfoKey.managedObjectContext,
              let context = decoder.userInfo[managedObjectContext] as? NSManagedObjectContext,
              let entity = NSEntityDescription.entity(forEntityName: "Country", in: context) else {
            throw DecoderConfigurationError.missingManagedObjectContext
        }

        self.init(context: context)
        let container = try decoder.container(keyedBy: CodingKeys.self)
        name = try container.decode(String.self, forKey: .name)
//        topLevelDomain = try container.decode(Set<String>.self, forKey: .topLevelDomain) as NSSet
//        alpha2Code = try container.decode(String.self, forKey: .alpha2Code)
//        alpha3Code = try container.decode(String.self, forKey: .alpha3Code)
//        capital = try container.decode(String.self, forKey: .capital)
//        callingCodes = try container.decode(Set<String>.self, forKey: .callingCodes) as NSSet
//        demonym = try container.decode(String.self, forKey: .demonym)
//        area = try container.decode(Double.self, forKey: .area)
//        nativeName = try container.decode(String.self, forKey: .nativeName)
//        numericCode = try container.decode(String.self, forKey: .numericCode)
//        flag = try container.decode(String.self, forKey: .flag)
//        region = try container.decode(Region.self, forKey: .region)
//        subregion = try container.decode(Subregion.self, forKey: .subregion)
//        latlng = try container.decode(Location.self, forKey: .latlng)
//        timezones = try container.decode(Set<Timezone>.self, forKey: .timezones) as NSSet
//        cioc = try container.decode(LiteralCountryCode.self, forKey: .cioc)
//        borders = try container.decode(Set<LiteralCountryCode>.self, forKey: .borders) as NSSet
//        currencies = try container.decode(Set<Currency>.self, forKey: .currencies) as NSSet
//        languages = try container.decode(Set<Language>.self, forKey: .languages) as NSSet
//        regionalBlocs = try container.decode(Set<RegionalBloc>.self, forKey: .regionalBlocs) as NSSet
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(name, forKey: .name)
//        try container.encode(topLevelDomain as! Set<String>, forKey: .topLevelDomain)
//        try container.encode(alpha2Code, forKey: .alpha2Code)
//        try container.encode(alpha3Code, forKey: .alpha3Code)
//        try container.encode(capital, forKey: .capital)
//        try container.encode(callingCodes as! Set<String>, forKey: .callingCodes)
//        try container.encode(demonym, forKey: .demonym)
//        try container.encode(area, forKey: .area)
//        try container.encode(nativeName, forKey: .nativeName)
//        try container.encode(numericCode, forKey: .numericCode)
//        try container.encode(flag, forKey: .flag)
//        try container.encode(region, forKey: .region)
//        try container.encode(subregion, forKey: .subregion)
//        try container.encode(latlng, forKey: .latlng)
//        try container.encode(timezones as! Set<Timezone>, forKey: .timezones)
//        try container.encode(cioc, forKey: .cioc)
//        try container.encode(borders as! Set<LiteralCountryCode>, forKey: .borders)
//        try container.encode(currencies as! Set<Currency>, forKey: .currencies)
//        try container.encode(languages as! Set<Language>, forKey: .languages)
//        try container.encode(regionalBlocs as! Set<RegionalBloc>, forKey: .regionalBlocs)
    }
}
