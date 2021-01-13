//
//  DateUtils.swift
//  News Challenge
//
//  Created by Eduardo Herzer on 12/01/21.
//

import Foundation

class DateUtils {
    static func formatDate(_ date: Date) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = DateFormatter.dateFormat(fromTemplate: "yyyy-MM-dd", options: 0, locale: nil)
        return dateFormatter.string(from: date)
    }
}
