import Cocoa
import LaunchAtLogin

class ViewController: NSViewController {
    
    @IBOutlet weak var launchAtLoginBtn: NSButton!
    
    var prefs = Preferences()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        launchAtLoginBtn.state = NSControl.StateValue(rawValue: prefs.launchAtLogin.intValue)
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }


    @IBAction func launchAtLoginBtnClicked(_ sender: Any) {
        let state = launchAtLoginBtn.state.rawValue.boolValue
        LaunchAtLogin.isEnabled = state
        prefs.launchAtLogin = state
    }
}

extension Int {
    var boolValue: Bool { return self != 0 }
}

extension Bool {
    var intValue: Int { return self == false ? 0 : 1 }
}
