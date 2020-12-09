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
  
    let purpleView: UIView = { // purple box
        let purple = UIView()
        purple.translatesAutoresizingMaskIntoConstraints = false
        purple.backgroundColor = .purple
        return purple
    }()
    
    let blueView1: UIView = { // blue box
        let blue = UIView()
        blue.translatesAutoresizingMaskIntoConstraints = false
        blue.backgroundColor = .blue
        return blue
    }()
    
    let blueView2: UIView = { // purple box
        let blue = UIView()
        blue.translatesAutoresizingMaskIntoConstraints = false
        blue.backgroundColor = .blue
        return blue
    }()
    
    let blueView3: UIView = { // purple box
        let blue = UIView()
        blue.translatesAutoresizingMaskIntoConstraints = false
        blue.backgroundColor = .blue
        return blue
    }()
    
    let redView: UIView = { // purple box
        let red = UIView()
        red.translatesAutoresizingMaskIntoConstraints = false
        red.backgroundColor = .red
        return red
    }()
    
    let orgView1: UIView = { // purple box
        let org = UIView()
        org.translatesAutoresizingMaskIntoConstraints = false
        org.backgroundColor = .orange
        return org
    }()
    
    let orgView2: UIView = { // purple box
        let org = UIView()
        org.translatesAutoresizingMaskIntoConstraints = false
        org.backgroundColor = .orange
        return org
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
    view.addSubview(purpleView)
    view.addSubview(blueView1)
    view.addSubview(blueView2)
    view.addSubview(blueView3)
    view.addSubview(redView)
    view.addSubview(orgView1)
    view.addSubview(orgView2)
    
    setupLayout()
  }


  fileprivate func setupLayout() {
    mainView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    mainView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    widthAnchor = mainView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.7, constant: 0)
    widthAnchor?.isActive = true
    heightAnchor = mainView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.7, constant: 0)
    heightAnchor?.isActive = true
    
    //purpleView
    purpleView.leadingAnchor.constraint(equalTo: mainView.safeAreaLayoutGuide.leadingAnchor, constant: 145).isActive = true
    purpleView.topAnchor.constraint(equalTo: mainView.safeAreaLayoutGuide.topAnchor, constant: 700).isActive = true
    purpleView.trailingAnchor.constraint(equalTo: mainView.safeAreaLayoutGuide.trailingAnchor, constant: -30).isActive = true
    heightAnchor = purpleView.heightAnchor.constraint(equalTo: mainView.heightAnchor, multiplier: 0.1, constant: 10)
    heightAnchor?.isActive = true

    //blueView1
    blueView1.centerXAnchor.constraint(equalTo: mainView.centerXAnchor).isActive = true
    blueView1.topAnchor.constraint(equalTo: mainView.safeAreaLayoutGuide.topAnchor, constant: 100).isActive = true
    widthAnchor = blueView1.widthAnchor.constraint(equalTo: mainView.widthAnchor, multiplier: 0.1, constant: 15)
    widthAnchor?.isActive = true
    heightAnchor = blueView1.heightAnchor.constraint(equalTo: mainView.heightAnchor, multiplier: 0.08, constant: 10)
    heightAnchor?.isActive = true

    //blueView2
    blueView2.centerXAnchor.constraint(equalTo: mainView.centerXAnchor).isActive = true
    blueView2.topAnchor.constraint(equalTo: mainView.safeAreaLayoutGuide.topAnchor, constant: 300).isActive = true
    widthAnchor = blueView2.widthAnchor.constraint(equalTo: mainView.widthAnchor, multiplier: 0.1, constant: 15)
    widthAnchor?.isActive = true
    heightAnchor = blueView2.heightAnchor.constraint(equalTo: mainView.heightAnchor, multiplier: 0.08, constant: 10)
    heightAnchor?.isActive = true

    //blueView3
    blueView3.centerXAnchor.constraint(equalTo: mainView.centerXAnchor).isActive = true
    blueView3.topAnchor.constraint(equalTo: mainView.safeAreaLayoutGuide.topAnchor, constant: 500).isActive = true
    widthAnchor = blueView3.widthAnchor.constraint(equalTo: mainView.widthAnchor, multiplier: 0.1, constant: 15)
    widthAnchor?.isActive = true
    heightAnchor = blueView3.heightAnchor.constraint(equalTo: mainView.heightAnchor, multiplier: 0.08, constant: 10)
    heightAnchor?.isActive = true

    //redView
    redView.topAnchor.constraint(equalTo: mainView.safeAreaLayoutGuide.topAnchor, constant: 50).isActive = true
    redView.trailingAnchor.constraint(equalTo: mainView.safeAreaLayoutGuide.trailingAnchor, constant: -30).isActive = true
    widthAnchor = redView.widthAnchor.constraint(equalTo: mainView.widthAnchor, multiplier: 0.3, constant: 0)
    widthAnchor?.isActive = true
    heightAnchor = redView.heightAnchor.constraint(equalTo: mainView.heightAnchor, multiplier: 0.1, constant: 0)
    heightAnchor?.isActive = true

    //orgView1
    orgView1.topAnchor.constraint(equalTo: redView.safeAreaLayoutGuide.topAnchor, constant: 10).isActive = true
    orgView1.leadingAnchor.constraint(equalTo: redView.safeAreaLayoutGuide.leadingAnchor, constant: 10).isActive = true
    orgView1.trailingAnchor.constraint(equalTo: redView.safeAreaLayoutGuide.trailingAnchor, constant: -80).isActive = true
    heightAnchor = orgView1.heightAnchor.constraint(equalTo: redView.heightAnchor, multiplier: 0.8, constant: 0)
    heightAnchor?.isActive = true

    //orgView2
    orgView2.topAnchor.constraint(equalTo: redView.safeAreaLayoutGuide.topAnchor, constant: 10).isActive = true
    orgView2.leadingAnchor.constraint(equalTo: redView.safeAreaLayoutGuide.leadingAnchor, constant: 100).isActive = true
    orgView2.trailingAnchor.constraint(equalTo: redView.safeAreaLayoutGuide.trailingAnchor, constant: -10).isActive = true
    heightAnchor = orgView2.heightAnchor.constraint(equalTo: redView.heightAnchor, multiplier: 0.8, constant: 0)
    heightAnchor?.isActive = true
    
    
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

