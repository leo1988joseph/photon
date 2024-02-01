//
//  ContentView.swift
//  PhotonTest
//
//  Created by Leo Joseph on 1/31/24.
//

import SwiftUI

struct ContentView: View {
    
    var getURL = GetURLManager()
    
    var body: some View {
        VStack {
            Button("Click", action: getSchoolData)
        }
        .padding()
    }
    
    func getSchoolData() {
        getURL.getData()
    }
}

#Preview {
    ContentView()
}
