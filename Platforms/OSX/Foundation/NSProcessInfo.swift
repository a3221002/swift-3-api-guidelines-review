
var windowsNTOperatingSystem: Int { get }
var windows95OperatingSystem: Int { get }
var solarisOperatingSystem: Int { get }
var hpuxOperatingSystem: Int { get }
var machOperatingSystem: Int { get }
var sunOSOperatingSystem: Int { get }
var osf1OperatingSystem: Int { get }
struct OperatingSystemVersion {
  var majorVersion: Int
  var minorVersion: Int
  var patchVersion: Int
  init()
  init(majorVersion: Int, minorVersion: Int, patchVersion: Int)
}
class ProcessInfo : Object {
  class func processInfo() -> ProcessInfo
  var environment: [String : String] { get }
  var arguments: [String] { get }
  var hostName: String { get }
  var processName: String
  var processIdentifier: Int32 { get }
  var globallyUniqueString: String { get }
  @available(OSX, introduced=10.0, deprecated=10.10, message="-operatingSystem always returns NSMACHOperatingSystem, use -operatingSystemVersion or -isOperatingSystemAtLeastVersion: instead")
  func operatingSystem() -> Int
  @available(OSX, introduced=10.0, deprecated=10.10, message="-operatingSystemName always returns NSMACHOperatingSystem, use -operatingSystemVersionString instead")
  func operatingSystemName() -> String
  var operatingSystemVersionString: String { get }
  @available(OSX 10.10, *)
  var operatingSystemVersion: OperatingSystemVersion { get }
  @available(OSX 10.5, *)
  var processorCount: Int { get }
  @available(OSX 10.5, *)
  var activeProcessorCount: Int { get }
  @available(OSX 10.5, *)
  var physicalMemory: UInt64 { get }
  @available(OSX 10.10, *)
  func isOperatingSystemAtLeastVersion(version: OperatingSystemVersion) -> Bool
  @available(OSX 10.6, *)
  var systemUptime: TimeInterval { get }
  @available(OSX 10.6, *)
  func disableSuddenTermination()
  @available(OSX 10.6, *)
  func enableSuddenTermination()
  @available(OSX 10.7, *)
  func disableAutomaticTermination(reason: String)
  @available(OSX 10.7, *)
  func enableAutomaticTermination(reason: String)
  @available(OSX 10.7, *)
  var automaticTerminationSupportEnabled: Bool
  init()
}
@available(OSX 10.9, *)
struct ActivityOptions : OptionSetType {
  init(rawValue: UInt64)
  let rawValue: UInt64
  static var IdleDisplaySleepDisabled: ActivityOptions { get }
  static var IdleSystemSleepDisabled: ActivityOptions { get }
  static var SuddenTerminationDisabled: ActivityOptions { get }
  static var AutomaticTerminationDisabled: ActivityOptions { get }
  static var UserInitiated: ActivityOptions { get }
  static var UserInitiatedAllowingIdleSystemSleep: ActivityOptions { get }
  static var Background: ActivityOptions { get }
  static var LatencyCritical: ActivityOptions { get }
}
extension ProcessInfo {
  @available(OSX 10.9, *)
  func beginActivity(options options: ActivityOptions = [], reason: String) -> ObjectProtocol
  @available(OSX 10.9, *)
  func endActivity(activity: ObjectProtocol)
  @available(OSX 10.9, *)
  func performActivity(options options: ActivityOptions = [], reason: String, usingBlock block: () -> Void)
}
@available(OSX 10.10.3, *)
enum ProcessInfoThermalState : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Nominal
  case Fair
  case Serious
  case Critical
}
extension ProcessInfo {
  @available(OSX 10.10.3, *)
  var thermalState: ProcessInfoThermalState { get }
}
extension ProcessInfo {
}
@available(OSX 10.10.3, *)
let processInfoThermalStateDidChangeNotification: String