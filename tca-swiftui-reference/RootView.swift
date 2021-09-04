//
//  RootView.swift
//  cafferow-ios
//
//  Created by Naoyuki Murata on 2021/09/04.
//

import SwiftUI

struct RootView: View {
    var body: some View {
        NavigationView {
            List {
                Section(header: Text("The Composable Architecture"), content: {
                    HStack {
                        Image(systemName: "eyes")
                        Text("概要")
                    }
                })
                Section(header: Text("SwiftUI"), content: {
                    HStack {
                        Image(systemName: "eyes")
                        Text("概要")
                    }
                })
            }
            .navigationBarTitle("TCA&SwiftUI Reference App", displayMode: .inline)
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        RootView()
    }
}
