//
//  PhotosStruct.swift
//  Lesson1
//
//  Created by  Денис Дегтяренко on 18.02.2021.
//

import Foundation

class PhotosListClass {
    struct PhotosStruct: Codable {
        let response: Response
    }

    struct Response: Codable {
        let count: Int
        let items: [Item]
    }

    struct Item: Codable {
        let albumID, date, id, ownerID: Int
        let hasTags: Bool
        let height: Int
        let lat, long: Double?
        let photo1280, photo130: String
        let photo2560: String?
        let photo604, photo75, photo807: String
        let postID: Int
        let text: String
        let width: Int
        let likes: Likes
        let reposts, comments: Comments
        let canComment: Int
        let tags: Comments

        enum CodingKeys: String, CodingKey {
            case albumID = "album_id"
            case date, id
            case ownerID = "owner_id"
            case hasTags = "has_tags"
            case height, lat, long
            case photo1280 = "photo_1280"
            case photo130 = "photo_130"
            case photo2560 = "photo_2560"
            case photo604 = "photo_604"
            case photo75 = "photo_75"
            case photo807 = "photo_807"
            case postID = "post_id"
            case text, width, likes, reposts, comments
            case canComment = "can_comment"
            case tags
        }
    }

    struct Comments: Codable {
        let count: Int
    }

    struct Likes: Codable {
        let userLikes, count: Int

        enum CodingKeys: String, CodingKey {
            case userLikes = "user_likes"
            case count
        }
    }
}
