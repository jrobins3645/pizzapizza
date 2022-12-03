//
//  mapSearch.swift
//  gcApp
//
//  Created by Allison Kohler on 11/29/22.
//

import SwiftUI

struct mapSearch: View {
    @State private var searchText = ""
    var body: some View {
        NavigationView{
                Text("")
                    .searchable(text: $searchText)
                    .navigationTitle("Feelwell Places")
        }
    }
    
    struct mapSearch_Previews: PreviewProvider {
        static var previews: some View {
            mapSearch()
        }
    }
}
