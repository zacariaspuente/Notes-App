//
//  FirstViewController.swift
//  Notes App
//
//  Created by Zacarias Puente on 08/03/2022.
//

import UIKit

class FirstViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{

    
    var notesTitle = ["Compras Del Super",
                 "Herramientas",
                 "Idea para Instagram"]

    var notesSub = ["Manteca, Leche, Forros, Fernet",
                    "Sierra Circular, Amoladora, Martillo",
                    "Dos pibes se encuentran en una bar, ahre era pesima",
                    "caca"]
    
    let vc2 = SecondViewController()
    
    var a = String()

    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        notesTitle.append("trolo")
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("you pressed me")
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return notesTitle.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "noteCell") as! NoteTableViewCell
        
        cell.noteTitle.text = notesTitle[indexPath.row]
        cell.noteSubTitle.text = notesSub[indexPath.row]
        
        return cell
    }
    

        
    
}



//el siguiente paso es pensar en como agregar al array mi texto escrito en el textField.
//ya se como hacerlo, lo que me falta es pasar el dato que esta metido dentro de una funcion al FirstViewController y de ahi meterlo en notesTitle.append()
