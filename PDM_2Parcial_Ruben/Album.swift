//
//  Album.swift
//  PDM_2Parcial_Ruben
//
//  Created by Alexia Ruiz Quiroz on 24/10/21.
//

import Foundation

class Album {
    
    var nombre: String?
    var fecha: String?
    var canciones: String?
    var duracion: String?
    var publisher: String?
    var fotoAlbum: String?
    
    init(nombre: String, fecha: String, canciones: String, duracion: String, publisher: String, fotoAlbum: String) {
        
        self.nombre = nombre
        self.fecha = fecha
        self.canciones = canciones
        self.duracion = duracion
        self.publisher = publisher
        self.fotoAlbum = fotoAlbum
    }
    
}
