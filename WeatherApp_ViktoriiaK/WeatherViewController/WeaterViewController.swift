//
//  ViewController.swift
//  WeatherApp_ViktoriiaK
//
//  Created by Viktoriia Kondaurova on 5/7/24.
//

import UIKit
import SnapKit


final class WeatherViewController: UIViewController {
    
    private let backgroundImage = UIImageView()
    private let titleContainer = UIView()
    private let titleView = TitleView()
    private let bottomBarView = BottomBarView()

    private let temporaryContentView = UIView()
    private let dayTempLimitsView = DayTempLimitsView()
    private let hourlyWeaterView = HourlyWeatherView()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
    }


}

