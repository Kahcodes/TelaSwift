//
//  VermelhaCoordinator.swift
//  TelaSwift
//
//  Created by IFBIOTIC11 on 03/07/23.
//

import Foundation
import UIKit
class VermelhaCoordinator: Coordinator {
    
    //faço com que todas as telas que usarem o LoginCoordinator impremente
    //o navigation controller. Senão todos todas as vezes teria que instãnciá-lo
    var navigationController: UINavigationController
    
    //cria um construtor para incializar meu navationCrontroller
    init (navigationController: UINavigationController ) {
            self.navigationController = navigationController
     
        }

      func start() {
     //chama a login
     let viewController = VermelhaViewController()
          self.navigationController.pushViewController(viewController, animated: true)
          
          
          viewController.onAzulTap = {
              self.gotoAzul()
          }
          
          viewController.onVerdeTap = {
              self.gotoVerde()
          }
    }
    
    //função que chama a registerView
    func  gotoAzul() {
       let coordinator = AzulCoordinator(navigationController: navigationController)
        coordinator.start()
    }
    
    func  gotoVerde() {
       let coordinator = VerdeCoordinator(navigationController: navigationController)
        coordinator.start()
    }

}
