//
//  AzulViewController.swift
//  TelaSwift
//
//  Created by IFBIOTIC11 on 03/07/23.
//

import Foundation
import UIKit

class AzulViewController: UIViewController {
    
    //MARK: -  Clouseres
    var onVerdeTap: (() -> Void)?
    
    //cria uma variável que é do
    
    lazy var azulView: AzulView = {
        let azulView = AzulView()
        azulView.onVerdeTap = {
            self.onVerdeTap?()
        }
        
        
        return azulView
    }()
    
       override func loadView(){
           self.view = azulView
       }
       
    // é executado quando está carregando
       override func viewDidLoad() {
           super.viewDidLoad()
        self.title = "Inicio"
    
           
           self.navigationController?.navigationBar.prefersLargeTitles=true

       }

}

