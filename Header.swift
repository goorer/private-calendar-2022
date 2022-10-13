//
//  Header.swift
//  private-calendar-2022
//
//  Created by Goorer on 2022/10/13.
//

import SwiftUI

struct Header: View {
    var current : (year:String,month:String,day:String,weekday:String)
    init(_dateFormat: DateFormatter) {
        _dateFormat.setTemplate(_template: .year)
        let now = Date()
        current.year = _dateFormat.string(from: now)
        _dateFormat.setTemplate(_template: .month)
        current.month = _dateFormat.string(from: now)
        _dateFormat.setTemplate(_template: .day)
        current.day = _dateFormat.string(from: now)
        
        let dateFormat = _dateFormat
        dateFormat.setTemplate(_template: .weekday)
        dateFormat.locale = Locale(identifier: "ja_JP")
        current.weekday = dateFormat.string(from: now)
    }
    var body: some View {
        VStack{
            HStack{
                Spacer()
                Text("今日は、\(current.year)年\(current.month)月\(current.day)日(\(current.weekday))です。")
                Spacer()
            }
            .padding(.vertical,5)
            Spacer()
        }
    }
}

struct Header_Previews: PreviewProvider {
    static var previews: some View {
        Header(_dateFormat: DateFormatter())
    }
}
