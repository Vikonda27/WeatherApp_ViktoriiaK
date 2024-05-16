//
//  MainView.swift
//  WeatherApp_ViktoriiaK
//
//  Created by Viktoriia Kondaurova on 5/15/24.
//

import UIKit

class MainView: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)

        setup()
    }
    
    required init?(coder: NSCoder) {
        super.init(frame: .zero)

        setup()
    }

    func setup() {}
}
