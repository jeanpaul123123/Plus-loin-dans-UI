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
    var monPremierLabel : UILabel?
    var monPremierBouton: UIButton?
    var maPremiereIV: UIImageView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        monPremierUIView = UIView(frame: CGRect(x: 30, y: 60, width: 200, height: 50))
        monPremierUIView?.backgroundColor = UIColor(red: 30 / 255, green: 123 / 255, blue: 90 / 255, alpha: 1)
        monPremierUIView?.layer.cornerRadius = 25
        view.addSubview(monPremierUIView!)
        
        monPremierLabel = UILabel(frame: CGRect(x: 0, y: monPremierUIView!.frame.maxY + 20, width: view.frame.width, height: 50))
        monPremierLabel?.text = "Coucou je suis un texte"
        monPremierLabel?.numberOfLines = 1
        monPremierLabel?.textColor = UIColor.white
        monPremierLabel?.font = UIFont(name: "Chalkduster", size: 20)
        monPremierLabel?.textAlignment = .left
        view.addSubview(monPremierLabel!)
        
        let rectDeMonBouton = CGRect(x: view.frame.width / 2 - 75, y: monPremierLabel!.frame.maxY + 220, width: 150, height: 40)
        monPremierBouton = UIButton(frame: rectDeMonBouton)
        // documentation sur https://developer.apple.com/documentation/uikit/uicontrol/state
        monPremierBouton?.setTitle("Appuyez", for: UIControl.State.normal)
        monPremierBouton?.tintColor = UIColor.white
        monPremierBouton?.titleLabel?.font = UIFont.boldSystemFont(ofSize: 18)
        monPremierBouton?.backgroundColor = UIColor.black
        monPremierBouton?.layer.borderColor = UIColor.white.cgColor
        monPremierBouton?.layer.borderWidth = 2
        view.addSubview(monPremierBouton!)

        

        // ajout d'une action
        // ce qui se passe quand le bouton est appuyé
        monPremierBouton?.addTarget(self, action: #selector(boutonAppuye), for: .touchUpInside)
        
        let largeur = view.frame.width - 60
        let rectIV = CGRect(x: 30, y: (view.frame.height / 2) - (largeur / 2), width: largeur, height: largeur)
        maPremiereIV = UIImageView(frame: rectIV)
        maPremiereIV?.image = UIImage(named: "codabee")
        maPremiereIV?.contentMode = .scaleAspectFill
        // permet de tronquer à la vue
        maPremiereIV?.clipsToBounds = true
        // sans cette instruction on a un carré et avec on a un rond parfait !
        maPremiereIV?.layer.cornerRadius = maPremiereIV!.frame.width / 2
        view.addSubview(maPremiereIV!)
        // en faisant cela le bouton n'est plus visible
        // donc on l'ajoute après : empilement de couches ...
        view.bringSubviewToFront(monPremierBouton!)

        // pour que l'image soit cliquable on ajoute
        maPremiereIV?.isUserInteractionEnabled = true
        // UITapGestureRecognizer : quand on tape sur l'image
        // on sait cliquer sur une image, on peut aussi
        maPremiereIV?.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(imageAppuye)))

        
//        print(monPremierUIView?.frame)
//        print(monPremierUIView?.bounds)
//
//        let secondeVue = UIView(frame: monPremierUIView!.frame)
//        secondeVue.center.y += 100
//        secondeVue.backgroundColor = UIColor.red
//        view.addSubview(secondeVue)
//
//        let TroisièmeVue = UIView(frame: monPremierUIView!.bounds)
//        TroisièmeVue.center.y += 100
//        // attention : si on met pas de couleurs, on ne la verra pas ... !!!
//        TroisièmeVue.backgroundColor = UIColor.brown
//        view.addSubview(TroisièmeVue)
   
    }
    
    @objc func boutonAppuye() {
        print("tu as bien appuyé")
    }
    
    @objc func imageAppuye() {
        print("Image touchée")
    }
    
    
    

}
