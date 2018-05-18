//
//  Directory+CoreDataProperties.swift
//  homework2_movetopage
//
//  Created by 한병두 on 2018. 5. 14..
//  Copyright © 2018년 Byungdoo Han. All rights reserved.
//
//

import Foundation
import CoreData


extension Directory {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Directory> {
        return NSFetchRequest<Directory>(entityName: "Directory")
    }

    @NSManaged public var name: String?
    @NSManaged public var homeNumber: String?
    @NSManaged public var company: String?
    @NSManaged public var phone: String?
    @NSManaged public var address: String?

}
