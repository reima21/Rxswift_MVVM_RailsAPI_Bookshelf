//
//  BookInfo.swift
//  Rxswift_MVVM_RailsAPI_Bookshelf
//
//  Created by 松平礼史 on 2020/04/10.
//  Copyright © 2020 松平礼史. All rights reserved.
//

import Foundation

// MARK: - Welcome
struct BookInfo: Codable {
    let status, message: String
    let data: [BookItem]
}

// MARK: - Datum
struct BookItem: Codable {
    let id: Int
    let isbn, title: String
    let bookImage: String
    let datumDescription, author, pageCount, publishedDate: String
    let createdAt, updatedAt: String

    enum CodingKeys: String, CodingKey {
        case id, isbn, title
        case bookImage = "book_image"
        case datumDescription = "description"
        case author
        case pageCount = "page_count"
        case publishedDate = "published_date"
        case createdAt = "created_at"
        case updatedAt = "updated_at"
    }
}
