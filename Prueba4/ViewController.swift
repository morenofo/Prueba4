//
//  ViewController.swift
//  Prueba4
//
//  Created by OSCAR on 09/07/2020.
//  Copyright © 2020 OSCAR. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var contenedor = ""
    @IBOutlet weak var tableView: UITableView!
    
    //Creamos un array donde almacenamos los meses
    private let losMeses = [" Enero", "Febrero", "Marzo", "Abril","Mayo", "Junio", "Julio", "Agosto", "Septiembre", "Octubre","Noviembre", "Diciembre"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    //implementamos el protocolo delegado
        tableView.dataSource = self
        //protocolo para detectar eventos
        tableView.delegate = self
        tableView.tableFooterView = UIView()
    }


}
//protocolo delegado

extension ViewController: UITableViewDataSource{
    
    //indica cuantas celdas tiene nuestra tabla
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //retornamos el numero de celdas pasandole nuestro array
        return losMeses.count
    }
    
    
    //define el contenido de la celda
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //reutilizacion de la celda
        var celda = tableView.dequeueReusableCell(withIdentifier: "myCelda")
        //comprobamos si la celda es nula y si es nula la creamos
        if celda == nil {
            //creacion de nuestra celda
            celda = UITableViewCell (style: .default, reuseIdentifier: "myCelda")
            //color de la celda
            celda?.backgroundColor = .gray
            celda?.accessoryType = .disclosureIndicator
            
        }
        //al estar seguros que no es nula, forzamos su desempaquetamiento
        
        celda!.textLabel?.text = losMeses [indexPath.row]
        return celda!
        
        
    

    }
    
    
    
        
}
extension ViewController: UITableViewDelegate {
    //funcion seleccion eventos
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
      
        print("llega")
         contenedor = losMeses[indexPath.row]
        print(contenedor)
        
        performSegue(withIdentifier: "segue1", sender: self)
       
    }
   override func prepare( for segue: UIStoryboardSegue, sender: Any?){
        
        if let destino = segue.destination as? SegundaPantalla{
            destino.contenedor = contenedor
            print("entra")
        }
       
      }
        
    }
    
                

       
    
    
    


