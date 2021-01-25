//
//  LiteralCountryCode+CoreDataClass.swift
//  GameOfCountries
//
//  Created by Kirill Danilov on 24/01/2021.
//
//

import Foundation
import CoreData

public class LiteralCountryCode: NSManagedObject, Codable {

    enum CodingKeys: CodingKey {
        case code
        case countries
    }

    required convenience public init(from decoder: Decoder) throws {
        guard let managedObjectContext = CodingUserInfoKey.managedObjectContext,
              let context = decoder.userInfo[managedObjectContext] as? NSManagedObjectContext,
              let entity = NSEntityDescription.entity(forEntityName: "LiteralCountryCode", in: context) else {
            throw DecoderConfigurationError.missingManagedObjectContext
        }

        self.init(context: context)
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.code = try container.decode(String.self, forKey: .code)
        self.countries = try container.decode(Set<Country>.self, forKey: .countries) as NSSet
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(code, forKey: .code)
        try container.encode(countries as? Set<Country>, forKey: .countries)
    }
}
