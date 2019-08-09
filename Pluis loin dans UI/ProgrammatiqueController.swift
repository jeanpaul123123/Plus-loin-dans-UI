//
//  ProgrammatiqueController.swift
//  Pluis loin dans UI
//
//  Created by Jean-Paul Berthelot on 09/08/2019.
//  Copyright © 2019 Jean-Paul Berthelot. All rights reserved.
//

import UIKit

class ProgrammatiqueController: UIViewController {

    var monPremierUIView: UIView? // ? : en optionnel
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        monPremierUIView = UIView(frame: CGRect(x: 30, y: 60, width: 200, height: 50))
        monPremierUIView?.backgroundColor = UIColor(red: 30 / 255, green: 123 / 255, blue: 90 / 255, alpha: 1)
        monPremierUIView?.layer.cornerRadius = 25
        view.addSubview(monPremierUIView!)
        
        print(monPremierUIView?.frame)
        print(monPremierUIView?.bounds)
        
        let secondeVue = UIView(frame: monPremierUIView!.frame)
        secondeVue.center.y += 100
        secondeVue.backgroundColor = UIColor.red
        view.addSubview(secondeVue)
        
        let TroisièmeVue = UIView(frame: monPremierUIView!.bounds)
        TroisièmeVue.center.y += 100
        // attention : si on met pas de couleurs, on ne la verra pas ... !!!
        TroisièmeVue.backgroundColor = UIColor.brown
        view.addSubview(TroisièmeVue)
   
    }

    
    

}
