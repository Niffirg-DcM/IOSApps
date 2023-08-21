//
//  ViewController.swift
//  ThirdApp
//
//  Created by Griffin McDonald on 2023-07-24.
//

import UIKit

class ViewController: UIViewController {
    
    private let imageView:UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.backgroundColor = .white
        return imageView
    }()
    
    private let button:UIButton = {
        let button = UIButton()
        button.backgroundColor = .white
        button.setTitle("Random Photo Gen", for: .normal)
        button.setTitleColor(.black, for: .normal)
        return button
    }()
    
    let colors: [UIColor] = [
        .systemRed,
        .systemGreen,
        .systemPurple,
        .systemOrange,
        .systemBlue,
        .systemYellow
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemPink
        view.addSubview(imageView)
        imageView.frame = CGRect(x: 0, y: 0, width: 350, height: 350)
        imageView.center = view.center
        view.addSubview(button)
        getRandomPhoto()
        button.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
        let timer = Timer.scheduledTimer(timeInterval: 2.0, target: self, selector: #selector(didTapButton), userInfo: nil, repeats: true)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        button.frame = CGRect(x: 30,
                              y: view.frame.size.height - 150 - view.safeAreaInsets.bottom,
                              width: view.frame.size.width-60, height: 55)
    }
    
    @objc func didTapButton() {
        getRandomPhoto()
        
        view.backgroundColor = colors.randomElement()
        
    }
    

    func getRandomPhoto() {
        let urlString = "https://source.unsplash.com/random/700x700"
        let url = URL(string:urlString)!
        guard let data = try? Data(contentsOf: url) else {return}
        imageView.image = UIImage(data:data)
    }

}

//https://source.unsplash.com/random/700x700
