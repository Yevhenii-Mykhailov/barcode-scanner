//
//  BarcodeScannerViewModel.swift
//  BarcodeScanner
//
//  Created by Yevhenii M on 07.04.2024.
//

import SwiftUI

final class BarcodeScannerViewModel: ObservableObject {
    
    @Published var scannedCode = ""
    @Published var alertItem: AlertItem?
    
    var statusText: String {
        return scannedCode.isEmpty ? "Not yet scanned" : scannedCode
    }
    
    var statusTextColor: Color {
        return scannedCode.isEmpty ? .red : .green
    }
}
