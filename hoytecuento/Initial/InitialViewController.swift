//
//  InitialViewController.swift
//  hoytecuento
//
//  Created by Carlos  Cupeiro Durán on 28/10/17.
//  Copyright © 2017 Carlos  Cupeiro Durán. All rights reserved.
//

import UIKit

class InitialViewController: UIViewController {

    @IBOutlet weak var buttonHistory: ButtonImageLabelDown!
    @IBOutlet weak var buttonComic: ButtonImageLabelDown!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        buttonHistory.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(self.buttonHistoryTapped(_:))))
        buttonComic.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(self.buttonComicTapped(_:))))
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @objc func buttonHistoryTapped(_ sender: UITapGestureRecognizer){
        buttonHistory.simulateButtonAnimation()
        print("Button History Pressed")
        
    }

    @objc func buttonComicTapped(_ sender: UITapGestureRecognizer){
        buttonComic.simulateButtonAnimation()
        print("Button Comic Pressed")
    }
    
}
