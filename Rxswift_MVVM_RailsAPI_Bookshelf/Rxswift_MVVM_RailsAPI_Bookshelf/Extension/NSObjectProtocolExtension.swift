//
//  NSObjectProtocolExtension.swift
//  Rxswift_MVVM_RailsAPI_Bookshelf
//
//  Created by 松平礼史 on 2020/04/10.
//  Copyright © 2020 松平礼史. All rights reserved.
//

import Foundation
import UIKit

// NSObjectProtocolの拡張
extension NSObjectProtocol {

    // クラス名を返す変数"className"を返す
    static var className: String {
        return String(describing: self)
    }
}
