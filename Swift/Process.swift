#! /usr/bin/env swift

import Foundation

print("このプロセスのIDは: \(ProcessInfo.processInfo.processIdentifier)")

print("\r\nでは,3.14秒ほど居眠りします\r\n")
Thread.sleep(forTimeInterval: 3.14)