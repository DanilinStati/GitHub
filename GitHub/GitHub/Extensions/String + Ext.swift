//
//  String + Ext.swift
//  GitHub
//
//  Created by Даниил Статиев on 20.10.2020.
//

import Foundation

extension String {
    
    func convertToDate() -> Date? {
        let dateFomatter = DateFormatter()
        dateFomatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ssZ"
        dateFomatter.locale = Locale(identifier: "en_US_POSIX")
        dateFomatter.timeZone = .current
        
        return dateFomatter.date(from: self)
    }
    
    func converteToDisplayFormat() -> String {
        guard let date = self.convertToDate() else { return "N/A" }
        return date.convertToMonthYearFormat()
    }
    
}
