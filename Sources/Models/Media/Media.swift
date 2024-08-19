//
//  Media.swift
//  IgniteStarter
//
//  Created by Justin Purnell on 8/19/24.
//

import Foundation

public struct Media: Codable, Comparable, Identifiable, Hashable {
	public static func < (lhs: Media, rhs: Media) -> Bool {
		return lhs.title < rhs.title && lhs.description ?? "" < rhs.description ?? ""
	}
	
	public var id: UUID = UUID()
	public var title: String
	public var image: String
	public var description: String?
	public var links: [String: String]?
	
	public static func fixture(_ title: String = "When Women Lead", _ image: String = "https://d28hgpri8am2if.cloudfront.net/book_images/onix/cvr9781982168216/when-women-lead-9781982168216_xlg.jpg", _ description: String = LoremIpsum.text, _ links: [String: String] = ["Amazon": "https://www.amazon.com/exec/obidos/ASIN/1982168218?tag=simonsayscom", "Apple": "https://books.apple.com/us/book/when-women-lead/id1609263967", "Barnes & Noble": "https://www.anrdoezrs.net/click-7567305-11819508?SID=simonsayscom&url=http://www.barnesandnoble.com/w/?ean=9781982168216", "BAM": "https://www.booksamillion.com/p/9781982168216", "Bookshop" : "https://bookshop.org/a/1688/9781982168216"]) -> Media {
		return Media(title: title, image: image, description: description, links: links)
	}
}
