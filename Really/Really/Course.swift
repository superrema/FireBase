//
//  Course.swift
//  Really
//
//  Created by Remachann . on 22/11/1444 AH.
//

import Foundation
import FirebaseFirestore


struct Course: Identifiable, Codable {
    var id: String
    var Title: String
    var Descreption: String
    var hours: String

    
    
    enum CodingKeys: String, CodingKey {
        case id
        case Title
        case Descreption
        case hours
    }
    
}
