//
//  ContentView.swift
//  RecordsApp
//
//  Created by Arya Vashisht on 22/01/25.
//

import SwiftUI
import EkaMedicalRecordsUI
import EkaMedicalRecordsCore

struct ContentView: View {
  // MARK: - Properties
  
  @State private var isShowingSheet = false
  
  // MARK: - Body
  
  var body: some View {
    VStack {
      Image(systemName: "globe")
        .imageScale(.large)
        .foregroundStyle(.tint)
      Text("Hello, world!")
      
      Button(action: {
        isShowingSheet = true
      }) {
        Text("Go to Records")
          .foregroundColor(.white)
          .padding()
          .background(Color.blue)
          .cornerRadius(8)
      }
      .fullScreenCover(isPresented: $isShowingSheet) {
        NavigationStack {
          RecordContainerView(recordPresentationState: .displayAll)
        }
      }
    }
    .padding()
  }
}

#Preview {
  ContentView()
}
