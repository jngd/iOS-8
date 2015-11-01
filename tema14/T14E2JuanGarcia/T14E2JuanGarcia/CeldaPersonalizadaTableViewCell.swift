//
//  CeldaPersonalizadaTableViewCell.swift
//  T14E2JuanGarcia
//
//  Created by jgd on 20/09/15.
//  Copyright (c) 2015 jgd. All rights reserved.
//

import UIKit

class CeldaPersonalizadaTableViewCell: UITableViewCell {

    @IBOutlet weak var titulo: UILabel!
    @IBOutlet weak var subtitulo: UILabel!
    @IBOutlet weak var imagen: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
