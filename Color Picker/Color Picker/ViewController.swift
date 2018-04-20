//
//  ViewController.swift
//  Color Picker
//
//  Created by David Lawanson on 4/20/18.
//  Copyright © 2018 David Lawanson. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var pickerView: UIPickerView!
    let colors = ["red", "orange", "yellow", "green", "blue", "purple"]
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.red
        label.text = "red"
        pickerView.delegate = self
        pickerView.dataSource = self
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return colors.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return colors[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if colors[row] == "red"
        {
            self.view.backgroundColor = UIColor.red
            label.text = "red"
        }
        if colors[row] == "orange"
        {
            self.view.backgroundColor = UIColor.orange
            label.text = "orange"
        }
        if colors[row] == "yellow"
        {
            self.view.backgroundColor = UIColor.yellow
            label.text = "yellow"
        }
        if colors[row] == "green"
        {
            self.view.backgroundColor = UIColor.green
            label.text = "green"
        }
        if colors[row] == "blue"
        {
            self.view.backgroundColor = UIColor.blue
            label.text = "blue"
        }
        if colors[row] == "purple"
        {
            self.view.backgroundColor = UIColor.purple
            label.text = "purple"
        }
    }
    
    
}
