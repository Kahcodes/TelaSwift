//
//  VerdeViewController.swift
//  TelaSwift
//
//  Created by IFBIOTIC11 on 03/07/23.
//

import Foundation
import UIKit

class VerdeViewController: UIViewController {
    
    //MARK: -  Clouseres
    var onAzulTap: (() -> Void)?
    var onVermelhoTap: (() -> Void)?

    
    //cria uma variável que é do
    lazy var verdeView: VerdeView = {
        let verdeView = VerdeView()
        verdeView.onAzulTap = {
            self.onAzulTap?()
        }
        
        verdeView.onVermelhoTap = {
            self.onVermelhoTap?()
        }
        
        return verdeView
    }()
    
       override func loadView(){
           self.view = verdeView
       }
       
    // é executado quando está carregando
       override func viewDidLoad() {
           super.viewDidLoad()
        self.title = "tela 2"
           
           self.navigationController?.navigationBar.prefersLargeTitles=true
    

       }

}
