//
//  PlaceTableViewCell.swift
//  d05
//
//  Created by Anna BIBYK on 1/21/19.
//  Copyright © 2019 Anna BIBYK. All rights reserved.
//

import UIKit

class PlaceTableViewCell: UITableViewCell {

    @IBOutlet weak var placeLabel: UILabel!
    
    var place : (String, String, Double, Double)? {
        didSet {
            if let p = place {
                placeLabel?.text = p.0
            }
        }
    }
}
