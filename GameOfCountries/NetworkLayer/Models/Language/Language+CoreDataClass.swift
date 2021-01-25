//
//  Language+CoreDataClass.swift
//  GameOfCountries
//
//  Created by Kirill Danilov on 24/01/2021.
//
//

import Foundation
import CoreData


public class Language: NSManagedObject, Codable {

    // swiftlint:disable identifier_name force_cast
    enum CodingKeys: CodingKey {
        case iso639_1
        case iso639_2
        case name
        case nativeName
        case countries
    }

    required convenience public init(from decoder: Decoder) throws {
        guard let managedObjectContext = CodingUserInfoKey.managedObjectContext,
              let context = decoder.userInfo[managedObjectContext] as? NSManagedObjectContext,
              let entity = NSEntityDescription.entity(forEntityName: "Language", in: context) else {
            throw DecoderConfigurationError.missingManagedObjectContext
        }

        self.init(context: context)

        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.iso639_1 = try container.decode(String.self, forKey: .iso639_1)
        self.iso639_2 = try container.decode(String.self, forKey: .iso639_2)
        self.name = try container.decode(String.self, forKey: .name)
        self.nativeName = try container.decode(String.self, forKey: .nativeName)
        self.countries = try container.decode(Set<Country>.self, forKey: .countries) as NSSet
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(iso639_1, forKey: .iso639_1)
        try container.encode(iso639_2, forKey: .iso639_2)
        try container.encode(name, forKey: .name)
        try container.encode(nativeName, forKey: .nativeName)
        try container.encode(countries as! Set<Country>, forKey: .countries)
    }
    // swiftlint:enable identifier_name force_cast
}
