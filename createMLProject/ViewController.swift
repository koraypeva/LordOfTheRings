//
//  ViewController.swift
//  createMLProject
//
//  Created by Koray Şahin on 17.04.2023.
//

import UIKit

class ViewController: UIViewController {
   
    
    var charactersList = [CharactersClass]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        charactersCollectionView.delegate = self
        charactersCollectionView.dataSource = self
       
        let tasarim:UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        let genislik = self.charactersCollectionView.frame.size.width
        tasarim.sectionInset = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
        
        tasarim.minimumInteritemSpacing = 10
        tasarim.minimumLineSpacing = 10
        
        let hucreGenislik = (genislik-30)/2
        tasarim.itemSize = CGSize(width: hucreGenislik, height: hucreGenislik*1.85)
        charactersCollectionView!.collectionViewLayout = tasarim
        
        // Do any additional setup after loading the view.
    
        let c1 = CharactersClass(characterId: 1, characterName: "Frodo Baggins", characterPhotoName: "Frodo")
        let c2 = CharactersClass(characterId: 1, characterName: "Gandalf", characterPhotoName: "Gandalf")
        let c3 = CharactersClass(characterId: 1, characterName: "Gollum", characterPhotoName: "Gollum")
        let c4 = CharactersClass(characterId: 1, characterName: "Arwen", characterPhotoName: "Arwen")
        let c5 = CharactersClass(characterId: 1, characterName: "Aragorn", characterPhotoName: "Aragorn")
        let c6 = CharactersClass(characterId: 1, characterName: "Sauron", characterPhotoName: "Sauron")
        let c7 = CharactersClass(characterId: 1, characterName: "Legolas", characterPhotoName: "Legolas")
        let c8 = CharactersClass(characterId: 1, characterName: "Galadriel", characterPhotoName: "Galadriel")
        let c9 = CharactersClass(characterId: 1, characterName: "Gimli", characterPhotoName: "Gimli")
        let c10 = CharactersClass(characterId: 1, characterName: "Saruman", characterPhotoName: "Saruman")
        let c11 = CharactersClass(characterId: 1, characterName: "Boromir", characterPhotoName: "Boromir")
        let c12 = CharactersClass(characterId: 1, characterName: "Eowyn", characterPhotoName: "Eowyn")
        let c13 = CharactersClass(characterId: 1, characterName: "Bilbo Baggins", characterPhotoName: "Bilbo")
        let c14 = CharactersClass(characterId: 1, characterName: "Theoden", characterPhotoName: "Theoden")
        let c15 = CharactersClass(characterId: 1, characterName: "Faramir", characterPhotoName: "Faramir")
        let c16 = CharactersClass(characterId: 1, characterName: "Merry", characterPhotoName: "Merry")
        let c17 = CharactersClass(characterId: 1, characterName: "Sam", characterPhotoName: "Sam")
        let c18 = CharactersClass(characterId: 1, characterName: "Pippin", characterPhotoName: "Pippin")
        let c19 = CharactersClass(characterId: 1, characterName: "Elrond", characterPhotoName: "Elrond")
        let c20 = CharactersClass(characterId: 1, characterName: "Morgoth", characterPhotoName: "Melkor")
        let c21 = CharactersClass(characterId: 1, characterName: "Balrog", characterPhotoName: "Balrog")
        let c22 = CharactersClass(characterId: 1, characterName: "Witch King of Angmar", characterPhotoName: "Witch king of Angmar")
        let c23 = CharactersClass(characterId: 1, characterName: "Eomer", characterPhotoName: "Eomer")
        let c24 = CharactersClass(characterId: 1, characterName: "Treebeard", characterPhotoName: "Treebeard")
        let c25 = CharactersClass(characterId: 1, characterName: "Orcs", characterPhotoName: "Orcs")
        let c26 = CharactersClass(characterId: 1, characterName: "Smaug", characterPhotoName: "Smaug")
        let c27 = CharactersClass(characterId: 1, characterName: "Mouth Of Sauron", characterPhotoName: "Mouth of Sauron")
        let c28 = CharactersClass(characterId: 1, characterName: "Trolls", characterPhotoName: "Trolls")
        let c29 = CharactersClass(characterId: 1, characterName: "Army Of The Dead", characterPhotoName: "Army of the dead")
        let c30 = CharactersClass(characterId: 1, characterName: "Mumakil", characterPhotoName: "Mumakil")
        let c31 = CharactersClass(characterId: 1, characterName: "Shelob", characterPhotoName: "Shelob")
        let c32 = CharactersClass(characterId: 1, characterName: "Nazgul", characterPhotoName: "Nazgul")
        
        
        charactersList.append(c1)
        charactersList.append(c2)
        charactersList.append(c3)
        charactersList.append(c4)
        charactersList.append(c5)
        charactersList.append(c6)
        charactersList.append(c7)
        charactersList.append(c8)
        charactersList.append(c9)
        charactersList.append(c10)
        charactersList.append(c11)
        charactersList.append(c12)
        charactersList.append(c13)
        charactersList.append(c14)
        charactersList.append(c15)
        charactersList.append(c16)
        charactersList.append(c17)
        charactersList.append(c18)
        charactersList.append(c19)
        charactersList.append(c20)
        charactersList.append(c21)
        charactersList.append(c22)
        charactersList.append(c23)
        charactersList.append(c24)
        charactersList.append(c25)
        charactersList.append(c26)
        charactersList.append(c27)
        charactersList.append(c28)
        charactersList.append(c29)
        charactersList.append(c30)
        charactersList.append(c31)
        charactersList.append(c32)
        
        
     
    
}
 
    @IBAction func letsGoButton(_ sender: Any) {
        
    }
    
    
    @IBOutlet weak var charactersCollectionView: UICollectionView!

    
}
extension ViewController:UICollectionViewDataSource,UICollectionViewDelegate {
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return charactersList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let character = charactersList[indexPath.row]
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CharactersCell", for: indexPath) as! CharacterCollectionViewCell
        
        cell.photoImageView.image = UIImage(named: character.characterPhotoName!)
        cell.nameImageView.text = character.characterName!
        
        cell.layer.borderColor = UIColor.lightGray.cgColor
        cell.layer.borderWidth = 0.5
        
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let charactr = charactersList[indexPath.row]
        print("\(charactr.characterName!) image clicked.")
        
    }
    
}
