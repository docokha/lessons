//
//  MySingletone.swift
//  Lesson1
//
//  Created by  Денис Дегтяренко on 04.02.2021.
//

import Foundation

struct MySingletone {
    static var shared = MySingletone()
    static var token: String = ""
    static var userId: String = ""
}
