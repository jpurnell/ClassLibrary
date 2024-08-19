//
//  Library.swift
//  IgniteStarter
//
//  Created by Justin Purnell on 8/19/24.
//


public struct Library: Codable {
    public var entries: [ClassmateEntry]
    
    public static func fixtures(_ entries: [ClassmateEntry] = [.fixture()]) -> Library {
        return Library(entries: entries)
    }
}
