//
//  Project+CoreDataProperties.swift
//  Profile
//
//  Created by Priyanka Gopakumar on 2/17/21.
//
//

import Foundation
import CoreData


extension Project {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Project> {
        return NSFetchRequest<Project>(entityName: "Project")
    }

    @NSManaged public var name: String?
    @NSManaged public var platform: String?
    @NSManaged public var desc: String?
    @NSManaged public var image: String?

}

extension Project : Identifiable {

}
