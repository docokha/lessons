//
//  User.swift
//  Lesson1
//
//  Created by  Денис Дегтяренко on 05.11.2020.
//

import UIKit

struct Freind {
    let name: String
    let photo: String
    let birthday: String
    let city: String
    let countFreinds: Int
    
    static var freinds: [Freind] {
        return [
            Freind(name: "Егор Редченко", photo: "ava1.png", birthday: "15.08.1999", city: "Оха", countFreinds: 213),
            Freind(name: "Игорь Стрелов", photo: "ava2.png", birthday: "07.06.1992", city: "Оха", countFreinds: 100),
            Freind(name: "Елизвета Иванченко", photo: "ava3.png", birthday: "07.06.2003", city: "Оха", countFreinds: 213),
            Freind(name: "Сергей Зубарев", photo: "ava4.png", birthday: "01.01.1980", city: "Оха", countFreinds: 108),
            Freind(name: "Кристина Куклина", photo: "ava5.png", birthday: "01.01.1980", city: "Оха", countFreinds: 108),
            Freind(name: "Андрей Шабалин", photo: "ava6.png", birthday: "01.01.1980", city: "Оха", countFreinds: 108),
            Freind(name: "Алексей Воевода", photo: "ava7.png", birthday: "01.01.1980", city: "Оха", countFreinds: 108),
            Freind(name: "Вадим Дурнов", photo: "ava8.png", birthday: "01.01.1980", city: "Оха", countFreinds: 108)
            ]
        }
}
