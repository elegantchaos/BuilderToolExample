// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
// Created by Sam Deane, 28/02/2018.
// All code (c) 2018 - present day, Elegant Chaos Limited.
// For licensing terms, see http://elegantchaos.com/license/liberal/.
// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-

import Foundation

let args = CommandLine.arguments[1...]
let argString = (args.count > 0) ? " Args:\(args)." : ""
#if example
let exString = " #if example was true."
#else
let exString = ""
#endif

if let stage = ProcessInfo.processInfo.environment["BUILDER_STAGE"] {
  print("Stage \(stage).\(argString)\(exString)")
} else {
  print("Unknown stage.")
}
