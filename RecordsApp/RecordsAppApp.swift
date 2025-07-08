//
//  RecordsAppApp.swift
//  RecordsApp
//
//  Created by Arya Vashisht on 22/01/25.
//

import SwiftUI
import EkaMedicalRecordsUI
import EkaMedicalRecordsCore

@main
struct RecordsAppApp: App {
  
  // MARK: - Properties
  
  let recordsRepo = RecordsRepo()
  let recordsDelegate = RecordsDelegateHandler()
  
  // MARK: - Init
  
  init() {
    registerUISdk()
    registerCoreSdk()
  }
  
  var body: some Scene {
    WindowGroup {
      ContentView()
    }
  }
}

// MARK: - UI SDK Init

extension RecordsAppApp {
  func registerUISdk() {
    registerFonts()
    registerTitle()
  }
  
  private func registerFonts() {
    do {
      try Fonts.registerAllFonts()
    } catch {
      debugPrint("Failed to fetch fonts")
    }
  }
  
  private func registerTitle() {
    InitConfiguration.shared.recordsTitle = "Amit's records"
  }
}

// MARK: - Core SDK Init

extension RecordsAppApp {
  func registerCoreSdk() {
    registerAuthToken()
  }
  
  private func registerAuthToken() {
    CoreInitConfigurations.shared.authToken = "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdWQiOiJkb2N0b3ItYXBwLWlvcyIsImItaWQiOiI3NzI3MjMxOTE5MzY0MyIsImNjIjp7fSwiZXhwIjoxNzUxOTczODQ1LCJmbiI6IkRpdnllc2giLCJnZW4iOiJNIiwiaWF0IjoxNzUxOTcwMjQ1LCJpZHAiOiJtb2IiLCJpc3MiOiJlbXIuZWthLmNhcmUiLCJsbiI6IkppdmFuaSIsIm9pZCI6IjE3MzgzMzE4ODk4MjU5NSIsInByaSI6dHJ1ZSwiciI6IklOIiwidXVpZCI6ImZiMDExYjE0LTRjMzAtNGNjNy05MDkzLWZjZWQ4MGVmNDhmYyJ9.3kMDV8u2iozxIvyYVaSoLsxQO_3N0HlaborqtlQcQPk"
    CoreInitConfigurations.shared.refreshToken = "21eb5e80a22c4514b0d79e448e82eca6"
    CoreInitConfigurations.shared.primaryFilterID = "173891047811776"
    CoreInitConfigurations.shared.filterID = ["173891047811776"]
  }
  
  private func setDelegate() {
    CoreInitConfigurations.shared.delegate = recordsDelegate
  }
}
