//
//  RatingControl.swift
//  FoodTruck
//
//  Created by Manikanta Tankala on 12/13/17.
//  Copyright © 2017 Sirius. All rights reserved.
//

import UIKit

@IBDesignable class RatingControl: UIStackView {
    
    //MARK: Properties
    private var ratingButtons = [UIButton]()
    var rating = 0

    //MARK: Initialization
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUpButtons()
    }
    
    required init(coder: NSCoder) {
        super.init(coder: coder)
        setUpButtons()
    }
    
    func setUpButtons() {
        for _ in 0..<5 {
            let button = UIButton()
            button.backgroundColor = UIColor.red
            
            button.translatesAutoresizingMaskIntoConstraints = true
            button.heightAnchor.constraint(equalToConstant: 44.0).isActive = true
            button.widthAnchor.constraint(equalToConstant: 44.0).isActive = true
            button.addTarget(self, action: #selector(RatingControl.ratingButtonTapped(button:)), for: .touchUpInside)
            
            addArrangedSubview(button)
            ratingButtons.append(button)
        }
    }
    
    //MARK: ACTION button
    @objc func ratingButtonTapped(button: UIButton) {
        print("Button pressed 👍")
    }
    
    
    
    
}
