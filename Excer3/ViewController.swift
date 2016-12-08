//
//  ViewController.swift
//  Excer3
//
//  Created by macadmin on 2016-03-14.
//  Copyright (c) 2016 macadmin. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate  {

    @IBOutlet weak var myPKview: UIPickerView!
    
    var colors = ["Red","Blue","Green","Black"];
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //CONFIG para PickerView (UIPickerViewDataSource, UIPickerViewDelegate)
        myPKview.delegate = self;
        myPKview.dataSource = self;

        
    }

    //1 aqui digo la cantidad de componentes en el PKview (SECCIONES o Cantidad de Componentes)
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        
        return 1;
    }
    
    //2 aqui retorno la cantidad de mi arreglo (tamano)
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        
        return colors.count;
    }
    
    //3 Aqui muestro lo que tiene mi array
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String! {
        
        return colors[row];
    }
    
    //4 AQUI Selecciono el valor
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        let value = colors[row];
        let test = UIAlertController(title: "Selection", message: "Do you want to Add: " + value + " ?", preferredStyle: UIAlertControllerStyle.alert)
       
        let cancelAction = UIAlertAction(title: "Cancel", style: UIAlertActionStyle.destructive) {
        UIAlertAction in NSLog("Cancel Pressed")}
        
        let okAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.default) {
        UIAlertAction in NSLog("OK Pressed")}
        
        test.addAction(cancelAction);
        test.addAction(okAction);
        
        self.present(test, animated: true, completion: nil)
        
        //print(value);
        
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

