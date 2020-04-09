//
//  Books.swift
//  Rxswift_MVVM_RailsAPI_Bookshelf
//
//  Created by 松平礼史 on 2020/04/10.
//  Copyright © 2020 松平礼史. All rights reserved.
//

import Foundation

// MARK: - Welcome
struct Books: Codable {
    let items: [Item]
    let kind: String
    let totalItems: Int
}

// MARK: - Item
struct Item: Codable {
    let accessInfo: AccessInfo
    let id: String
    let selfLink: String
    let kind: Kind
    let volumeInfo: VolumeInfo
    let etag: String
    let searchInfo: SearchInfo?
    let saleInfo: SaleInfo
}

// MARK: - AccessInfo
struct AccessInfo: Codable {
    let country: Country
    let epub: Epub
    let pdf: PDF
    let textToSpeechPermission: TextToSpeechPermission
    let viewability: Viewability
    let publicDomain: Bool
    let webReaderLink: String
    let quoteSharingAllowed: Bool
    let accessViewStatus: AccessViewStatus
    let embeddable: Bool
}

enum AccessViewStatus: String, Codable {
    case fullPublicDomain = "FULL_PUBLIC_DOMAIN"
    case none = "NONE"
    case sample = "SAMPLE"
}

enum Country: String, Codable {
    case jp = "JP"
}

// MARK: - Epub
struct Epub: Codable {
    let acsTokenLink: String?
    let isAvailable: Bool
}

// MARK: - PDF
struct PDF: Codable {
    let acsTokenLink: String?
    let isAvailable: Bool
    let downloadLink: String?
}

enum TextToSpeechPermission: String, Codable {
    case allowed = "ALLOWED"
}

enum Viewability: String, Codable {
    case allPages = "ALL_PAGES"
    case noPages = "NO_PAGES"
    case partial = "PARTIAL"
}

enum Kind: String, Codable {
    case booksVolume = "books#volume"
}

// MARK: - SaleInfo
struct SaleInfo: Codable {
    let offers: [Offer]?
    let listPrice, retailPrice: SaleInfoListPrice?
    let isEbook: Bool
    let saleability: Saleability
    let country: Country
    let buyLink: String?
}

// MARK: - SaleInfoListPrice
struct SaleInfoListPrice: Codable {
    let currencyCode: CurrencyCode
    let amount: Int
}

enum CurrencyCode: String, Codable {
    case jpy = "JPY"
}

// MARK: - Offer
struct Offer: Codable {
    let finskyOfferType: Int
    let retailPrice, listPrice: OfferListPrice
}

// MARK: - OfferListPrice
struct OfferListPrice: Codable {
    let currencyCode: CurrencyCode
    let amountInMicros: Int
}

enum Saleability: String, Codable {
    case forSale = "FOR_SALE"
    case free = "FREE"
    case notForSale = "NOT_FOR_SALE"
}

// MARK: - SearchInfo
struct SearchInfo: Codable {
    let textSnippet: String
}

// MARK: - VolumeInfo
struct VolumeInfo: Codable {
    let title: String
    let publisher: String?
    let panelizationSummary: PanelizationSummary?
    let industryIdentifiers: [IndustryIdentifier]?
    let volumeInfoDescription: String?
    let imageLinks: ImageLinks
    let allowAnonLogging: Bool
    let infoLink: String
    let categories: [String]?
    let canonicalVolumeLink: String
    let printType: PrintType
    let language: Language
    let maturityRating: MaturityRating
    let pageCount: Int?
    let publishedDate: String?
    let authors: [String]?
    let contentVersion: String
    let previewLink: String
    let readingModes: ReadingModes
    let subtitle: String?
    let averageRating: Double?
    let ratingsCount: Int?

    enum CodingKeys: String, CodingKey {
        case title, publisher, panelizationSummary, industryIdentifiers
        case volumeInfoDescription = "description"
        case imageLinks, allowAnonLogging, infoLink, categories, canonicalVolumeLink, printType, language, maturityRating, pageCount, publishedDate, authors, contentVersion, previewLink, readingModes, subtitle, averageRating, ratingsCount
    }
}

// MARK: - ImageLinks
struct ImageLinks: Codable {
    let smallThumbnail, thumbnail: String
}

// MARK: - IndustryIdentifier
struct IndustryIdentifier: Codable {
    let identifier: String
    let type: TypeEnum
}

enum TypeEnum: String, Codable {
    case isbn10 = "ISBN_10"
    case isbn13 = "ISBN_13"
    case other = "OTHER"
}

enum Language: String, Codable {
    case en = "en"
    case ja = "ja"
}

enum MaturityRating: String, Codable {
    case notMature = "NOT_MATURE"
}

// MARK: - PanelizationSummary
struct PanelizationSummary: Codable {
    let containsImageBubbles, containsEpubBubbles: Bool
}

enum PrintType: String, Codable {
    case book = "BOOK"
}

// MARK: - ReadingModes
struct ReadingModes: Codable {
    let image, text: Bool
}

