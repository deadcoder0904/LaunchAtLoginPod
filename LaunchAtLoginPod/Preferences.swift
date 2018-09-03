import Foundation

struct Preferences {
    let defaults = UserDefaults.standard
    var launchAtLogin: Bool {
        get {
            return defaults.bool(forKey: "launchAtLogin")
        }
        set {
            defaults.set(newValue, forKey: "launchAtLogin")
        }
    }
}
