
import UIKit

class LoggedInViewController: UIViewController {
    @IBOutlet weak var greatingLabel: UILabel!
    
    var greatingMessage = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        greatingLabel.text = greatingMessage
    }

}
