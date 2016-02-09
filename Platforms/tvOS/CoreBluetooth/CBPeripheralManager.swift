
@available(tvOS 7.0, *)
enum CBPeripheralManagerAuthorizationStatus : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case notDetermined
  case restricted
  case denied
  case authorized
}
@available(tvOS 6.0, *)
enum CBPeripheralManagerState : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unknown
  case resetting
  case unsupported
  case unauthorized
  case poweredOff
  case poweredOn
}
@available(tvOS 6.0, *)
enum CBPeripheralManagerConnectionLatency : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case low
  case medium
  case high
}
@available(tvOS 6.0, *)
class CBPeripheralManager : Object {
  unowned(unsafe) var delegate: @sil_unmanaged CBPeripheralManagerDelegate?
  var state: CBPeripheralManagerState { get }
  var isAdvertising: Bool { get }
  @available(tvOS 7.0, *)
  class func authorizationStatus() -> CBPeripheralManagerAuthorizationStatus
  func startAdvertising(advertisementData: [String : AnyObject]?)
  func stopAdvertising()
  func setDesiredConnectionLatency(latency: CBPeripheralManagerConnectionLatency, forCentral central: CBCentral)
  func add(service: CBMutableService)
  func remove(service: CBMutableService)
  func removeAllServices()
  func respondTo(request: CBATTRequest, withResult result: CBATTError)
  func updateValue(value: Data, forCharacteristic characteristic: CBMutableCharacteristic, onSubscribedCentrals centrals: [CBCentral]?) -> Bool
  convenience init()
}
protocol CBPeripheralManagerDelegate : ObjectProtocol {
  @available(tvOS 6.0, *)
  func peripheralManagerDidUpdateState(peripheral: CBPeripheralManager)
  @available(tvOS 6.0, *)
  optional func peripheralManager(peripheral: CBPeripheralManager, willRestoreState dict: [String : AnyObject])
  @available(tvOS 6.0, *)
  optional func peripheralManagerDidStartAdvertising(peripheral: CBPeripheralManager, error: Error?)
  @available(tvOS 6.0, *)
  optional func peripheralManager(peripheral: CBPeripheralManager, didAdd service: CBService, error: Error?)
  @available(tvOS 6.0, *)
  optional func peripheralManager(peripheral: CBPeripheralManager, central: CBCentral, didSubscribeTo characteristic: CBCharacteristic)
  @available(tvOS 6.0, *)
  optional func peripheralManager(peripheral: CBPeripheralManager, central: CBCentral, didUnsubscribeFrom characteristic: CBCharacteristic)
  @available(tvOS 6.0, *)
  optional func peripheralManager(peripheral: CBPeripheralManager, didReceiveRead request: CBATTRequest)
  @available(tvOS 6.0, *)
  optional func peripheralManager(peripheral: CBPeripheralManager, didReceiveWrite requests: [CBATTRequest])
  @available(tvOS 6.0, *)
  optional func peripheralManagerIsReady(toUpdateSubscribers peripheral: CBPeripheralManager)
}
