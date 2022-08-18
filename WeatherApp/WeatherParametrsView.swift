//
//  WeatherParametrsView.swift
//  WeatherApp
//
//  Created by Дмитрий Саврасов on 14.08.22.
//

import Foundation
import UIKit

class WeatherParametrsView: UIView {
    
    private lazy var temperatureView = makeTemperatureView()
    private lazy var humidityView = makeTemperatureView()
    private lazy var sunriseView = makeTemperatureView()
    private lazy var dayImage = makeDayImage()
    private lazy var nightImage = makeNightImage()
    private lazy var temperatureDay = temperatureDayLabel()
    private lazy var temperatureNight = temperatureNightLabel()
    private lazy var windWeather = windWeatherImage()
    private lazy var wetWeather = wetWeatherImage()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .yellow
        configureUI()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func makeTemperatureView() -> UIView {
        let view = UIView()
        view.backgroundColor = .green
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }
    
    private func makeDayImage() -> UIImageView {
        let image = UIImageView()
        image.image = UIImage(named: "Day")
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }
    
    private func makeNightImage() -> UIImageView {
        let image = UIImageView()
        image.image = UIImage(named: "Moon")
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }
    
    private func temperatureDayLabel() -> UILabel {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }
    
    private func temperatureNightLabel() -> UILabel {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }
    
    private func windWeatherImage() -> UIImageView {
        let image = UIImageView()
        image.image = UIImage(named: "Wind")
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }
    
    private func wetWeatherImage() -> UIImageView {
        let image = UIImageView()
        image.image = UIImage(named: "Wet")
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }
    
    private func configureUI() {
        addSubview(temperatureView)
        addSubview(humidityView)
        addSubview(sunriseView)
        temperatureView.addSubview(dayImage)
        temperatureView.addSubview(nightImage)
        temperatureView.addSubview(temperatureDay)
        temperatureView.addSubview(temperatureNight)
        humidityView.addSubview(<#T##view: UIView##UIView#>)
        
        NSLayoutConstraint.activate([
            temperatureView.topAnchor.constraint(equalTo: topAnchor, constant: 0),
            temperatureView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 0),
            temperatureView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 0),
            temperatureView.widthAnchor.constraint(equalToConstant: 97),
            
            humidityView.topAnchor.constraint(equalTo: topAnchor, constant: 0),
            humidityView.leadingAnchor.constraint(equalTo: temperatureView.trailingAnchor, constant: 10),
            humidityView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 0),
            humidityView.widthAnchor.constraint(equalToConstant: 97),
            
            sunriseView.topAnchor.constraint(equalTo: topAnchor, constant: 0),
            sunriseView.leadingAnchor.constraint(equalTo: humidityView.trailingAnchor, constant: 10),
            sunriseView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 0),
            sunriseView.widthAnchor.constraint(equalToConstant: 97),
            
            dayImage.topAnchor.constraint(equalTo: temperatureView.topAnchor, constant: 17),
            dayImage.leadingAnchor.constraint(equalTo: temperatureView.leadingAnchor, constant: 22),
            dayImage.heightAnchor.constraint(equalToConstant: 14),
            
            nightImage.topAnchor.constraint(equalTo: dayImage.bottomAnchor, constant: 10),
            nightImage.leadingAnchor.constraint(equalTo: temperatureView.leadingAnchor, constant: 22),
            nightImage.widthAnchor.constraint(equalToConstant: 14),
            nightImage.heightAnchor.constraint(equalToConstant: 14),
            
            
            
        ])
        
    }
}
