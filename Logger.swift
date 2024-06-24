import UIKit
import os.log

class Logger: NSObject {
    
    static let shared = Logger()
    
    func log(message: String, type: OSLogType, file: String = #file, function: String = #function, line: Int = #line) {
        let fileName = (file as NSString).lastPathComponent
        let logMessage = "\(fileName):\(line) \(function) - \(message)"
        
        switch type {
        case .info:
            os_log("%{public}@", log: .default, type: .info, logMessage)
        case .debug:
            os_log("%{public}@", log: .default, type: .debug, logMessage)
        case .error:
            os_log("%{public}@", log: .default, type: .error, logMessage)
        default:
            os_log("%{public}@", log: .default, type: .default, logMessage)
        }
    }
}
