//
//  Education+CoreDataProperties.swift
//  Profile
//
//  Created by Priyanka Gopakumar on 2/17/21.
//
//

import Foundation
import CoreData


extension Education {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Education> {
        return NSFetchRequest<Education>(entityName: "Education")
    }

    @NSManaged public var institution: String?
    @NSManaged public var location: String?
    @NSManaged public var years: String?
    @NSManaged public var degree: String?
    @NSManaged public var major: String?
    @NSManaged public var projects: [Project]?
    @NSManaged public var gpa: String?
    @NSManaged public var desc: String?
    @NSManaged public var image: String?

}

extension Education : Identifiable {

}
