//
//  PurchaseView.swift
//  grocery-ios
//
//  Created by bam on 20/11/20.
//

import SwiftUI

struct PurchaseView: View {
    let scannedCode: String
    
    var body: some View {
        Text(scannedCode)
    }
}

struct PurchaseView_Previews: PreviewProvider {
    static var previews: some View {
        PurchaseView(scannedCode: "Teste")
    }
}
