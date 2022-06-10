//
//  ViewController.swift
//  MyDicoding
//
//  Created by Armstrong on 08/06/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textAkademi: UILabel!
    @IBOutlet weak var followButton: UIButton!
    @IBOutlet weak var textChallenge: UILabel!
    @IBOutlet weak var textEvent: UILabel!
    @IBOutlet weak var profileImageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupCircleImageView()
        setupTextLabel()

    }
    
    private func setupCircleImageView() {
        profileImageView.layer.borderWidth = 1
        profileImageView.layer.masksToBounds = false
        profileImageView.layer.borderColor = UIColor.black.cgColor
        profileImageView.layer.cornerRadius = profileImageView.frame.height/2
        profileImageView.clipsToBounds = true
        profileImageView.image = UIImage(named: "naruto")
    }
    
    private func setupTextLabel() {
        textAkademi.text = "Belajar 6 Kelas Akademi";
        textChallenge.text = "Memenangkan 0 Challenge";
        textEvent.text = "Menghadiri 0 Event";
    }
    
    private var isFollow = false
    
    @IBAction func setFollowed(_ sender: Any) {
        isFollow = !isFollow
        followButton.setTitle(isFollow ? "Followed" : "Follow", for: .normal)
    }
    
}

