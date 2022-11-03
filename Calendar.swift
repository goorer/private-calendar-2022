//
//  Calendar.swift
//  private-calendar-2022
//
//  Created by Goorer on 2022/10/13.
//

import SwiftUI

struct Calendar: View {
    @State var wd: String = ""
    let weekDays:[String] = CalendarGadgets().weekDays
    var body: some View {
        VStack(alignment:.leading) {
            HStack(alignment:.center) {
                ForEach(weekDays, id:\.self) { v in
                    Text("\(v)")
                        .onTapGesture {
                            wd = v
                        }
                }
            }
            Text("\(wd)")
        }
    }
}

struct Calendar_Previews: PreviewProvider {
    static var previews: some View {
        Calendar()
    }
}
