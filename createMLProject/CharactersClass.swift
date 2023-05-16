//
//  CharactersClass.swift
//  LordOfTheRings
//
//  Created by Koray Şahin on 6.05.2023.
//

import Foundation
class CharactersClass {
    var characterId: Int?
    var characterName: String?
    var characterPhotoName: String?
    
    init() {
        
    }
    init(characterId:Int,characterName:String,characterPhotoName:String) {
        self.characterId = characterId
        self.characterName = characterName
        self.characterPhotoName = characterPhotoName
    }
}
