//
//  RootView.swift
//  cafferow-ios
//
//  Created by Naoyuki Murata on 2021/09/04.
//

import SwiftUI

protocol RowType {
    var title: String { get }
}

enum TcaRowType: RowType, CaseIterable, Hashable {
    case overview

    var title: String {
        switch self {
        case .overview:
            return "概要"
        }
    }
}

enum SwiftuiRowType: RowType, CaseIterable, Hashable {
    case overview

    var title: String {
        switch self {
        case .overview:
            return "概要"
        }
    }
}

struct RootView: View {
    let tcaRowTypeList = TcaRowType.allCases
    let swiftuiRowTypeList = SwiftuiRowType.allCases

    var body: some View {
        NavigationView {
            List {
                Section(header: Text("The Composable Architecture"), content: {
                    ForEach(tcaRowTypeList, id: \.self) { rowType in
                        Row(rowType: rowType)
                    }
                })
                Section(header: Text("SwiftUI"), content: {
                    ForEach(swiftuiRowTypeList, id: \.self) { rowType in
                        Row(rowType: rowType)
                    }
                })
            }
            .navigationBarTitle("TCA&SwiftUI Reference App", displayMode: .inline)
        }
    }
}

struct Row: View {
    var rowType: RowType

    var body: some View {
        HStack {
            Image(systemName: "eyes")
            Text(rowType.title)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        RootView()
    }
}
