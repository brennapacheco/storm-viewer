//
//  ViewController.swift
//  Storm Viewer
//
//  Created by Brenna Pacheco da Silva Alves on 06/09/22.
//

import UIKit

class ViewController: UIViewController {

    var pictures: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let fm = FileManager.default
        
        guard let path = Bundle.main.resourcePath else { return }
        
        do {
            
            let items = try fm.contentsOfDirectory(atPath: path)
            
            for item in items {
                if item.hasPrefix("nssl") {
                    pictures.append(item)
                }
            }
            
        } catch {
            print("Failed to save images.")
        }
        
        print(pictures)
    }


}

