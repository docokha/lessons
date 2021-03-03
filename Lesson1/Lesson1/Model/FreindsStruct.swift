//
//  FreindsStruct.swift
//  Lesson1
//
//  Created by  Денис Дегтяренко on 17.02.2021.
//

import Foundation

class FreindsListClass {
    struct FreindsStruct: Codable {
        let response: Response
    }

    struct Response: Codable {
        let count: Int
        let items: [Item]
    }

    struct Item: Codable {
        let firstName: String
        let id: Int
        let lastName: String
        let canAccessClosed, isClosed: Bool?
        let photo100: String
        let city: City?
        let trackCode: String
        let deactivated: Deactivated?
        let lists: [Int]?

        enum CodingKeys: String, CodingKey {
            case firstName = "first_name"
            case id
            case lastName = "last_name"
            case canAccessClosed = "can_access_closed"
            case isClosed = "is_closed"
            case photo100 = "photo_100"
            case city
            case trackCode = "track_code"
            case deactivated, lists
        }
    }

    struct City: Codable {
        let id: Int
        let title: String
    }

    enum Deactivated: String, Codable {
        case banned = "banned"
        case deleted = "deleted"
    }

}

