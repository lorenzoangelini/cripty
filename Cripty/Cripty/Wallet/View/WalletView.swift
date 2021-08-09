//
//  WalletView.swift
//  Cripty
//
//  Created by Lorenzo Angelini on 08/08/21.
//

import SwiftUI

struct WalletView: View {
    var body: some View {
        ScrollView(){
            
            Text("Wallet").font(.largeTitle).bold().frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,alignment: .leading).padding()
            Text("Favourites").font(.title3).bold().frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,alignment: .leading).padding()
         
            
        }
    }
}

struct WalletView_Previews: PreviewProvider {
    static var previews: some View {
        WalletView()
    }
}
