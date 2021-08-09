//
//  ContentView.swift
//  Cripty
//
//  Created by Lorenzo Angelini on 08/07/21.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var authViewModel: AuthViewModel

    var body: some View {
    
        if(authViewModel.isLogged){
            TabNavigator()
        }else{
            LoginView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    
    static var previews: some View {
        
        ContentView()
            .environmentObject(AuthViewModel())
    }
}

