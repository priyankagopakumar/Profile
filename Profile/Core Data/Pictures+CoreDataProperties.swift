//
//  Pictures+CoreDataProperties.swift
//  Profile
//
//  Created by Priyanka Gopakumar on 2/17/21.
//
//

import Foundation
import CoreData


extension Pictures {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Pictures> {
        return NSFetchRequest<Pictures>(entityName: "Pictures")
    }

    @NSManaged public var src: String?
    @NSManaged public var desc: String?

}

extension Pictures : Identifiable {

}
