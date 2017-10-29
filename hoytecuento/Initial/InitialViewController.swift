//
//  InitialViewController.swift
//  hoytecuento
//
//  Created by Carlos  Cupeiro Durán on 28/10/17.
//  Copyright © 2017 Carlos  Cupeiro Durán. All rights reserved.
//

import UIKit

class InitialViewController: UIViewController {
    
    @IBOutlet weak var historyButton: ButtonImageLabelDown!
    @IBOutlet weak var comicButton: ButtonImageLabelDown!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        historyButton.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(self.buttonHistoryClicked)))
        comicButton.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(self.buttonComicClicked)))
        
        
        //historyButton.addTarget(self, action: #selector(self.buttonHistoryClicked), for: UIControlEvents.touchUpInside)
        //comicButton.addTarget(self, action: #selector(self.buttonComicClicked), for: UIControlEvents.touchUpInside)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @objc private func buttonHistoryClicked(){
        print("History clicked")
        historyButton.alpha = 1
        performSegue(withIdentifier: "HistorySubMenu", sender: self)
    }
    
    @objc private func buttonComicClicked(){
        print("Comic clicked")
        comicButton.alpha = 1
        performSegue(withIdentifier: "ComicSubMenu", sender: self)
    }
}
