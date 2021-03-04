
import CoreLocation
import Foundation

class Delegate : NSObject, CLLocationManagerDelegate {

    let manager = CLLocationManager()
    var timeoutTimer: Timer? = nil

    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        if let location = locations.first {
            print("\(location.coordinate.latitude) \(location.coordinate.longitude)")
            exit(0)
        }
    }

    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        print("Could not find location: \(error.localizedDescription)")
    }

    func run() {
        manager.delegate = self
        manager.requestLocation()
    }
}

let delegate = Delegate()
delegate.run()

autoreleasepool {
    RunLoop.main.run()
}
