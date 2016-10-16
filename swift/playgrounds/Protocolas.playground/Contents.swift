import UIKit
import Foundation

class TemperatureController: UIViewController {
    var temperature: Double = 0.0
        {
    didSet {
        switch true {
        case temperature > 80.0: view.backgroundColor = UIColor.red
        case temperature < 40.0: view.backgroundColor = UIColor.blue
        default: view.backgroundColor = UIColor.green   }
    
    }
    }
        init(){
        self.temperature
        super.init(nibName: nil, bundle: nil)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    override func viewDidLoad() {
        view.backgroundColor = UIColor.white
    }
    
    
}
