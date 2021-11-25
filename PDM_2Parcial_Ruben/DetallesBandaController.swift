//
//  DetallesBandaController.swift
//  PDM_2Parcial_Ruben
//
//  Created by elRubius
//

import Foundation
import UIKit

class DetallesBandaController : UIViewController{
    var band : Band?
    var banda : Band = Band(nombre: "", oyentes: "", pais: "", likes: "", foto: "", popular1: "", popular2: "", popular3: "", popular4: "", popular5: "")
    var indice : Int?
    var callbackEliminarContacto : ((Int) -> Void)?
    var callbackActualizarTablaContactos : (() -> Void)?
    
    @IBOutlet weak var lblnombreHeader: UILabel!
    @IBOutlet weak var lblNombreBanda: UILabel!
    @IBOutlet weak var lblFechaAlbum: UILabel!
    @IBOutlet weak var lblDuracion: UILabel!
    @IBOutlet weak var lblPopular: UILabel!
    @IBOutlet weak var lblPopular2: UILabel!
    @IBOutlet weak var lblPopular3: UILabel!
    @IBOutlet weak var lblPopular4: UILabel!
    @IBOutlet weak var lblPopular5: UILabel!
    @IBOutlet weak var lblImagen: UIImageView!
    
    @IBOutlet weak var txtAlbum: UITextField!
    @IBOutlet weak var txtBand: UITextField!
    @IBOutlet weak var txtSongs: UITextField!
    @IBOutlet weak var txtDuration: UITextField!
    @IBOutlet weak var txtML1: UITextField!
    @IBOutlet weak var txtML2: UITextField!
    @IBOutlet weak var txtML3: UITextField!
    @IBOutlet weak var txtML4: UITextField!
    @IBOutlet weak var txtML5: UITextField!
    
    

    @IBOutlet weak var btnCancel: UIButton!
    @IBOutlet weak var btnEdit: UIButton!
    @IBOutlet weak var btnBorrar: UIButton!
    
    var editando = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Album info"
        //if banda != nil{
            lblnombreHeader.text = banda.nombre
            lblNombreBanda.text = banda.pais
            lblFechaAlbum.text = banda.likes
            lblDuracion.text = banda.oyentes
            lblPopular.text = banda.popular1
            lblPopular2.text = banda.popular2
            lblPopular3.text = banda.popular3
            lblPopular4.text = banda.popular4
            lblPopular5.text = banda.popular5
            lblImagen.image = UIImage(named: banda.foto)
            
            txtBand.text = banda.pais
            txtAlbum.text = banda.nombre
            txtSongs.text = banda.likes
            txtDuration.text = banda.oyentes
            txtML1.text = banda.popular1
            txtML2.text = banda.popular2
            txtML3.text = banda.popular3
            txtML4.text = banda.popular4
            txtML5.text = banda.popular5
        //}
        txtBand.isHidden = true
        txtAlbum.isHidden = true
        txtSongs.isHidden = true
        txtDuration.isHidden = true
        txtML1.isHidden = true
        txtML2.isHidden = true
        txtML3.isHidden = true
        txtML4.isHidden = true
        txtML5.isHidden = true
        
        btnCancel.isHidden = true
        
    }
    @IBAction func btnBorrar(_ sender: Any) {
        callbackEliminarContacto!(indice!)
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func doTapEditar(_ sender: Any) {
        editando = !editando
        
        if editando{
            lblnombreHeader.isHidden = true
            lblNombreBanda.isHidden = true
            lblFechaAlbum.isHidden = true
            lblDuracion.isHidden = true
            lblPopular.isHidden = true
            lblPopular2.isHidden = true
            lblPopular3.isHidden = true
            lblPopular4.isHidden = true
            lblPopular5.isHidden = true
            
            txtBand.isHidden = false
            txtAlbum.isHidden = false
            txtSongs.isHidden = false
            txtDuration.isHidden = false
            txtML1.isHidden = false
            txtML2.isHidden = false
            txtML3.isHidden = false
            txtML4.isHidden = false
            txtML5.isHidden = false
            
            btnBorrar.isHidden = true
            btnEdit.setTitle("Guardar", for: .normal)
            btnCancel.isHidden = false
        }
        
        else{
            band?.nombre = txtAlbum.text!
            band?.pais = txtBand.text!
            band?.likes = txtSongs.text!
            band?.oyentes = txtDuration.text!
            band?.popular1 = txtML1.text!
            band?.popular2 = txtML2.text!
            band?.popular3 = txtML3.text!
            band?.popular4 = txtML4.text!
            band?.popular5 = txtML5.text!
            
            lblnombreHeader.text = txtAlbum.text
            lblNombreBanda.text = txtBand.text
            lblFechaAlbum.text = txtSongs.text
            lblDuracion.text = txtDuration.text
            lblPopular.text = txtML1.text
            lblPopular2.text = txtML2.text
            lblPopular3.text = txtML3.text
            lblPopular4.text = txtML4.text
            lblPopular5.text = txtML5.text
            lblImagen.image = UIImage(named: banda.foto)
            
            callbackActualizarTablaContactos!()
            
            lblnombreHeader.isHidden = false
            lblNombreBanda.isHidden = false
            lblFechaAlbum.isHidden = false
            lblDuracion.isHidden = false
            lblPopular.isHidden = false
            lblPopular2.isHidden = false
            lblPopular3.isHidden = false
            lblPopular4.isHidden = false
            lblPopular5.isHidden = false
            
            txtBand.isHidden = true
            txtAlbum.isHidden = true
            txtSongs.isHidden = true
            txtDuration.isHidden = true
            txtML1.isHidden = true
            txtML2.isHidden = true
            txtML3.isHidden = true
            txtML4.isHidden = true
            txtML5.isHidden = true
            
            btnBorrar.isHidden = false
            btnEdit.setTitle("Editar", for: .normal)}
        btnCancel.isHidden = true
    }
    @IBAction func doTapCancelar(_ sender: Any) {
        editando = false
        
        lblnombreHeader.isHidden = false
        lblNombreBanda.isHidden = false
        lblFechaAlbum.isHidden = false
        lblDuracion.isHidden = false
        lblPopular.isHidden = false
        lblPopular2.isHidden = false
        lblPopular3.isHidden = false
        lblPopular4.isHidden = false
        lblPopular5.isHidden = false
        
        txtBand.isHidden = true
        txtAlbum.isHidden = true
        txtSongs.isHidden = true
        txtDuration.isHidden = true
        txtML1.isHidden = true
        txtML2.isHidden = true
        txtML3.isHidden = true
        txtML4.isHidden = true
        txtML5.isHidden = true
        
        btnBorrar.isHidden = false
        btnEdit.setTitle("Editar", for: .normal)
        btnCancel.isHidden = true
        
        txtBand.text = lblNombreBanda.text
        txtAlbum.text = lblnombreHeader.text
        txtSongs.text = lblFechaAlbum.text
        txtDuration.text = lblDuracion.text
        txtML1.text = lblPopular.text
        txtML2.text = lblPopular2.text
        txtML3.text = lblPopular3.text
        txtML4.text = lblPopular4.text
        txtML5.text = lblPopular5.text
    }
    
    
}
