//
//  VermelhaView.swift
//  TelaSwift
//
//  Created by IFBIOTIC11 on 03/07/23.
//

import Foundation
import UIKit

class VermelhaView: UIView {
    //MARK: - Initialize
        override init(frame: CGRect) {
            //chama o frame da superclasse
            super.init(frame: frame)
            // muda a cor de fundo do app para branco
            self.backgroundColor = .viewBackGroundColor3
            setupVisualElements()
            
        }
    
    //MARK: -  Clouseres
    var onVerdeTap: (() -> Void)?
    var onAzulTap: (() -> Void)?
    
    
    //cria a variável com as propriadades do botão registrar
    var bottomTelaVerde = ButtonDefault(botao: "Verde")
    var bottomTelaAzul = ButtonDefault(botao: "Azul")
    
    func setupVisualElements() {
        
        self.addSubview(bottomTelaVerde)
        self.addSubview(bottomTelaAzul)
        
        
        bottomTelaVerde.addTarget(self, action: #selector(VerdeTap), for: .touchUpInside)
        bottomTelaAzul.addTarget(self, action: #selector(AzulTap), for: .touchUpInside)
        
        
        //configura a disposição dos elementos na view atual
        NSLayoutConstraint.activate([
            
            bottomTelaVerde.widthAnchor.constraint(equalToConstant: 374),
            bottomTelaVerde.heightAnchor.constraint(equalToConstant: 60),
            bottomTelaVerde.topAnchor.constraint(equalTo: self.centerYAnchor, constant: 25),
            bottomTelaVerde.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            bottomTelaVerde.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
            
            bottomTelaAzul.widthAnchor.constraint(equalToConstant: 374),
            bottomTelaAzul.heightAnchor.constraint(equalToConstant: 60),
            bottomTelaAzul.topAnchor.constraint(equalTo: bottomTelaVerde.bottomAnchor, constant: 25),
            bottomTelaAzul.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            bottomTelaAzul.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
            
            
        ])
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    //MARK: - Actions
    @objc
    private func VerdeTap(){
        onVerdeTap?()
    }
    
    @objc
    private func AzulTap(){
        onAzulTap?()
    }
    
}
