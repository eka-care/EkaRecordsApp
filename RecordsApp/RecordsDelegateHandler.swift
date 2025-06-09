//
//  RecordsDelegateHandler.swift
//  RecordsApp
//
//  Created by Arya Vashisht on 03/06/25.
//

import EkaMedicalRecordsCore

final class RecordsDelegateHandler {}

extension RecordsDelegateHandler: EventLoggerProtocol {
  func receiveEvent(eventLog: EkaMedicalRecordsCore.EventLog) {
    debugPrint("Received event log \(eventLog)")
  }
}
