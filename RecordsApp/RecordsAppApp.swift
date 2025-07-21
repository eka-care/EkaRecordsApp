//
//  RecordsAppApp.swift
//  RecordsApp
//
//  Created by Arya Vashisht on 22/01/25.
//

import SwiftUI
import EkaMedicalRecordsUI
import EkaMedicalRecordsCore
import EkaUI

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
      EkaUI.registerFonts()
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
    CoreInitConfigurations.shared.authToken = "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdWQiOiJkb2N0b3ItYXBwLWlvcyIsImItaWQiOiI3MTc0ODk0ODI3MDc3NDk1IiwiY2MiOnt9LCJkb2IiOiIyMDAwLTAxLTAxIiwiZXhwIjoxNzUyMDQ4NzQxLCJmbiI6Ikdvb2dsZSIsImdlbiI6Ik0iLCJpYXQiOjE3NTIwNDUxNDEsImlkcCI6Im1vYiIsImlzcyI6ImVtci5la2EuY2FyZSIsImxuIjoiVGVzdGluZyIsIm9pZCI6IjE3NDg5NDgyNzA5NzgxMSIsInByaSI6dHJ1ZSwicHMiOiJBRCIsInIiOiJJTiIsInMiOiJEciIsInV1aWQiOiI5ZWZjZWNkMS0xOThkLTQyZWQtYjQ0MC1mYjg2MzFkNzE2M2UifQ.DvEEUd-hkNZi_iDp6KhaHWIbUZwY3ybBE8Jf6FvLPqs"
    CoreInitConfigurations.shared.refreshToken = "965fce290f2a4df5897343b5014c03df"
    CoreInitConfigurations.shared.primaryFilterID = "174954166695563"
    CoreInitConfigurations.shared.filterID = ["174954166695563"]
  }
  
  private func setDelegate() {
    CoreInitConfigurations.shared.delegate = recordsDelegate
  }
}
