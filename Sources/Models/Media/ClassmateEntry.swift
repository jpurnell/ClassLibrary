//
//  ClassmateEntry.swift
//  IgniteStarter
//
//  Created by Justin Purnell on 8/19/24.
//

import Foundation
import Classmate

public struct ClassmateEntry: Codable, Comparable, Identifiable, Hashable {
    
    public var id: UUID = UUID()
    public var classmate: Classmate
    public var media: [Media]
    
    public static func fixture(_ classmate: Classmate = .fixture(), _ media: [Media] = [.fixture()]) -> ClassmateEntry {
        return ClassmateEntry(classmate: classmate, media: media)
    }

    public static func == (lhs: ClassmateEntry, rhs: ClassmateEntry) -> Bool {
        return lhs.classmate == rhs.classmate
    }

    public static func < (lhs: ClassmateEntry, rhs: ClassmateEntry) -> Bool {
        return lhs.classmate < rhs.classmate
    }
}
