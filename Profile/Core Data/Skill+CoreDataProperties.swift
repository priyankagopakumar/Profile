//
//  Skill+CoreDataProperties.swift
//  Profile
//
//  Created by Priyanka Gopakumar on 2/17/21.
//
//

import Foundation
import CoreData


extension Skill {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Skill> {
        return NSFetchRequest<Skill>(entityName: "Skill")
    }

    @NSManaged public var name: String?
    @NSManaged public var type: String?
    @NSManaged public var notes: String?
    @NSManaged public var image: String?

}

extension Skill : Identifiable {

}
