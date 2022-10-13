//
//  DateFormatter.swift
//  private-calendar-2022
//
//  Created by Goorer on 2022/10/13.
//

import Foundation

extension DateFormatter {
    enum Template : String {
        case full = "YYYY/MM/dd HH:mm:ss"
        case date = "YYYY/MM/dd"
        case time = "HH:mm:ss"
        case year  =  "YYYY"
        case month = "MM"
        case day = "dd"
        case weekday = "EEE"
        
    }
    
    func setTemplate(_template: Template) {
        dateFormat = DateFormatter.dateFormat(fromTemplate:  _template.rawValue, options:  0, locale:   .current)
    }
}
