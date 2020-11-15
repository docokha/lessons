//
//  Group.swift
//  Lesson1
//
//  Created by  Денис Дегтяренко on 06.11.2020.
//

import UIKit

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
}
