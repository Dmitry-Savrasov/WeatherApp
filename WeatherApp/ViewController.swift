//
//  ViewController.swift
//  WeatherApp
//
//  Created by Дмитрий Саврасов on 12.08.22.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate {

    private lazy var imageView = makeImageView()
    private lazy var mainView = MainView()
    private lazy var weatherParametrsView = WeatherParametrsView()
    private lazy var tableView = UITableView()
    let indentifire = "MyCell"
    
    private lazy var gradient: CAGradientLayer = {
        let gradient = CAGradientLayer()
        gradient.type = .axial
        gradient.colors = [
            UIColor.white.cgColor,
            UIColor.cyan.cgColor,
            UIColor.systemBlue.cgColor
        ]
        gradient.locations = [0, 0.45, 1]
        return gradient
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        gradient.frame = view.bounds
        view.layer.addSublayer(gradient)
    }

    
    private func makeImageView() -> UIImageView {
        let image = UIImageView()
        image.image = UIImage(named: "Sun")
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }
    
    private func configureUI() {
        mainView.translatesAutoresizingMaskIntoConstraints = false
        weatherParametrsView.translatesAutoresizingMaskIntoConstraints = false
        tableView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(imageView)
        view.addSubview(mainView)
        view.addSubview(weatherParametrsView)
        view.addSubview(tableView)
        
        NSLayoutConstraint.activate([
            imageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 101.16),
            imageView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 53),
            imageView.widthAnchor.constraint(equalToConstant: 102.56),
            imageView.heightAnchor.constraint(equalToConstant: 102.56),
            
            mainView.topAnchor.constraint(equalTo: view.topAnchor, constant: 89.30),
            mainView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -34.95),
            mainView.leadingAnchor.constraint(equalTo: imageView.trailingAnchor, constant: 68.61),
            mainView.widthAnchor.constraint(equalToConstant: 150.89),
            mainView.heightAnchor.constraint(equalToConstant: 126.29),
            
            weatherParametrsView.topAnchor.constraint(equalTo: mainView.bottomAnchor, constant: 56.98),
            weatherParametrsView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 23.84),
            weatherParametrsView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -26.52),
            weatherParametrsView.heightAnchor.constraint(equalToConstant: 80)
        ])
    }
    
    let secondTableView = UITableView.init(frame: .zero, style: UITableView.Style.grouped)

    
}
