//
//  Band.swift
//  PDM_2Parcial_Ruben
//
//  Created by El Rubén
//

import Foundation

class Band {
    
    var nombre = ""
    var oyentes = ""
    var pais = ""
    var likes = ""
    var foto = ""
    var popular1 = ""
    var popular2 = ""
    var popular3 = ""
    var popular4 = ""
    var popular5 = ""
    
    
    init(nombre: String, oyentes: String, pais: String, likes: String, foto: String, popular1:String, popular2:String, popular3:String, popular4:String, popular5:String) {
        self.nombre = nombre
        self.oyentes = oyentes
        self.pais = pais
        self.likes = likes
        self.foto = foto
        self.popular1 = popular1
        self.popular2 = popular2
        self.popular3 = popular3
        self.popular4 = popular4
        self.popular5 = popular5
    }
    
}
