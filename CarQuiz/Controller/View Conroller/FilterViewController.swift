//
//  FilterViewController.swift
//  CarQuiz
//
//  Created by Tanner Perry on 11/18/21.
//

import UIKit
protocol FilterCarProtocol: AnyObject {
    func shuffleCars(for type: String)
}


class FilterViewController: UIViewController {
    
    weak var delegate: FilterCarProtocol?
    
    @IBAction func americanCarButtonTapped(_ sender: Any) {
        delegate?.shuffleCars(for: "americanCar")
        self.dismiss(animated: true)
    }
    
    @IBAction func superCarButtonTapped(_ sender: Any) {
        delegate?.shuffleCars(for: "superCar")
        self.dismiss(animated: true)
    }
}
