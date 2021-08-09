//
//  LoginViewModel.swift
//  Cripty
//
//  Created by Lorenzo Angelini on 30/07/21.
//

import Foundation

class LoginViewModel: ObservableObject {
    
    @Published var isLogged: Bool = false;
    func toggleLogin() -> Void {
     print("mi loggo oraa");
        print(isLogged);
        isLogged = !isLogged;
    }
    
}
