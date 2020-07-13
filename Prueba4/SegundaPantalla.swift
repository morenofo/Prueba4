//
//  SegundaPantalla.swift
//  Prueba4
//
//  Created by OSCAR on 10/07/2020.
//  Copyright © 2020 OSCAR. All rights reserved.
//

import UIKit

class SegundaPantalla: UIViewController {
    @IBOutlet weak var etiqueta1: UILabel!
    var contenedor:String?
    
    override func viewDidLoad() {
        
        etiqueta1.text = contenedor
       

    }
    

}
