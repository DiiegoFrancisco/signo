//
//  ViewController.swift
//  Signos
//
//  Created by DevMakerMobile on 10/07/2019.
//  Copyright © 2019 DevMakerMobile. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    
    var signos: [String] = []
    var significado: [String] = []
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
         signos.append("Aries")
         signos.append("Touro")
         signos.append("Gêmeos")
         signos.append("Câncer")
         signos.append("Leão")
         signos.append("Virgem")
         signos.append("Libra")
         signos.append("Escorpião")
         signos.append("Sagitário")
         signos.append("Capricórnio")
         signos.append("Aquário")
         signos.append("Peixes")
        
        significado.append("1 ahsd")
        significado.append("2 ahsddfsdfds")
        significado.append("3 gdffahsd")
        significado.append("4 f f f ffahsd")
        significado.append("5 kkkkkkkkkahsd")
        significado.append("6 tttttttttahsd")
        significado.append("7 wwwwwwwwahsd")
        significado.append("8 iiiiiiiiiiiahsd")
        significado.append("9 pppppppppppahsd")
        significado.append("10 gggggggggggggggggahsd")
        significado.append("11 xxxxxxxxxxxxxxahsd")
        significado.append("12 zazazazazazazazahsd")
        
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return signos.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let celulaReuso = "celulaReuso"
        let celula = tableView.dequeueReusableCell(withIdentifier: celulaReuso, for: indexPath)
        celula.textLabel?.text = signos[indexPath.row]
        return celula 
    }
    
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        tableView.deselectRow(at: indexPath, animated: true)
        
        let alertaController = UIAlertController(title: "Significado do Signo", message: significado [indexPath.row], preferredStyle: .alert)
        let confirmar = UIAlertAction(title: "ok", style: .default, handler: nil)
        
        alertaController.addAction(confirmar)
        
        present(alertaController, animated: true, completion: nil)
        
        //print(significado [indexPath.row])
        
        
        
    }


}

