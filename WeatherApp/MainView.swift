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
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .red
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func makeDayOfWeakLabel() -> UILabel {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }
    
    private func configureUI() {
        
    }
}
