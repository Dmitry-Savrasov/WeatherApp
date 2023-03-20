//
//  MainView.swift
//  WeatherApp
//
//  Created by Дмитрий Саврасов on 14.08.22.
//

import Foundation
import UIKit

class MainView: UIView {
    
    private lazy var dayOfWeakLabel = makeDayOfWeakLabel()
    private lazy var timeLabel = makeTimeLabel()
    private lazy var mainTemperatureLabel = makeMainTemperatureLabel()
    private lazy var locationLabel = makeLocationLabel()
    private lazy var vector = vectorImage()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = UIColor(named: "cyan2")
        configureUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func makeDayOfWeakLabel() -> UILabel {
        let label = UILabel()
        label.text = ("Saturday")
        label.font = UIFont(name: label.font.fontName, size: 12)
        label.backgroundColor = UIColor(named: "cyan2")
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }
    
    private func makeTimeLabel() -> UILabel {
        let label = UILabel()
        label.text = ("12:12")
        label.font = UIFont(name: label.font.fontName, size: 15)
        label.layer.cornerRadius = 16
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }
        
    private func makeMainTemperatureLabel() -> UILabel {
        let label = UILabel()
        label.text = ("24°C")
        label.font = UIFont(name: label.font.fontName, size: 60)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }
    
    private func makeLocationLabel() -> UILabel {
        let label = UILabel()
        label.text = ("Orange City, AP")
        label.font = UIFont(name: label.font.fontName, size: 15)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }
        
    private func vectorImage() -> UIImageView {
        let image = UIImageView()
        image.image = UIImage(named: "Vector")
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }

    
    private func configureUI() {
        addSubview(dayOfWeakLabel)
        addSubview(timeLabel)
        addSubview(mainTemperatureLabel)
        addSubview(locationLabel)
        addSubview(vector)
        
        NSLayoutConstraint.activate([
            dayOfWeakLabel.topAnchor.constraint(equalTo: topAnchor, constant: 2.21),
            dayOfWeakLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 3.16),
            dayOfWeakLabel.widthAnchor.constraint(equalToConstant: 45),
            dayOfWeakLabel.heightAnchor.constraint(equalToConstant: 17),
            
            timeLabel.topAnchor.constraint(equalTo: topAnchor, constant: 1.5),
            timeLabel.leadingAnchor.constraint(equalTo: dayOfWeakLabel.trailingAnchor, constant: 27.09),
            timeLabel.widthAnchor.constraint(equalToConstant: 51.5),
            timeLabel.heightAnchor.constraint(equalToConstant: 18.41),
            
            mainTemperatureLabel.topAnchor.constraint(equalTo: timeLabel.bottomAnchor, constant: 4.38),
            mainTemperatureLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 0),
            mainTemperatureLabel.widthAnchor.constraint(equalToConstant: 131),
            mainTemperatureLabel.heightAnchor.constraint(equalToConstant: 82),
            
            vector.topAnchor.constraint(equalTo: mainTemperatureLabel.bottomAnchor, constant: 4.1),
            vector.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 2.11),
            vector.widthAnchor.constraint(equalToConstant: 9.27),
            vector.heightAnchor.constraint(equalToConstant: 11.8),
            
            locationLabel.topAnchor.constraint(equalTo: mainTemperatureLabel.bottomAnchor, constant: 0),
            locationLabel.leadingAnchor.constraint(equalTo: vector.trailingAnchor, constant: 7.75),
            locationLabel.widthAnchor.constraint(equalToConstant: 101),
            locationLabel.heightAnchor.constraint(equalToConstant: 20),
            
            
        
        
        
        
        
        
        
        ])
        
    }
}
