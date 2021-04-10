//
//  LoginController.swift
//  MeisterKoch
//
//  Created by Nasim Ahmed on 07.12.18.
//  Copyright © 2018 Nasim Ahmed. All rights reserved.
//

import UIKit


class LoginController: UIViewController {
    
    let logoImageView: UIImageView = {
        let iv = UIImageView()
        iv.contentMode = .scaleAspectFill
        iv.clipsToBounds = false
        iv.backgroundColor = .white
        iv.layer.cornerRadius = 25
        iv.layer.masksToBounds = true
        iv.addShadow()
        return iv
    }()
    
    let appNameLabel: UILabel = {
        let label = UILabel()
        label.text = "MeisterKoch"
        label.font = UIFont(name: "Poppins-Bold", size: 40)
        label.textColor = #colorLiteral(red: 0.1450980392, green: 0.1450980392, blue: 0.1450980392, alpha: 1)
        label.textAlignment = .center
        label.adjustsFontSizeToFitWidth = true
        return label
    }()
    
    let tagLabel: UILabel = {
        let label = UILabel()
        label.text = "Cool tagline goes here"
        label.font = UIFont(name: "Poppins-Light", size: 15)
        label.textColor = #colorLiteral(red: 0.462745098, green: 0.5294117647, blue: 0.4941176471, alpha: 1)
        label.textAlignment = .center
        return label
    }()
    
    let alreadyHaveAccountLabel: UIButton = {
        let label = UIButton(type: .system)
        
        let style = NSMutableParagraphStyle()
        style.alignment = NSTextAlignment.center
        
        let attributedTitle = NSMutableAttributedString(string: "I already have an account.", attributes: [NSAttributedString.Key.font: UIFont(name: "Poppins-Light", size: 12)!, NSAttributedString.Key.foregroundColor: #colorLiteral(red: 0.462745098, green: 0.5294117647, blue: 0.4941176471, alpha: 1)])
        attributedTitle.append(NSMutableAttributedString(string: "\nLOGIN NOW", attributes: [NSAttributedString.Key.font: UIFont(name: "Poppins-Bold", size: 12)!, NSAttributedString.Key.foregroundColor: #colorLiteral(red: 0.1450980392, green: 0.1450980392, blue: 0.1450980392, alpha: 1)]))
        attributedTitle.addAttribute(.paragraphStyle, value: style, range: NSMakeRange(0, attributedTitle.length))
        label.setAttributedTitle(attributedTitle, for: .normal)
        label.titleLabel?.numberOfLines = 0
        label.addTarget(self, action: #selector(handleloginNowBtn), for: .touchUpInside)
        return label
    }()
    
    
    let facebookButton: UIButton = {
        let lb = UIButton(type: .system)
        lb.setImage(UIImage(named: "facebook_btn")?.withRenderingMode(.alwaysOriginal), for: .normal)
        lb.addTarget(self, action: #selector(handleFacebook), for: .touchUpInside)
        lb.addShadow()
        return lb
    }()
    
    let emailButton: UIButton = {
        let lb = UIButton(type: .system)
        lb.setImage(UIImage(named: "email_btn")?.withRenderingMode(.alwaysOriginal), for: .normal)
        lb.addTarget(self, action: #selector(handleEmail), for: .touchUpInside)
        lb.addShadow()
        return lb
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = #colorLiteral(red: 0.9803921569, green: 0.9803921569, blue: 0.9803921569, alpha: 1)
        self.navigationController?.navigationBar.isHidden = true
        
        setupViews()
        
        for family in UIFont.familyNames.sorted() {
            let names = UIFont.fontNames(forFamilyName: family)
            print("Family: \(family) Font names: \(names)")
        }
    }
    
    func setupViews(){
        view.addSubview(logoImageView)
        logoImageView.anchor(top: view.safeAreaLayoutGuide.topAnchor, left: nil, bottom: nil, right: nil, paddingTop: 80, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 85, height: 85)
        logoImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        view.addSubview(appNameLabel)
        appNameLabel.anchor(top: logoImageView.bottomAnchor, left: nil, bottom: nil, right: nil, paddingTop: 40, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 175, height: 45)
        appNameLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        view.addSubview(tagLabel)
        tagLabel.anchor(top: appNameLabel.bottomAnchor, left: nil, bottom: nil, right: nil, paddingTop: 10, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 175, height: 40)
        tagLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        view.addSubview(alreadyHaveAccountLabel)
        alreadyHaveAccountLabel.anchor(top: nil, left: view.leftAnchor, bottom: view.safeAreaLayoutGuide.bottomAnchor, right: view.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 80, paddingRight: 0, width: 0, height: 36)
        
        let stackView = UIStackView(arrangedSubviews: [facebookButton, emailButton])
        stackView.distribution = .fillEqually
        stackView.axis = .vertical
        stackView.spacing = 10
        
        view.addSubview(stackView)
        
        stackView.anchor(top: nil, left: nil, bottom: alreadyHaveAccountLabel.topAnchor, right: nil, paddingTop: 0, paddingLeft: 0, paddingBottom: 74, paddingRight: 0, width: 295, height: 150)
        stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }
    
    @objc func handleEmail(){
        
    }
    
    @objc func handleFacebook(){
        
    }
    
    @objc func handleloginNowBtn(){
        
    }
}
