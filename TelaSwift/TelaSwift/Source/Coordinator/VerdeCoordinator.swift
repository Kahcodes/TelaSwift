//
//  VerdeCoordinator.swift
//  TelaSwift
//
//  Created by IFBIOTIC11 on 03/07/23.
//

import Foundation
import UIKit
class VerdeCoordinator: Coordinator {
    
    //faço com que todas as telas que usarem o LoginCoordinator impremente
    //o navigation controller. Senão todos todas as vezes teria que instãnciá-lo
    var navigationController: UINavigationController
    
    //cria um construtor para incializar meu navationCrontroller
    init (navigationController: UINavigationController ) {
            self.navigationController = navigationController
     
        }

      func start() {
     //chama a login
     let viewController = VerdeViewController()
          self.navigationController.pushViewController(viewController, animated: true)
          
          
          viewController.onAzulTap = {
              self.gotoAzul()
          }
          
          viewController.onVermelhoTap = {
              self.gotoVermelho()
          }
    }
    
    //função que chama a registerView
    func  gotoAzul() {
       let coordinator = AzulCoordinator(navigationController: navigationController)
        coordinator.start()
    }
    
    func  gotoVermelho() {
       let coordinator = VermelhaCoordinator(navigationController: navigationController)
        coordinator.start()
    }

}
