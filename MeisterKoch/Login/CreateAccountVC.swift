//
//  CreateAaccountVC.swift
//  MeisterKoch
//
//  Created by Nasim Ahmed on 08.12.18.
//  Copyright © 2018 Nasim Ahmed. All rights reserved.
//

import UIKit

class CreateAccountVC: UIViewController {
    let backButton: UIButton = {
        let lb = UIButton(type: .system)
        lb.setImage(UIImage(named: "back_arrow")?.withRenderingMode(.alwaysOriginal), for: .normal)
        lb.addTarget(self, action: #selector(handleBack), for: .touchUpInside)
        return lb
    }()
    
    let welcomeBackLabel: UILabel = {
        let label = UILabel()
        label.text = "Welcome back"
        label.font = UIFont(name: "Poppins-Bold", size: 30)
        label.textColor = #colorLiteral(red: 0.1450980392, green: 0.1450980392, blue: 0.1450980392, alpha: 1)
        label.textAlignment = .center
        return label
    }()
    
    let enterCredentialsLabel: UILabel = {
        let label = UILabel()
        label.text = "Please enter your credentials in the form below"
        label.font = UIFont(name: "Poppins-Light", size: 12)
        label.textColor = #colorLiteral(red: 0.462745098, green: 0.5294117647, blue: 0.4941176471, alpha: 1)
        label.textAlignment = .center
        return label
    }()
    
    
    let imageView: UIImageView = {
        let iv = UIImageView()
        iv.contentMode = .scaleAspectFill
        iv.image = UIImage(named: "sample_image")?.withRenderingMode(.alwaysOriginal)
        return iv
    }()
    
    let whiteBackground: UIView = {
        let iv = UIView()
        iv.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        iv.layer.cornerRadius = 10
        iv.layer.masksToBounds = true
        iv.addShadow()
        return iv
    }()
    
    let loginButton: UIButton = {
        let lb = UIButton(type: .system)
        lb.setImage(UIImage(named: "login_btn")?.withRenderingMode(.alwaysOriginal), for: .normal)
        lb.addTarget(self, action: #selector(handleLogin), for: .touchUpInside)
        lb.addShadow()
        return lb
    }()
    
    let emailTextField: JVFloatLabeledTextField = {
        let tf = JVFloatLabeledTextField()
        tf.attributedPlaceholder = NSAttributedString(string: "Email or Username", attributes: [
            .foregroundColor: #colorLiteral(red: 0.462745098, green: 0.5294117647, blue: 0.4941176471, alpha: 1),
            .font: UIFont(name: "Poppins-Light", size: 14)!
            ])
        tf.font = UIFont.systemFont(ofSize: 14)
        tf.addTarget(self, action: #selector(handleTextInputChange), for: .editingChanged)
        return tf
    }()
    
    let passwordTextField: JVFloatLabeledTextField = {
        let tf = JVFloatLabeledTextField()
        tf.attributedPlaceholder = NSAttributedString(string: "Password", attributes: [
            .foregroundColor: #colorLiteral(red: 0.462745098, green: 0.5294117647, blue: 0.4941176471, alpha: 1),
            .font: UIFont(name: "Poppins-Light", size: 14)!
            ])
        tf.isSecureTextEntry = true
        tf.font = UIFont.systemFont(ofSize: 14)
        tf.addTarget(self, action: #selector(handleTextInputChange), for: .editingChanged)
        return tf
    }()
    
    let  emailUnderline: UIView = {
        let iv = UIView()
        iv.backgroundColor = #colorLiteral(red: 0.8392156863, green: 0.8392156863, blue: 0.8392156863, alpha: 1)
        return iv
    }()
    
    let passwordUnderline: UIView = {
        let iv = UIView()
        iv.backgroundColor = #colorLiteral(red: 0.8392156863, green: 0.8392156863, blue: 0.8392156863, alpha: 1)
        return iv
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    

    

}
