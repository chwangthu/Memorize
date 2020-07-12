//
//  Array+Identifiable.swift
//  Memorize
//
//  Created by Chen on 2020/7/12.
//  Copyright © 2020 Chen Wang. All rights reserved.
//

import Foundation

extension Array where Element: Identifiable {
    func firstIndex(matching: Element) -> Int? {
        for index in 0..<self.count {
            if self[index].id == matching.id {
                return index
            }
        }
        return nil
    }
}
