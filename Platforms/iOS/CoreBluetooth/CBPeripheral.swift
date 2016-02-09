
@available(iOS 7.0, *)
enum CBPeripheralState : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case disconnected
  case connecting
  case connected
  @available(iOS 9.0, *)
  case disconnecting
}
enum CBCharacteristicWriteType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case withResponse
  case withoutResponse
}
@available(iOS 5.0, *)
class CBPeripheral : CBPeer {
  unowned(unsafe) var delegate: @sil_unmanaged CBPeripheralDelegate?
  var name: String? { get }
  @available(iOS, introduced=5.0, deprecated=8.0)
  var rssi: Number? { get }
  var state: CBPeripheralState { get }
  var services: [CBService]? { get }
  func readRSSI()
  func discoverServices(serviceUUIDs: [CBUUID]?)
  func discoverIncludedServices(includedServiceUUIDs: [CBUUID]?, forService service: CBService)
  func discoverCharacteristics(characteristicUUIDs: [CBUUID]?, forService service: CBService)
  func readValue(forCharacteristic characteristic: CBCharacteristic)
  @available(iOS 9.0, *)
  func maximumWriteValueLength(forType type: CBCharacteristicWriteType) -> Int
  func writeValue(data: Data, forCharacteristic characteristic: CBCharacteristic, type: CBCharacteristicWriteType)
  func setNotifyValue(enabled: Bool, forCharacteristic characteristic: CBCharacteristic)
  func discoverDescriptors(forCharacteristic characteristic: CBCharacteristic)
  func readValue(forDescriptor descriptor: CBDescriptor)
  func writeValue(data: Data, forDescriptor descriptor: CBDescriptor)
}
protocol CBPeripheralDelegate : ObjectProtocol {
  @available(iOS 6.0, *)
  optional func peripheralDidUpdateName(peripheral: CBPeripheral)
  @available(iOS 7.0, *)
  optional func peripheral(peripheral: CBPeripheral, didModifyServices invalidatedServices: [CBService])
  @available(iOS, introduced=5.0, deprecated=8.0)
  optional func peripheralDidUpdateRSSI(peripheral: CBPeripheral, error: Error?)
  @available(iOS 8.0, *)
  optional func peripheral(peripheral: CBPeripheral, didReadRSSI RSSI: Number, error: Error?)
  @available(iOS 5.0, *)
  optional func peripheral(peripheral: CBPeripheral, didDiscoverServices error: Error?)
  @available(iOS 5.0, *)
  optional func peripheral(peripheral: CBPeripheral, didDiscoverIncludedServicesFor service: CBService, error: Error?)
  @available(iOS 5.0, *)
  optional func peripheral(peripheral: CBPeripheral, didDiscoverCharacteristicsFor service: CBService, error: Error?)
  @available(iOS 5.0, *)
  optional func peripheral(peripheral: CBPeripheral, didUpdateValueFor characteristic: CBCharacteristic, error: Error?)
  @available(iOS 5.0, *)
  optional func peripheral(peripheral: CBPeripheral, didWriteValueFor characteristic: CBCharacteristic, error: Error?)
  @available(iOS 5.0, *)
  optional func peripheral(peripheral: CBPeripheral, didUpdateNotificationStateFor characteristic: CBCharacteristic, error: Error?)
  @available(iOS 5.0, *)
  optional func peripheral(peripheral: CBPeripheral, didDiscoverDescriptorsFor characteristic: CBCharacteristic, error: Error?)
  @available(iOS 5.0, *)
  optional func peripheral(peripheral: CBPeripheral, didUpdateValueFor descriptor: CBDescriptor, error: Error?)
  @available(iOS 5.0, *)
  optional func peripheral(peripheral: CBPeripheral, didWriteValueFor descriptor: CBDescriptor, error: Error?)
}
