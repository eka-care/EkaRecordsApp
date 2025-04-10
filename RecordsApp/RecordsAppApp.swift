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
    CoreInitConfigurations.shared.authToken = "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdWQiOiJkb2N0b3ItYXBwLWlvcyIsImItaWQiOiJiLTE2NzUzNTQ3NzAwMTQyNyIsImRvYiI6IjIwMDAtMDQtMDciLCJkb2MtaWQiOiIxNjc1MzU0NzcwMDE0MjciLCJleHAiOjE3NDMxMzc1MDksImZuIjoiQXJ5YSBWYXNoaXNodCIsImdlbiI6Ik0iLCJpYXQiOjE3NDMxMzM5MDksImlzLWQiOnRydWUsImlzcyI6ImFnbyIsIm1vYiI6Iis5MTg5NjgzNDk3NDQiLCJvaWQiOiIxNjc1MzU0NzcwMDE0MjciLCJwIjoiUEFTU19fNDk5IiwicHAiOnsiYyI6IjEwIiwiZSI6IjE3MzYwMTU0MDAiLCJ0IjoiMCJ9LCJ0eXBlIjoxLCJ1dWlkIjoiZWNiNTJmZDctZGM4Yy00YTg0LWEyZTQtNmZiMThiMDVjOGEwIn0.iCsYZ5luSRAGULASatXPse9CA9fPRyITqoW1uALDWr4"
    CoreInitConfigurations.shared.refreshToken = "28e24d2b74024f37b8a0867031e8ac56"
    CoreInitConfigurations.shared.filterID = "173780145631397"
  }
}
