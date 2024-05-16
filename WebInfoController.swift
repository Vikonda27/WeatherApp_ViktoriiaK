//
//  WebInfoController.swift
//  WeatherApp_ViktoriiaK
//
//  Created by Viktoriia Kondaurova on 5/15/24.
//

import UIKit
import SnapKit
import WebKit

class WebInfoController: UIViewController {
    private let webInfo = WKWebView()

    override func viewDidLoad() {
        super.viewDidLoad()

        setupWebInfo()
    }

    func open(_ url: URL) {
        webInfo.load(URLRequest(url: url))
    }

    private func setupWebInfo() {

        view.addSubview(webInfo)

        webInfo.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
    }
}
