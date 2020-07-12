//
//  Array+Only.swift
//  Memorize
//
//  Created by Chen on 2020/7/12.
//  Copyright © 2020 Chen Wang. All rights reserved.
//

import Foundation

extension Array {
    var only: Element? {
        count == 1 ? first : nil
    }
}
