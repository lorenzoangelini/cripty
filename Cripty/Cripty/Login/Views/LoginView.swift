//
//  LoginView.swift
//  Cripty
//
//  Created by Lorenzo Angelini on 30/07/21.
//

import SwiftUI

struct LoginView: View {
    
    @EnvironmentObject var authViewModel: AuthViewModel
    var body: some View {
        VStack{
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            Text("Hello, World!")
            Button("Login") {
                authViewModel.login()
            }
        }
       
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView().environmentObject(AuthViewModel())
    }
}
