//
//  AzulView.swift
//  TelaSwift
//
//  Created by IFBIOTIC11 on 03/07/23.
//

import Foundation
import UIKit

class AzulView: UIView {
    //MARK: - Initialize
        override init(frame: CGRect) {
            //chama o frame da superclasse
            super.init(frame: frame)
            // muda a cor de fundo do app para branco
            self.backgroundColor = .viewBackGroundColor
            setupVisualElements()
            
        }
    //MARK: -  Clouseres
    var onVerdeTap: (() -> Void)?
    
    //cria a variável com as propriadades do botão registrar
    var buttonTelaVerde = ButtonDefault(botao: "Verde")
    
    func setupVisualElements() {
        
        self.addSubview(buttonTelaVerde)
        
        buttonTelaVerde.addTarget(self, action: #selector(verdeTap), for: .touchUpInside)
        
        //configura a disposição dos elementos na view atual
        NSLayoutConstraint.activate([
            
            buttonTelaVerde.widthAnchor.constraint(equalToConstant: 374),
            buttonTelaVerde.heightAnchor.constraint(equalToConstant: 60),
            buttonTelaVerde.topAnchor.constraint(equalTo: self.centerYAnchor, constant: 25),
            buttonTelaVerde.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            buttonTelaVerde.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
            
            
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: - Actions
    @objc
    private func verdeTap(){
        onVerdeTap?()
    }
}

