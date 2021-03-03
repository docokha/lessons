//
//  NetworkManager.swift
//  Lesson1
//
//  Created by  Денис Дегтяренко on 15.02.2021.
//

import Foundation

enum MethodGet: String {
    case getFreindsList = "friends.get"
    case getGroupsList = "groups.get"
    case getMyPhotos = "photos.get"
}

class NetworkManager {
    
    func getResult(method: MethodGet, complitionHandler: @escaping (Any) -> ()) { //(Freinds)
        let configuration = URLSessionConfiguration.default
            
        let session = URLSession(configuration: configuration)
            
        var urlConstructor = URLComponents()
            urlConstructor.scheme = "https"
            urlConstructor.host = "api.vk.com"
        urlConstructor.path = "/method/\(method.rawValue)"
        
        if method.rawValue == "friends.get" {
            urlConstructor.queryItems = [
                URLQueryItem(name: "used_id", value: "\(MySingletone.userId)"),
                URLQueryItem(name: "order", value: "name"),
                URLQueryItem(name: "fields", value: "city,photo_100"),
                URLQueryItem(name: "access_token", value: "\(MySingletone.token)"),
                URLQueryItem(name: "v", value: "5.130")
            ]
            
            let task = session.dataTask(with: urlConstructor.url!) { (data, response, error) in
                let decoder = JSONDecoder()
                do {
                    let dataLocal = try decoder.decode(FreindsListClass.FreindsStruct.self, from: data!)
                     complitionHandler(dataLocal)
                } catch {
                    print(error.localizedDescription)
                }
            }
            task.resume()
            
        } else if method.rawValue == "groups.get" {
            urlConstructor.queryItems = [
                URLQueryItem(name: "used_id", value: "\(MySingletone.userId)"),
                URLQueryItem(name: "extended", value: "1"),
                URLQueryItem(name: "access_token", value: "\(MySingletone.token)"),
                URLQueryItem(name: "v", value: "5.21")
            ]
            
            let task = session.dataTask(with: urlConstructor.url!) { (data, response, error) in
                let decoder = JSONDecoder()
                do {
                    let dataLocal = try decoder.decode(GroupsListClass.GroupsStruct.self, from: data!)
                     complitionHandler(dataLocal)
                } catch {
                    print(error.localizedDescription)
                }
            }
            task.resume()
        } else if method.rawValue == "photos.get" {
            urlConstructor.queryItems = [
                URLQueryItem(name: "owner_id", value: "\(MySingletone.userId)"),
                URLQueryItem(name: "album_id", value: "profile"),
                URLQueryItem(name: "extended", value: "1"),
                URLQueryItem(name: "access_token", value: "\(MySingletone.token)"),
                URLQueryItem(name: "v", value: "5.21")
            ]
            
            let task = session.dataTask(with: urlConstructor.url!) { (data, response, error) in
                let decoder = JSONDecoder()
                do {
                    let dataLocal = try decoder.decode(PhotosListClass.PhotosStruct.self, from: data!)
                     complitionHandler(dataLocal)
                } catch {
                    print(error.localizedDescription)
                }
            }
            task.resume()
        }
    }
}
