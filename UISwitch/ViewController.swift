//
//  ViewController.swift
//  UISwitch
//
//  Created by Damir Chalkarov on 18.07.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    @IBOutlet weak var sendButton: UIButton!
    
    let mySwitch = UISwitch()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        segmentedControl.alpha = 0
        sendButton.alpha = 0
        
        view.addSubview(mySwitch)
        mySwitch.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([mySwitch.topAnchor.constraint(equalTo: label.topAnchor),
                                    mySwitch.leadingAnchor.constraint(equalTo: label.trailingAnchor, constant: -80)])
        
        mySwitch.addTarget(self, action: #selector(switchAction(sender:)), for: .valueChanged)
    }
        
    @objc func switchAction(sender: UISwitch) {
            if sender.isOn {
                UIView.animate(withDuration: 0.5) {
                    self.segmentedControl.alpha = 1
                    self.sendButton.alpha = 1
                }
            } else {
                UIView.animate(withDuration: 0.5) {
                    self.segmentedControl.alpha = 0
                    self.sendButton.alpha = 0
                }
            }
        }
    @IBAction func sendAction() {
        print("спасибо за ваш отзыв - \(segmentedControl.selectedSegmentIndex + 1)")
    }
    
    
    }
    


