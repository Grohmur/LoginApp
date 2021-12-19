
import UIKit

class LoggedInViewController: UIViewController {
    @IBOutlet weak var greatingLabel: UILabel!
    
    var userName = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        greatingLabel.text = "Hello, \(userName)"
    }

}
