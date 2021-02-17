//
//  Group.swift
//  Lesson1
//
//  Created by  Денис Дегтяренко on 06.11.2020.
//

import UIKit

class GroupsListClass {
    struct GroupsStruct: Codable {
        let response: Response
    }

    struct Response: Codable {
        let count: Int
        let items: [Item]
    }

    struct Item: Codable {
        let id: Int
        let name, screenName: String
        let isClosed: Int
        let type: TypeEnum
        let isAdmin, isMember, isAdvertiser: Int
        let photo50, photo100, photo200: String
        let adminLevel: Int?

        enum CodingKeys: String, CodingKey {
            case id, name
            case screenName = "screen_name"
            case isClosed = "is_closed"
            case type
            case isAdmin = "is_admin"
            case isMember = "is_member"
            case isAdvertiser = "is_advertiser"
            case photo50 = "photo_50"
            case photo100 = "photo_100"
            case photo200 = "photo_200"
            case adminLevel = "admin_level"
        }
    }

    enum TypeEnum: String, Codable {
        case group = "group"
        case page = "page"
    }

}

/*
struct Group {
    let name: String
    let avatar: String
    let description: String
    let countSubscribers: Int
    let city: String
    
    static var groups: [Group] {
        return [
            Group(name: "Оптимист", avatar: "ava_g4.jpg", description: "", countSubscribers: 1234, city: "Оха"),
            Group(name: "Мой Аэрофлот", avatar: "ava_g1.jpg", description: "", countSubscribers: 1234, city: "Оха"),
            Group(name: "Okha65.RU - Охинский портал", avatar: "ava_g2.jpg", description: "", countSubscribers: 1234, city: "Оха"),
            Group(name: "Приложение ВКонтакте", avatar: "ava_g5.jpg", description: "", countSubscribers: 1234, city: "Санкт-Петербург"),
            Group(name: "GeekBrains", avatar: "ava_g3.jpg", description: "", countSubscribers: 1234, city: "Москва"),
        ]
    }
}*/
