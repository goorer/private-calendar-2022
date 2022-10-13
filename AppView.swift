//
//  AppView.swift
//  private-calendar-2022
//
//  Created by Goorer on 2022/10/13.
//

import SwiftUI

struct AppView: View {
    var dateFormat: DateFormatter
    init(_dateFormat: DateFormatter) {
        dateFormat = _dateFormat
    }
    var body: some View {
        ZStack{
            Header(_dateFormat: dateFormat)
            Calendar()
            
        }
        .padding(.horizontal,5)
    }
}

struct AppView_Previews: PreviewProvider {
    static var previews: some View {
        AppView(_dateFormat: DateFormatter())
    }
}
