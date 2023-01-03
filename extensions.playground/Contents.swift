import UIKit

extension Double {
    func round(to precision: Int) -> Double {
        let precisionNumber = pow(10, Double(precision))
        var n = self
        n = n * precisionNumber
        n.round()
        n = n / precisionNumber
        return n
    }
}

extension UIButton {
    func makeCircular() {
        self.clipsToBounds = true
        self.layer.cornerRadius = self.frame.size.width / 2
    }
}

let double = 3.14159
double.round(to: 1)

let button = UIButton(frame: CGRect(x: 0, y: 0, width: 50, height: 50))
button.backgroundColor = .red
//button.layer.cornerRadius = 5
//button.clipsToBounds = true

button.makeCircular()
