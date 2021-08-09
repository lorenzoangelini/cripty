//
//  TabNavigator.swift
//  Cripty
//
//  Created by Lorenzo Angelini on 02/08/21.
//

import SwiftUI

struct TabNavigator: View {
    var body: some View {
        TabView{
            WalletView().tabItem {
                Label("Wallet", systemImage: "wallet.pass")
            }
            HomeView().tabItem {
                Label("Home", systemImage: "list.dash")
            }
        }
    }
}

struct TabNavigator_Previews: PreviewProvider {
    static var previews: some View {
        TabNavigator()
    }
}
