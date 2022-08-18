//
//  ViewController.swift
//  WeatherApp
//
//  Created by Дмитрий Саврасов on 12.08.22.
//

import UIKit

class ViewController: UIViewController {

    private lazy var imageView = makeImageView()
    private lazy var mainView = MainView()
    private lazy var weatherParametrsView = WeatherParametrsView()
    private lazy var tableView = makeTableView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(named: "cyan2")
        
        configureUI()
        
    }
    
    private func makeImageView() -> UIImageView {
        let image = UIImageView()
        image.image = UIImage(named: "Sun")
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }
    
    private func makeTableView() -> UITableView {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        return tableView
    }
    
    private func configureUI() {
        mainView.translatesAutoresizingMaskIntoConstraints = false
        weatherParametrsView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(imageView)
        view.addSubview(mainView)
        view.addSubview(weatherParametrsView)
        view.addSubview(tableView)
        
        NSLayoutConstraint.activate([
            imageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 101),
            imageView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 33),
            imageView.heightAnchor.constraint(equalToConstant: 102),
            
            mainView.topAnchor.constraint(equalTo: view.topAnchor, constant: 89),
            mainView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -35),
            mainView.leadingAnchor.constraint(equalTo: imageView.trailingAnchor, constant: 36),
            mainView.heightAnchor.constraint(equalToConstant: 126),
            
            weatherParametrsView.topAnchor.constraint(equalTo: mainView.bottomAnchor, constant: 57),
            weatherParametrsView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 24),
            weatherParametrsView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -24),
            weatherParametrsView.heightAnchor.constraint(equalToConstant: 80)
        ])
    }
    
}
