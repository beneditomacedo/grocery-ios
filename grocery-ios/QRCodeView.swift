//
//  OCRView.swift
//  grocery-ios
//
//  Created by bam on 20/11/20.
//
// available at https://www.hackingwithswift.com/books/ios-swiftui/scanning-qr-codes-with-swiftui
//

import SwiftUI
import CodeScanner

struct QRCodeView: View {
    @State var isPresentingScanner = false
    @State var scannedCode: String?
    
    var body: some View {
        NavigationView {
            VStack(spacing: 10) {
                if self.scannedCode != nil {
                    NavigationLink("Next page", destination: PurchaseView(scannedCode: scannedCode!), isActive: .constant(true)).hidden()
                }
                Button("Scan Code") {
                    self.isPresentingScanner = true
                }
                .sheet(isPresented: $isPresentingScanner) {
                    self.scannerSheet
                }
                Text("Scan a QR code to begin")
            }
        }
    }
    
    var scannerSheet: some View {
        VStack {
            HStack {
                Button(action: {
                    print("button 1 presssed")
                }) {
                    Image(systemName: "multiply")
                }

                Spacer()
                
                Button(action: {
                    print("button 2 presssed")
                }) {
                    Image(systemName: "bolt.slash.fill")
                }
            }
            .padding(EdgeInsets(top: 15, leading: 15, bottom: 1, trailing: 15))
            .font(.title2)
            
            CodeScannerView(
                codeTypes: [.qr],
                completion: { result in
                    if case let .success(code) = result {
                        self.scannedCode = code
                        self.isPresentingScanner = false
                    }
                }
            )
        }
    }
}

struct OCRView_Previews: PreviewProvider {
    static var previews: some View {
        QRCodeView()
    }
}
