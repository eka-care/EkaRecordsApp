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
    CoreInitConfigurations.shared.authToken = "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdWQiOiJkb2N0b3ItYXBwLWlvcyIsImItaWQiOiJiLTE2NzUzNTQ3NzAwMTQyNyIsImRvYiI6IjIwMDAtMDQtMDciLCJkb2MtaWQiOiIxNjc1MzU0NzcwMDE0MjciLCJleHAiOjE3Mzg5MjE4OTAsImZuIjoiQXJ5YSBWYXNoaXNodCIsImdlbiI6Ik0iLCJpYXQiOjE3Mzg5MTgyOTAsImlzLWQiOnRydWUsImlzcyI6ImFnbyIsIm1vYiI6Iis5MTg5NjgzNDk3NDQiLCJvaWQiOiIxNjc1MzU0NzcwMDE0MjciLCJwIjoiUEFTU19fNDk5IiwicHAiOnsiYyI6IjEwIiwiZSI6IjE3MzYwMTU0MDAiLCJ0IjoiMCJ9LCJ0eXBlIjoxLCJ1dWlkIjoiZWNiNTJmZDctZGM4Yy00YTg0LWEyZTQtNmZiMThiMDVjOGEwIn0.kSKhXQkfR3J8LIRINhIOJdJObuK8N6wOU8X5gLoToq0"
    CoreInitConfigurations.shared.refreshToken = "6416008824f448a0a1b485349e300bd3"
    CoreInitConfigurations.shared.filterID = "170739781344776"
  }
}
