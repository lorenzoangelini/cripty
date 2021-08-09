//
//  ItemCryptoList.swift
//  Cripty
//
//  Created by Lorenzo Angelini on 08/08/21.
//

import SwiftUI

struct ItemCryptoList: View {
    
    var rank: Int;
    var name: String;
    var price: Float;
    var dominance: Float;
    
    var body: some View {
        
        VStack(alignment:.leading){
            HStack(){
                Text(String(rank)).font(.title3).bold()
                Text(name).font(.title3).bold()
                Spacer()
                Text("\(price)").font(.title3).bold()
            }   .frame(maxWidth: .infinity, alignment: .leading)
            HStack(){
            Text("Dominance:").font(.body)
              
                Text("\(String(dominance)) %").font(.body).bold()
                
            }.padding(.top,3)
        }.padding().background(
            LinearGradient(gradient: Gradient(colors: [.blue, .purple]), startPoint: .top, endPoint: .bottomLeading)
        )
        .mask(RoundedRectangle(cornerRadius: 30, style: .continuous))
        .overlay(RoundedRectangle(cornerRadius: 30, style: .continuous)
                .stroke(Color.white.opacity(0.2), lineWidth: 0.5)
                    .blendMode(.overlay)).padding(.top,10)
       
    }
}

struct ItemCryptoList_Previews: PreviewProvider {
    static var previews: some View {
        ItemCryptoList(rank: 1, name: "bitcoin", price: 1233.03,dominance: 23.03)
    }
}
