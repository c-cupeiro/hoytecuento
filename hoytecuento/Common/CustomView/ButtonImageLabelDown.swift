//
//  ButtonImageLabelDown.swift
//  hoytecuento
//
//  Created by Carlos  Cupeiro Durán on 28/10/17.
//  Copyright © 2017 Carlos  Cupeiro Durán. All rights reserved.
//

import UIKit

@IBDesignable
class ButtonImageLabelDown: UIView {
    @IBOutlet weak var buttonImage: UIImageView!
    @IBOutlet weak var buttonLabel: UILabel!
    
    @IBInspectable
    var image:UIImage?{
        didSet{
            buttonImage.image = image
        }
    }
    
    @IBInspectable
    var label:String?{
        didSet{
            buttonLabel.text = label
        }
    }
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }
    
    private func setup(){
        let view = LoadFromNib()
        view.frame = bounds
        addSubview(view)
    }
    
    private func LoadFromNib() -> UIView{
        let bundle = Bundle(for: type(of: self))
        let nib = UINib(nibName: "ButtonImageLabelDown", bundle: bundle)
        return nib.instantiate(withOwner: self, options: nil).first as! UIView
    }
    
    
    func simulateButtonAnimation(){
        self.alpha = 0.5
        let when = DispatchTime.now()+0.1
        DispatchQueue.main.asyncAfter(deadline: when){ [weak self] in
            self?.alpha = 1
        }
    }
    

}
