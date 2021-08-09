//
//  HomeView.swift
//  Cripty
//
//  Created by Lorenzo Angelini on 30/07/21.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject var authViewModel: AuthViewModel
    @StateObject var homeViewModel = HomeViewModel()
    
    var body: some View {
        ScrollView {
            Text("Market Cap").font(.largeTitle).bold()
                .frame(maxWidth: .infinity, alignment: .leading).padding().padding(.bottom, 20)
           
            ForEach(homeViewModel.assets, id: \.id) { asset in
                ItemCryptoList(rank: asset.metrics?.marketCap?.rank ?? 0, name: asset.slug, price: asset.metrics?.marketData?.priceUsd ?? 0.0, dominance: asset.metrics?.marketCap?.marketcapDominancePercent ?? 0.0)
                    
                    .padding(.bottom, 5).padding(.leading,8)
                    .padding(.trailing,8)
                  
            }
            
            if(homeViewModel.isLoading){
                ForEach(0..<10, id: \.self) { index in
                    ItemCryptoList(rank:  0, name: "test", price:  0.0, dominance: 0.0).redacted(reason: /*@START_MENU_TOKEN@*/.placeholder/*@END_MENU_TOKEN@*/).padding(.bottom, 5).padding(.leading,8)
                        .padding(.trailing,8)
                }
            }
            
            
            
            
            Button("Esci"){
                authViewModel.logout()
            }
            Button("Fecth"){
                homeViewModel.getAssets()
            }.padding(.bottom,20)
  
        }.onAppear(){
            homeViewModel.getAssets()
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView().environmentObject(AuthViewModel())
    }
}
