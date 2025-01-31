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
    CoreInitConfigurations.shared.authToken = "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdWQiOiJkb2N0b3ItYXBwLWlvcyIsImItaWQiOiI3NjgxMzczMzIzMjA2MSIsImRvYiI6IjE5ODQtMTEtMTkiLCJkb2MtaWQiOiIxNzI5Njk1MzE2MzczNjEiLCJleHAiOjE3MzgyNTE4MzcsImZuIjoiQnJ1bmRhIEIiLCJnZW4iOiJGIiwiaWF0IjoxNzM4MjQ4MjM3LCJpcy1kIjp0cnVlLCJpc3MiOiJhZ28iLCJtb2IiOiIrOTE4MzEwMzc4MjkyIiwib2lkIjoiMTcyOTY5NTMxNjM3MzYxIiwicCI6IlBBU1NfXzQ5OXYyIiwicHAiOnsiYyI6IjE5IiwiZSI6IjE3MzQ5Nzg2MDAiLCJ0IjoiMCJ9LCJ0eXBlIjoxLCJ1dWlkIjoiY2I0YTJlMjMtNTk1NS00ZjlmLWFmYzktNjI0N2QwYmE4MTRlIn0.fVq_d6gv9wdENKiXG6JaiaRVEe3iL71S3eyW3G8kPZ0"
    CoreInitConfigurations.shared.refreshToken = "4dd347a04b3943eba39e68cd8a4c2a0d"
    CoreInitConfigurations.shared.oid = "173694387140073"
  }
}
