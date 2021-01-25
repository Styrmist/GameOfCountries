//
//  Location+CoreDataClass.swift
//  GameOfCountries
//
//  Created by Kirill Danilov on 24/01/2021.
//
//

import Foundation
import CoreData

public class Location: NSManagedObject, Codable {

    enum CodingKeys: CodingKey {
        case latitude
        case longitude
        case country
    }

    required convenience public init(from decoder: Decoder) throws {
        guard let managedObjectContext = CodingUserInfoKey.managedObjectContext,
              let context = decoder.userInfo[managedObjectContext] as? NSManagedObjectContext,
              let entity = NSEntityDescription.entity(forEntityName: "Location", in: context) else {
            throw DecoderConfigurationError.missingManagedObjectContext
        }

        self.init(context: context)
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.latitude = try container.decode(Double.self, forKey: .latitude)
        self.longitude = try container.decode(Double.self, forKey: .longitude)
        self.country = try container.decode(Country.self, forKey: .country)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(latitude, forKey: .latitude)
        try container.encode(longitude, forKey: .longitude)
        try container.encode(country, forKey: .country)
    }
}
