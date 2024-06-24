# Logger
Logger Class for iOS
The Logger class is a singleton utility for structured and detailed logging in iOS applications.
It leverages Apple's os.log framework to log messages with varying severity levels (info, debug, error, and default).
Each log entry includes the file name, function name, and line number, making it easier to trace and debug issues.
This class ensures consistent logging practices across your app, improving maintainability and debugging efficiency.

Usage:

        // Log an informational message
        Logger.shared.log(message: "View did load", type: .info)
        
        // Log a debug message
        Logger.shared.log(message: "This is a debug log", type: .debug)
        
        // Log an error message
        Logger.shared.log(message: "An error occurred", type: .error)
