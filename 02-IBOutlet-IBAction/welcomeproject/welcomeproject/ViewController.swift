//
//  ViewController.swift
//  welcomeproject
//
//  Created by Armstrong on 10/06/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var newButton: UIButton!
    @IBOutlet weak var welcome: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // MARK: Mengubah teks welcome
        welcome.text = "Hallo sobat coding!";
        
        // MARK: Mengambil teks welcome
        print(welcome.text ?? "Tidak ada text");
        
        // MARK: Mengubah teks newButton
        newButton.setTitle("Like sekarang juga!", for: .normal)
                
        // MARK: Mengambil teks newButton
        print(newButton.titleLabel?.text ?? "Tidak mendapatkan teks")
        
        
    }
    
    
    // MARK: Variabel sementara untuk menampung total like
    var totalLike = 0;
    
    // MARK: Ketika user menekan tombol Like maka menjalankan function ini
    @IBAction func addLike(_ sender: UIButton) {
        // MARK: Setiap kali klik maka akan bertambah 1 like-nya
        totalLike += 1
        newButton.setTitle("Like \(totalLike)", for: .normal)
    }

}

