//
//  CarCollectionViewController.swift
//  CarQuiz
//
//  Created by Tanner Perry on 11/18/21.
//

import UIKit



class CarCollectionViewController: UICollectionViewController, FilterCarProtocol {

    private var displayCars: [Car] = []
    private var targetCar: Car?
    private var typeOfCar = "superCar"

    
    override func viewDidLoad() {
        super.viewDidLoad()
        shuffleCars(for: typeOfCar)
        
    }
    
    func shuffleCars(for type: String) {
        typeOfCar = type
        if type == "superCar" {
            CarController.superCar.shuffle()
            let superGroup = CarController.superCar.prefix(3)
            displayCars = Array(superGroup)
            targetCar = CarController.americanCar.randomElement()
        } else if type == "americanCar" {
            CarController.americanCar.shuffle()
            let AmericanGroup = CarController.americanCar.prefix(3)
            displayCars = Array(AmericanGroup)
            targetCar = CarController.superCar.randomElement()
        }
        upadateViews()
    }
    
    func upadateViews() {
        guard let car = targetCar else { return }
        displayCars.append(car)
        displayCars.shuffle()
        collectionView.reloadData()
        title = "find \(car.make) \(car.model)"
    }
    
    func presentAlert(for car: Car) {
        let success = car == targetCar
        let alertController = UIAlertController(title: success ? "good Job!" : "Better luck next time", message: nil, preferredStyle: .alert)
        
        let doneAction = UIAlertAction(title: "done", style: .cancel)
        let shuffleAction = UIAlertAction(title: "Shuffle!", style: .default) {_ in
            self.shuffleCars(for: self.typeOfCar)
        }
        
        alertController.addAction(doneAction)
        
        if success {
            alertController.addAction(shuffleAction)
        }
        
        present(alertController, animated: true)
    }


    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "filterVC" {
            let vc = segue.destination as? FilterViewController
            vc?.delegate = self
    }
    }
    

    // MARK: UICollectionViewDataSource

    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return displayCars.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "carCell", for: indexPath) as? CarCollectionViewCell else { return UICollectionViewCell() }
        
        let car = displayCars[indexPath.row]
        
        cell.displayImage(for: car)
        
        return cell
    }

    // MARK: UICollectionViewDelegate
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let car = displayCars[indexPath.row]
        presentAlert(for: car)
    }

}

extension CarCollectionViewController: UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = view.frame.width / 2
        return CGSize(width: width - 15, height: width + 30)
    }
}
