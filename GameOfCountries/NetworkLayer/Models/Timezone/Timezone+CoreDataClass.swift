//
//  Timezone+CoreDataClass.swift
//  GameOfCountries
//
//  Created by Kirill Danilov on 24/01/2021.
//
//

import Foundation
import CoreData

public class Timezone: NSManagedObject, Codable {

    // swiftlint:disable force_cast
    enum CodingKeys: CodingKey {
        case utc
        case countries
    }

    required convenience public init(from decoder: Decoder) throws {
        guard let managedObjectContext = CodingUserInfoKey.managedObjectContext,
              let context = decoder.userInfo[managedObjectContext] as? NSManagedObjectContext,
              let entity = NSEntityDescription.entity(forEntityName: "Timezone", in: context) else {
            throw DecoderConfigurationError.missingManagedObjectContext
        }

        self.init(context: context)
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.utc = try container.decode(TimeZone.self, forKey: .utc)
        self.countries = try container.decode(Set<Country>.self, forKey: .countries) as NSSet
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(utc, forKey: .utc)
        try container.encode(countries as! Set<Country>, forKey: .countries)
    }
    // swiftlint:enable identifier_name force_cast
}
