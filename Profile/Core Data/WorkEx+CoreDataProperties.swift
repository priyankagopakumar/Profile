//
//  WorkEx+CoreDataProperties.swift
//  Profile
//
//  Created by Priyanka Gopakumar on 2/17/21.
//
//

import Foundation
import CoreData


extension WorkEx {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<WorkEx> {
        return NSFetchRequest<WorkEx>(entityName: "WorkEx")
    }

    @NSManaged public var company: String?
    @NSManaged public var location: String?
    @NSManaged public var years: String?
    @NSManaged public var role: String?
    @NSManaged public var projects: [Project]?
    @NSManaged public var desc: String?
    @NSManaged public var image: String?

}

extension WorkEx : Identifiable {

}
