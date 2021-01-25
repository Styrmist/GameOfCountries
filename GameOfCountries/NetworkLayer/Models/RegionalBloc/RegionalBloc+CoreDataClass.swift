//
//  RegionalBloc+CoreDataClass.swift
//  GameOfCountries
//
//  Created by Kirill Danilov on 24/01/2021.
//
//

import Foundation
import CoreData

public class RegionalBloc: NSManagedObject, Codable {

    enum CodingKeys: CodingKey {
        case name
        case acronym
        case countries
    }

    required convenience public init(from decoder: Decoder) throws {
        guard let managedObjectContext = CodingUserInfoKey.managedObjectContext,
              let context = decoder.userInfo[managedObjectContext] as? NSManagedObjectContext,
              let entity = NSEntityDescription.entity(forEntityName: "RegionalBloc", in: context) else {
            throw DecoderConfigurationError.missingManagedObjectContext
        }

        self.init(context: context)
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.name = try container.decode(String.self, forKey: .name)
        self.acronym = try container.decode(String.self, forKey: .acronym)
        self.countries = try container.decode(Set<Country>.self, forKey: .countries) as NSSet
    }
    // swiftlint:disable force_cast
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(name, forKey: .name)
        try container.encode(acronym, forKey: .acronym)
        try container.encode(countries as! Set<Country>, forKey: .countries)
    }
    // swiftlint:enable force_cast
}
