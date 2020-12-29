//
//  ViewController.swift
//  AutoLayoutStarter
//
//  Created by Derrick Park on 2019-04-17.
//  Copyright © 2019 Derrick Park. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let mainView: UIView = {
        let main = UIView()
        // important when setting contraints programmatically
        main.translatesAutoresizingMaskIntoConstraints = false
        main.backgroundColor = .green
        return main
    }()
  
    let redView: UIStackView =  {
        let sv = UIStackView()
        sv.translatesAutoresizingMaskIntoConstraints = false
        sv.backgroundColor = .red
        return sv
    }()
    
    let orangeView1: UIView = {
        let sv = UIView()
        sv.translatesAutoresizingMaskIntoConstraints = false
        sv.backgroundColor = .orange
        return sv
    }()
    
    let orangeView2: UIView = {
        let sv = UIView()
        sv.translatesAutoresizingMaskIntoConstraints = false
        sv.backgroundColor = .orange
        return sv
    }()
  
    let blueSV: UIStackView = {
        let sv = UIStackView()
        sv.translatesAutoresizingMaskIntoConstraints = false
        return sv
    }()
    
    let purpleView: UIView = {
        let purple = UIView()
        purple.translatesAutoresizingMaskIntoConstraints = false
        purple.backgroundColor = .purple
        return purple
    }()
    
  let squareButton: UIButton = {
    let butt = UIButton(type: .system)
    butt.setTitle("Square", for: .normal)
    butt.translatesAutoresizingMaskIntoConstraints = false
    butt.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
    butt.addTarget(self, action: #selector(squareTapped), for: .touchUpInside)
    return butt
  }()
  
  let portraitButton: UIButton = {
    let butt = UIButton(type: .system)
    butt.setTitle("Portrait", for: .normal)
    butt.translatesAutoresizingMaskIntoConstraints = false
    butt.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
    butt.addTarget(self, action: #selector(portraitTapped), for: .touchUpInside)
    return butt
  }()
  
  let landScapeButton: UIButton = {
    let butt = UIButton(type: .system)
    butt.setTitle("Landscape", for: .normal)
    butt.translatesAutoresizingMaskIntoConstraints = false
    butt.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
    butt.addTarget(self, action: #selector(landscapeTapped), for: .touchUpInside)
    return butt
  }()
  
  var widthAnchor: NSLayoutConstraint?
  var heightAnchor: NSLayoutConstraint?
  
  override func viewDidLoad() {
    super.viewDidLoad()
    view.backgroundColor = .white
    view.addSubview(mainView)
    mainView.addSubview(redView)
    redView.addArrangedSubview(orangeView1)
    redView.addArrangedSubview(orangeView2)
    mainView.addSubview(purpleView)
    setupLayout()
  }

  fileprivate func setupLayout() {
    mainView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    mainView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    widthAnchor = mainView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.7, constant: 0)
    widthAnchor?.isActive = true
    
    heightAnchor = mainView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.7, constant: 0)
    heightAnchor?.isActive = true
    
    createSV()
    
    let buttStackView = UIStackView(arrangedSubviews: [
      squareButton, portraitButton, landScapeButton])
    buttStackView.translatesAutoresizingMaskIntoConstraints = false
    buttStackView.axis = .horizontal
    buttStackView.alignment = .center
    buttStackView.distribution = .fillEqually
    
    view.addSubview(buttStackView)
    NSLayoutConstraint.activate([
      buttStackView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -50),
      buttStackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
      buttStackView.heightAnchor.constraint(equalToConstant: 50),
      buttStackView.widthAnchor.constraint(equalTo: view.widthAnchor)
      ])
  }
    
    func createSV() {
        redView.topAnchor.constraint(equalTo: mainView.topAnchor, constant: 30).isActive = true
        redView.trailingAnchor.constraint(equalTo: mainView.trailingAnchor, constant: -30).isActive = true
        redView.widthAnchor.constraint(equalToConstant: 310).isActive = true
        redView.heightAnchor.constraint(equalToConstant: 80).isActive = true
        
        redView.isLayoutMarginsRelativeArrangement = true
        redView.directionalLayoutMargins = NSDirectionalEdgeInsets(top: 15, leading: 15, bottom: 15, trailing: 15)
        redView.distribution = .fill
        redView.spacing = 15
        
        orangeView1.widthAnchor.constraint(equalToConstant: 170).isActive = true
        
        
        let topBlueBox = createBlueBox()
        let middleBlueBox = createBlueBox()
        let bottomBlueBox = createBlueBox()
        blueSV.addArrangedSubview(topBlueBox)
        blueSV.addArrangedSubview(middleBlueBox)
        blueSV.addArrangedSubview(bottomBlueBox)
        
        mainView.addSubview(blueSV)
        
        blueSV.centerXAnchor.constraint(equalTo: mainView.centerXAnchor).isActive = true
        blueSV.centerYAnchor.constraint(equalTo: mainView.centerYAnchor).isActive = true
        blueSV.heightAnchor.constraint(equalTo: mainView.heightAnchor, multiplier: 0.6).isActive = true
        blueSV.axis = .vertical
        blueSV.distribution = .equalSpacing
//        blueSV.alignment = .center
        
        purpleView.trailingAnchor.constraint(equalTo: mainView.trailingAnchor, constant: -30).isActive = true
        purpleView.bottomAnchor.constraint(equalTo: mainView.bottomAnchor, constant: -30).isActive = true
        purpleView.widthAnchor.constraint(equalTo: mainView.widthAnchor, multiplier: 0.6).isActive = true
        purpleView.heightAnchor.constraint(equalTo: mainView.heightAnchor, multiplier: 0.1).isActive = true
        
    }

    func createBlueBox() -> UIView {
        let blueBox = UIView()
        blueBox.translatesAutoresizingMaskIntoConstraints = false
        blueBox.backgroundColor = .blue
        blueBox.widthAnchor.constraint(equalToConstant: 70).isActive = true
        blueBox.heightAnchor.constraint(equalToConstant: 70).isActive = true
        
        
        return blueBox
    }

  @objc private func squareTapped() {
    view.layoutIfNeeded()
    UIView.animate(withDuration: 2.0) {
      self.widthAnchor?.isActive = false
      self.widthAnchor? = self.mainView.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.9)
      self.widthAnchor?.isActive = true
      
      self.heightAnchor?.isActive = false
      self.heightAnchor? = self.mainView.heightAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.9)
      self.heightAnchor?.isActive = true
      self.view.layoutIfNeeded()
    }
  }
  
  @objc private func portraitTapped() {
    view.layoutIfNeeded()
    UIView.animate(withDuration: 2.0) {
      self.widthAnchor?.isActive = false
      self.widthAnchor? = self.mainView.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.7)
      self.widthAnchor?.isActive = true
      
      self.heightAnchor?.isActive = false
      self.heightAnchor? = self.mainView.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.7)
      self.heightAnchor?.isActive = true
      self.view.layoutIfNeeded()
    }
    
  }
  
  @objc private func landscapeTapped() {
    view.layoutIfNeeded()
    UIView.animate(withDuration: 2.0) {
      self.widthAnchor?.isActive = false
      self.widthAnchor? = self.mainView.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.95)
      self.widthAnchor?.isActive = true
      
      self.heightAnchor?.isActive = false
      self.heightAnchor? = self.mainView.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.4)
      self.heightAnchor?.isActive = true
      self.view.layoutIfNeeded()
    }
  }
}

