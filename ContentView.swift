//
//  ContentView.swift
//  private-calendar-2022
//
//  Created by Goorer on 2022/10/12.
//

import SwiftUI

struct ContentView: View {
    let dateFormat = DateFormatter()
    var body: some View {
        AppView(_dateFormat: dateFormat)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
