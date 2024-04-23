//
//  Alert.swift
//  BarcodeScanner
//
//  Created by Yevhenii M on 07.04.2024.
//

import SwiftUI

struct AlertItem: Identifiable {
    
    let id = UUID()
    let title: Text
    let message: Text
    let dismissButton: Alert.Button
}

struct AlertContext {
    static let invalidDeviceInput = AlertItem(title: Text("Invalid device input"),
                                              message: Text("Something wrong with camera"),
                                              dismissButton: .default(Text("Ok")))
    
    static let invalidScannedInput = AlertItem(title: Text("Invalid barcode"),
                                              message: Text("Barcode is not valid. App scanned EAN-8 and EAN-13 barcodes"),
                                              dismissButton: .default(Text("Ok")))
}
