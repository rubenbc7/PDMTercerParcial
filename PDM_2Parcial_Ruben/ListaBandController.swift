//
//  ViewController.swift
//  PDM_2Parcial_Ruben
//
//  Created by El Ruben
//

import Foundation
import UIKit

class ListaBandController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var tvBandas: UITableView!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return bandas.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 231
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaBanda") as! CeldaBandaController
        celda.lblNombre.text = bandas[indexPath.row].nombre
        celda.lblPais.text = bandas[indexPath.row].pais
        celda.lblOyentes.text = bandas[indexPath.row].oyentes
        celda.lblLikes.text = bandas[indexPath.row].likes
        celda.imgFoto.image = UIImage(named: bandas[indexPath.row].foto)
        
        return celda
    }
    var bandas : [Band] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Your music"
        
        bandas.append(Band(nombre: "AM",  oyentes: "41 min 47 s",pais: "Arctic Monkeys", likes : "12", foto: "A4", popular1: "Do I Wanna Know?",  popular2: "Why'd You Only Call Me When You're High?", popular3: "I Wanna Be Yours", popular4: "Mad Sounds", popular5: "R U Mine?"))
        bandas.append(Band(nombre: "Abbey Road",  oyentes: "47 min 29 s",pais: "The Beatles", likes : "17", foto: "B5", popular1: "Here Comes The Sun",  popular2: "Something", popular3: "Come Together", popular4: "Oh! Darling", popular5: "You Never Give Me Your Money"))
        bandas.append(Band(nombre: "Random Access Memories",  oyentes: "1 h 14 min",pais: "Daft Punl", likes : "13", foto: "D5", popular1: "Get Lucky",  popular2: "Give Life Back to Music", popular3: "Instant Crush", popular4: "Lose Yourself to Dance", popular5: "Giorgio by Moroder"))
        bandas.append(Band(nombre: "Vencedor",  oyentes: "45 min 34 s",pais: "Valentín Elizalde", likes : "14", foto: "V4", popular1: "Como me duele",  popular2: "Te Quiero Así", popular3: "A Mis Enemigos", popular4: "Ebrio De Amor", popular5: "Vidita mía"))
        bandas.append(Band(nombre: "MTV Unplugged",  oyentes: "1 h 4 min",pais: "Zoé", likes : "15", foto: "Z3", popular1: "Labios Rotos",  popular2: "Poli/Love", popular3: "Paula", popular4: "Luna", popular5: "Soñé"))
        bandas.append(Band(nombre: "Sonidos De Kármatica Resonancia",  oyentes: "48 min 48 s",pais: "Zoé", likes : "10", foto: "Z5", popular1: "Popular",  popular2: "Karmadame", popular3: "SKR", popular4: "Tepoztlán", popular5: "Fiebre"))
        bandas.append(Band(nombre: "Revolver",  oyentes: "34 min 45 s",pais: "The Beatles", likes : "14", foto: "B2", popular1: "Eleanor Rigby",  popular2: "Taxman", popular3: "Yellow Submarine", popular4: "Got To Get You Into MY Life", popular5: "For No One"))
        bandas.append(Band(nombre: "Tranquility Base Hotel & Casino",  oyentes: "40 min 57 s",pais: "Arctic Monkeys", likes : "11", foto: "A5", popular1: "Four Out Of Five",  popular2: "Batphone", popular3: "The Ultracheese", popular4: "Star Treatment", popular5: "Tranquility Base Hotel & Casino"))
        bandas.append(Band(nombre: "Homenaje A Una Vida Vol 1",  oyentes: "49 min 58 s",pais: "Valentín Elizalde", likes : "15", foto: "V5", popular1: "Soy Así",  popular2: "Volveré A Amar", popular3: "Te Quiero Así", popular4: "Mi Amante", popular5: "Lobo Domesticado"))
        bandas.append(Band(nombre: "Discovery",  oyentes: "1 h 1 min",pais: "Daft Punk", likes : "14", foto: "D2", popular1: "One More Time",  popular2: "Harder, Better, Faster, Stronger", popular3: "Digital Love", popular4: "Something About Us", popular5: "Veridis Quo"))
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
         
        if segue.identifier == "goToEdicion"{
            let destino = segue.destination as! DetallesBandaController
            destino.banda = bandas[tvBandas.indexPathForSelectedRow!.row]
            destino.indice = tvBandas.indexPathForSelectedRow!.row
            destino.callbackActualizarTablaContactos = actualizarTablaContactos
            destino.callbackEliminarContacto = eliminarContacto
        }
        if segue.identifier == "goToCreacion" {
            let destino = segue.destination as! CrearContactoController
            destino.callbackAgregarContacto = agregarContacto
                }
        
    }
    
    func eliminarContacto(indice: Int) {
            bandas.remove(at: indice)
            actualizarTablaContactos()
        }
        
        
    func agregarContacto(banda : Band) {
            bandas.append(banda)
            actualizarTablaContactos()
        }
        
        
    func actualizarTablaContactos() {
            tvBandas.reloadData()
        }


}

