//
//  SubMenuViewController.swift
//  hoytecuento
//
//  Created by Carlos  Cupeiro Durán on 29/10/17.
//  Copyright © 2017 Carlos  Cupeiro Durán. All rights reserved.
//

import UIKit

class SubMenuViewController: UIViewController {

    @IBOutlet weak var submenuTitle: UILabel!
    @IBOutlet weak var createButton: ButtonImageLabelDown!
    @IBOutlet weak var showButton: ButtonImageLabelDown!
    var subMenuText:String?
    var createButtonText:String?
    var showButtonText:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        submenuTitle.text = subMenuText
        createButton.label = createButtonText
        showButton.label = showButtonText
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
