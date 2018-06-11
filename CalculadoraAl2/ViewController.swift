//
//  ViewController.swift
//  CalculadoraAl2
//
//  Created by DAM on 25/10/17.
//  Copyright © 2017 DAM. All rights reserved.
//

// HAY QUE DARLE AL CLEAR ANTES DE DARLE A LOS NÚMEROS, PORQUE SI NO EL PROGRAMA CRASHEA.

// HAY QUE DARLE AL CLEAR ANTES DE DARLE A LOS NÚMEROS, PORQUE SI NO EL PROGRAMA CRASHEA.

// HAY QUE DARLE AL CLEAR ANTES DE DARLE A LOS NÚMEROS, PORQUE SI NO EL PROGRAMA CRASHEA.

// salta un error en "numPantalla" que no he conseguido resolver

import UIKit

class ViewController: UIViewController {
    
    var numPantalla:Double = 0;
    var numAnterior:Double = 0;
    var hacerOperacion = false
    var operacion = 0;
    

    @IBOutlet weak var label: UILabel!
    
    @IBAction func numeros(_ sender: UIButton)
    {
        if hacerOperacion == true {
            label.text = String(sender.tag-1)
            numPantalla = Double(label.text!)!
            hacerOperacion = false
        }
        else {
            label.text = label.text! + String(sender.tag-1)
            numPantalla = Double(label.text!)!
        }
    }
    
    @IBAction func botones(_ sender: UIButton)
    {
        
        if label.text != "" && sender.tag != 11 && sender.tag != 16
        {
            numAnterior = Double(label.text!)!
            
            if sender.tag == 12
            {
                label.text = "/";
            }
            else if sender.tag == 13
            {
                label.text = "x";
            }
            else if sender.tag == 14
            {
                label.text = "-";
            }
            else if sender.tag == 15
            {
                label.text = "+";
            }
            
            operacion = sender.tag
            hacerOperacion = true;
        }
            
        else if sender.tag == 16
        {
            if operacion == 12
            {
                label.text = String(numAnterior / numPantalla)
            }
            else if operacion == 13
            {
                label.text = String(numAnterior * numPantalla)
            }
            else if operacion == 14
            {
                label.text = String(numAnterior - numPantalla)
            }
            else if operacion == 15
            {
                label.text = String(numAnterior + numPantalla)
            }
        }
        else if sender.tag == 11
        {
            label.text = ""
            numAnterior = 0;
            numPantalla = 0;
            operacion = 0;
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
