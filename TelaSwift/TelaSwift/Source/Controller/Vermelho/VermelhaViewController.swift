//
//  VermelhaViewController.swift
//  TelaSwift
//
//  Created by IFBIOTIC11 on 03/07/23.
//

import Foundation
import UIKit

class VermelhaViewController: UIViewController {
    
    //MARK: -  Clouseres
    var onAzulTap: (() -> Void)?
    var onVerdeTap: (() -> Void)?

    
    //cria uma variável que é do
    lazy var vermelhoView: VermelhaView = {
        let vermelhoView = VermelhaView()
        vermelhoView.onVerdeTap = {
            self.onVerdeTap?()
        }
    
        vermelhoView.onAzulTap = {
            self.onAzulTap?()
        }
        
        return  vermelhoView
    }()
    
       override func loadView(){
           self.view = vermelhoView
       }
       
    // é executado quando está carregando
       override func viewDidLoad() {
           super.viewDidLoad()
        self.title = "tela 3"
           
           self.navigationController?.navigationBar.prefersLargeTitles=true
    

       }

}
