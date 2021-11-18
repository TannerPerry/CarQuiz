//
//  CarController.swift
//  CarQuiz
//
//  Created by Tanner Perry on 11/18/21.
//

import UIKit


class CarController {

    static var superCar = [Car(make: "Ferarri", model: "458", photo: #imageLiteral(resourceName: "ferarri"), type: "superCar"),
                           Car(make: "Lamborghini", model: "Huracan", photo: #imageLiteral(resourceName: "huracan"), type: "superCar"),
                           Car(make: "Mclaren", model: "720s", photo: #imageLiteral(resourceName: "720s"), type: "superCar"),
                           Car(make: "Mclaren", model: "P1", photo: #imageLiteral(resourceName: "p1"), type: "superCar"),
                           Car(make: "Ferarri", model: "SF90", photo: #imageLiteral(resourceName: "sf90"), type: "superCar"),
                           Car(make: "Acura", model: "NSX", photo: #imageLiteral(resourceName: "nsx"), type: "superCar"),
                           Car(make: "Bugatti", model: "Veyron", photo: #imageLiteral(resourceName: "veyron"), type: "superCar")]
static var americanCar = [Car(make: "Dodge", model: "Charger Hellcat", photo: #imageLiteral(resourceName: "charger"), type: "americanCar"),
                              Car(make: "Dodge", model: "Challenger Hellcat", photo: #imageLiteral(resourceName: "challenger"), type: "americanCar"),
                              Car(make: "Chevrolet", model: "Camero ZL1", photo: #imageLiteral(resourceName: "camero"), type: "americanCar"),
                              Car(make: "Chevrolet", model: "C8 Corvette", photo: #imageLiteral(resourceName: "corvette"), type: "americanCar"),
                              Car(make: "Cadillac", model: "CTSV", photo: #imageLiteral(resourceName: "ctsv"), type: "americanCar"),
                              Car(make: "Ford", model: "GT", photo: #imageLiteral(resourceName: "gt"), type: "americanCar"),
                              Car(make: "Ford", model: "Shelby GT500", photo: #imageLiteral(resourceName: "mustang"), type: "americanCar"),
                              Car(make: "Hennessy", model: "Venom", photo: #imageLiteral(resourceName: "venom"), type: "americanCar")]

}
