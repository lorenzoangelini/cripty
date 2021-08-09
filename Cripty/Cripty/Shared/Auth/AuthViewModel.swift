//
//  AuthViewModel.swift
//  Cripty
//
//  Created by Lorenzo Angelini on 07/08/21.
//

import Foundation

class AuthViewModel: ObservableObject {
    
    @Published var isLogged = false;
    func login () -> Void
    {
        isLogged = true;
    }
    func logout () -> Void
    {
        isLogged = false;
    }
}
