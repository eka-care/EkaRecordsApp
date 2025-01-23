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
  }
  
  private func registerFonts() {
    do {
      try Fonts.registerAllFonts()
    } catch {
      debugPrint("Failed to fetch fonts")
    }
  }
}

// MARK: - Core SDK Init

extension RecordsAppApp {
  func registerCoreSdk() {
    registerAuthToken()
  }
  
  private func registerAuthToken() {
    InitConfigurations.shared.authToken = "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1dWlkIjoiZWNiNTJmZDctZGM4Yy00YTg0LWEyZTQtNmZiMThiMDVjOGEwIiwib2lkIjoiMTY3NTM1NDc3MDAxNDI3IiwiZm4iOiJBcnlhIFZhc2hpc2h0IiwiZ2VuIjoiTSIsImlzLXAiOnRydWUsImRvYiI6IjIwMDAtMDQtMDciLCJtb2IiOiIrOTE4KioqKioqNzQ0IiwidHlwZSI6MSwiZG9jLWlkIjoiMTY3NTM1NDc3MDAxNDI3IiwiaXNzIjoiYSIsImF1ZCI6InBhdGllbnQtYXBwLWlvcyIsImlzLWQiOnRydWUsImlhdCI6MTczNzYxNzIzNSwiZXhwIjoxNzM3NjIwODM1fQ.XnhbC-TmMqYi2dEpD71rTlPTOBA2ASVWlC0fWSe7Y2c"
    InitConfigurations.shared.refreshToken = "7tDsUmiHKN7P6BSY"
  }
}
