//
//  UnitSelectionView.swift
//  WeatherApp_ViktoriiaK
//
//  Created by Viktoriia Kondaurova on 5/16/24.
//

import UIKit
import SnapKit

extension UnitSelectionView {
    enum TempUnit: Int, CaseIterable {
        case celsius
        case kelvin
        case fahrenheit

        var unitLabel: String {
            switch self {
            case .celsius: return "ºС"
            case .fahrenheit: return "ºF"
            case .kelvin: return "ºK"
            }
        }
    }
}

final class UnitSelectionView: MainView, UIPickerViewDataSource, UIPickerViewDelegate {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        TempUnit.allCases.count
    }
    
    private let pickerView = UIPickerView()

    private var currentUnit = TempUnit.celsius

    override func setup() {
        super.setup()

        backgroundColor = .white.withAlphaComponent(0.8)

        setupPickerView()
    }

    private func setupPickerView() {
        addSubview(pickerView)
        pickerView.dataSource = self
        pickerView.delegate = self

        pickerView.snp.makeConstraints { make in
            make.edges.equalToSuperview().inset(16)
        }
    }
}
