//
//  VerdeView.swift
//  TelaSwift
//
//  Created by IFBIOTIC11 on 03/07/23.
//

import Foundation
import UIKit

class VerdeView: UIView {
    //MARK: - Initialize
        override init(frame: CGRect) {
            //chama o frame da superclasse
            super.init(frame: frame)
            // muda a cor de fundo do app para branco
            self.backgroundColor = .viewBackGroundColor2
            setupVisualElements()
            
        }
    
    //MARK: -  Clouseres
    var onVermelhoTap: (() -> Void)?
    var onAzulTap: (() -> Void)?
    
    
    //cria a variável com as propriadades do botão registrar
    var bottomTelaVermelha = ButtonDefault(botao: "Vermelho")
    var bottomTelaAzul = ButtonDefault(botao: "Azul")
    
    func setupVisualElements() {
        self.addSubview(bottomTelaVermelha)
        self.addSubview(bottomTelaAzul)
        
        
        bottomTelaVermelha.addTarget(self, action: #selector(VermelhoTap), for: .touchUpInside)
        bottomTelaAzul.addTarget(self, action: #selector(AzulTap), for: .touchUpInside)
        
        
        //configura a disposição dos elementos na view atual
        NSLayoutConstraint.activate([
            
            bottomTelaVermelha.widthAnchor.constraint(equalToConstant: 374),
            bottomTelaVermelha.heightAnchor.constraint(equalToConstant: 60),
            bottomTelaVermelha.topAnchor.constraint(equalTo: self.centerYAnchor, constant: 25),
            bottomTelaVermelha.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            bottomTelaVermelha.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
            
            bottomTelaAzul.widthAnchor.constraint(equalToConstant: 374),
            bottomTelaAzul.heightAnchor.constraint(equalToConstant: 60),
            bottomTelaAzul.topAnchor.constraint(equalTo: bottomTelaVermelha.bottomAnchor, constant: 25),
            bottomTelaAzul.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            bottomTelaAzul.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
            
            
        ])
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    //MARK: - Actions
    @objc
    private func VermelhoTap(){
        onVermelhoTap?()
    }
    
    @objc
    private func AzulTap(){
        onAzulTap?()
    }
    
}
