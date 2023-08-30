//
//  ViewModel.swift
//  UnitTesting
//
//  Created by thaxz on 30/08/23.
//

import Foundation
import UIKit

@MainActor
final class ViewModel: ObservableObject {
    
    @Published var text: String = ""
    @Published var convertedText: String = "$0"
    
    func convertMoney(){
        
    }
    
    private func hideKeyboard(){
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
    
}
