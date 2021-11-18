//
//  Car.swift
//  CarQuiz
//
//  Created by Tanner Perry on 11/18/21.
//

import UIKit

class Car {
    let make: String
    let model: String
    let photo: UIImage?
    let type: String

    init(make: String, model: String, photo: UIImage?, type: String) {
        self.make = make
        self.model = model
        self.photo = photo
        self.type = type
    }
}

extension Car: Equatable {
    static func == (lhs: Car, rhs: Car) -> Bool {
        lhs.make == rhs.make && lhs.model == rhs.model && lhs.photo == rhs.photo && lhs.type == rhs.type
    }


}
