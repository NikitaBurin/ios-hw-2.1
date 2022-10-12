//
//  ProfileHeaderView.swift
//  Navigation
//
//  Created by Никита Бурин on 11.10.2022.
//

import UIKit

class ProfileHeaderView: UIView {
    
    let screen = UIScreen.main.bounds
    
    var profileName = UILabel()
    var profilePhoto = UIImageView()
    var textField = UITextField()
    var statusButton = UIButton()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        profileName.frame = CGRect(x: 150, y: 27, width: 200, height: 40)
        profileName.translatesAutoresizingMaskIntoConstraints = false
        profileName.text = "What The Duck"
        profileName.textColor = .black
        profileName.backgroundColor = .lightGray
        profileName.textAlignment = NSTextAlignment.center
        profileName.font = UIFont(name:"HelveticaNeue-Bold", size: 18)
        
        profilePhoto.frame = CGRect(x: 16, y: 16, width: 130, height: 130)
        profilePhoto.translatesAutoresizingMaskIntoConstraints = false
        profilePhoto.layer.cornerRadius = profilePhoto.bounds.size.width/2
        profilePhoto.layer.borderWidth = 3
        profilePhoto.layer.borderColor = CGColor.init(red: 0, green: 0, blue: 0, alpha: 0.5)
        profilePhoto.image = UIImage(named: "duck")
        profilePhoto.layer.masksToBounds = true
            
        textField.frame = CGRect(x: 180, y: profilePhoto.frame.maxY - 18, width: 300, height: 40)
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.text = "Waiting for something"
        textField.backgroundColor = .lightGray
        textField.font = UIFont(name:"HelveticaNeue-Regular", size: 18)
        textField.textColor = .gray
        
        statusButton.frame = CGRect(x: 16, y: profilePhoto.frame.maxY + 16, width: screen.width - 16, height: 50)
        statusButton.translatesAutoresizingMaskIntoConstraints = false
        statusButton.backgroundColor = UIColor.blue
        statusButton.setTitle("Show status", for: .normal)
        statusButton.layer.cornerRadius = 4
        statusButton.layer.shadowColor = UIColor.black.cgColor
        statusButton.layer.shadowOffset = CGSize(width: 4, height: 4)
        statusButton.layer.shadowOpacity = 0.7
        statusButton.layer.shadowRadius = 4
        statusButton.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
        
        addSubview(profileName)
        addSubview(profilePhoto)
        addSubview(textField)
        addSubview(statusButton)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
    }
    
    @objc func buttonPressed(){
        let x = textField.text
        print(x ?? "")
    }
}


