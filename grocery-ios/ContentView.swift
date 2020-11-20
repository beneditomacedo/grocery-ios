//
//  ContentView.swift
//  grocery-ios
//
//  Created by bam on 20/11/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            QRCodeView()
                .tabItem {
                    Image(systemName: "camera.fill")
                    Text("QR Code")
                }
            PurchaseView()
                .tabItem {
                    Image(systemName: "cart.fill")
                    Text("Compras")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
