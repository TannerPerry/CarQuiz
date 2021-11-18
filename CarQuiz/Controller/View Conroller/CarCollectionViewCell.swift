//
//  CarCollectionViewCell.swift
//  CarQuiz
//
//  Created by Tanner Perry on 11/18/21.
//

import UIKit

class CarCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var carImageView: UIImageView!
    
    func displayImage(for car: Car) {
        carImageView.image = car.photo
        carImageView.contentMode = .scaleAspectFill
        carImageView.clipsToBounds = true
    }
}
