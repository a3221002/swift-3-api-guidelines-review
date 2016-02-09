
protocol CWEventDelegate {
  optional func clientConnectionInterrupted()
  optional func clientConnectionInvalidated()
  optional func powerStateDidChangeForWiFiInterface(withName interfaceName: String)
  optional func ssidDidChangeForWiFiInterface(withName interfaceName: String)
  optional func bssidDidChangeForWiFiInterface(withName interfaceName: String)
  optional func countryCodeDidChangeForWiFiInterface(withName interfaceName: String)
  optional func linkDidChangeForWiFiInterface(withName interfaceName: String)
  optional func linkQualityDidChangeForWiFiInterface(withName interfaceName: String, rssi: Int, transmitRate: Double)
  optional func modeDidChangeForWiFiInterface(withName interfaceName: String)
  optional func scanCacheUpdatedForWiFiInterface(withName interfaceName: String)
}
@available(OSX 10.10, *)
class CWWiFiClient : Object {
  @available(OSX 10.10, *)
  weak var delegate: @sil_weak AnyObject?
  @available(OSX 10.10, *)
  class func shared() -> CWWiFiClient
  @available(OSX 10.10, *)
  init?()
  @available(OSX 10.10, *)
  func interface() -> CWInterface?
  @available(OSX 10.10, *)
  class func interfaceNames() -> [String]?
  @available(OSX 10.10, *)
  func interface(withName interfaceName: String?) -> CWInterface?
  @available(OSX 10.10, *)
  func interfaces() -> [CWInterface]?
  @available(OSX 10.10, *)
  func startMonitoringEvent(withType type: CWEventType) throws
  @available(OSX 10.10, *)
  func stopMonitoringEvent(withType type: CWEventType) throws
  @available(OSX 10.10, *)
  func stopMonitoringAllEvents() throws
}
