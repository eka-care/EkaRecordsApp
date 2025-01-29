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
  
  let recordsRepo = RecordsRepo()
  
  // MARK: - Body
  
  var body: some View {
    NavigationView { // Add NavigationView here
      VStack {
        Image(systemName: "globe")
          .imageScale(.large)
          .foregroundStyle(.tint)
        Text("Hello, world!")
        
        NavigationLink(
          destination: RecordsView(
            recordPresentationState: .picker,
            didSelectPickerDataObjects: { objects in
              print("Selected objects: \(objects)")
            }
          ).environment(\.managedObjectContext, recordsRepo.databaseManager.container.viewContext)
        ) {
          Text("Go to Records")
            .foregroundColor(.white)
            .padding()
            .background(Color.blue)
            .cornerRadius(8)
        }
      }
      .padding()
    }
  }
}

#Preview {
  ContentView()
}
