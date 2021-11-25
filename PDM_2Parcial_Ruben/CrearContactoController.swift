//
//  CrearContactoController.swift
//  PDM_2Parcial_Ruben
//
//  Created by ruben on 24/11/21.
//

import Foundation
import UIKit

class CrearContactoController : UIViewController {
    
    @IBOutlet weak var txtAlbumName: UITextField!
    @IBOutlet weak var txtBandName: UITextField!
    @IBOutlet weak var txtSongs: UITextField!
    @IBOutlet weak var txtDuration: UITextField!
    @IBOutlet weak var txtPopular1: UITextField!
    @IBOutlet weak var txtPopular2: UITextField!
    @IBOutlet weak var txtPopular3: UITextField!
    @IBOutlet weak var txtPopular4: UITextField!
    @IBOutlet weak var txtPopular5: UITextField!
    
    var callbackAgregarContacto : ((Band)  -> Void )?
    
    override func viewDidLoad() {
        self.title = "Add Album"
    }
    @IBAction func doTapGuardar(_ sender: Any) {
        let nombre = txtAlbumName.text!
        let oyentes = txtDuration.text!
        let pais = txtBandName.text!
        let likes = txtSongs.text!
        let foto = "A4"
        let popular1 = txtPopular1.text!
        let popular2 = txtPopular2.text!
        let popular3 = txtPopular3.text!
        let popular4 = txtPopular4.text!
        let popular5 = txtPopular5.text!
        
        let banda = Band(nombre: nombre, oyentes: oyentes, pais: pais, likes: likes, foto: foto, popular1:popular1, popular2:popular2, popular3:popular3, popular4:popular4, popular5:popular5)
        callbackAgregarContacto!(banda)
        self.navigationController?.popViewController(animated: true)
    }
    
}
