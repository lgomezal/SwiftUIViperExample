//
//  Note+CoreDataProperties.swift
//  ViperNotes
//
//  Created by Luis Gómez Alonso on 24/2/21.
//
//

import Foundation
import CoreData


extension Note {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Note> {
        return NSFetchRequest<Note>(entityName: "Note")
    }

    @NSManaged public var title: String?
    @NSManaged public var id: UUID?
    @NSManaged public var date: Date?
    @NSManaged public var body: String?

}

extension Note : Identifiable {

}
