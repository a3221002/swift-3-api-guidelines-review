
class Coder : Object {
  func encodeValue(ofObjCType type: UnsafePointer<Int8>, at addr: UnsafePointer<Void>)
  func encodeDataObject(data: Data)
  func decodeValue(ofObjCType type: UnsafePointer<Int8>, at data: UnsafeMutablePointer<Void>)
  func decodeDataObject() -> Data?
  func version(forClassName className: String) -> Int
  init()
}

extension Coder {
  @warn_unused_result
  func decodeObjectOfClass<DecodedObjectType : Coding where DecodedObjectType : NSObject>(cls: DecodedObjectType.Type, forKey key: String) -> DecodedObjectType?
  @warn_unused_result
  @nonobjc func decodeObjectOfClasses(classes: NSSet?, forKey key: String) -> AnyObject?
  @warn_unused_result
  func decodeTopLevelObject() throws -> AnyObject?
  @warn_unused_result
  func decodeTopLevelObjectForKey(key: String) throws -> AnyObject?
  @warn_unused_result
  func decodeTopLevelObjectOfClass<DecodedObjectType : Coding where DecodedObjectType : NSObject>(cls: DecodedObjectType.Type, forKey key: String) throws -> DecodedObjectType?
  @warn_unused_result
  func decodeTopLevelObjectOfClasses(classes: NSSet?, forKey key: String) throws -> AnyObject?
}
extension Coder {
  func encode(object: AnyObject?)
  func encodeRootObject(rootObject: AnyObject)
  func encodeBycopyObject(anObject: AnyObject?)
  func encodeByrefObject(anObject: AnyObject?)
  func encodeConditionalObject(object: AnyObject?)
  func encodeArray(ofObjCType type: UnsafePointer<Int8>, count: Int, at array: UnsafePointer<Void>)
  func encodeBytes(byteaddr: UnsafePointer<Void>, length: Int)
  func decodeObject() -> AnyObject?
  func decodeArray(ofObjCType itemType: UnsafePointer<Int8>, count: Int, at array: UnsafeMutablePointer<Void>)
  func decodeBytes(withReturnedLength lengthp: UnsafeMutablePointer<Int>) -> UnsafeMutablePointer<Void>
  func encodePropertyList(aPropertyList: AnyObject)
  func decodePropertyList() -> AnyObject?
  var systemVersion: UInt32 { get }
  var allowsKeyedCoding: Bool { get }
  func encode(objv: AnyObject?, forKey key: String)
  func encodeConditionalObject(objv: AnyObject?, forKey key: String)
  func encode(boolv: Bool, forKey key: String)
  func encode(intv: Int32, forKey key: String)
  func encode(intv: Int32, forKey key: String)
  func encode(intv: Int64, forKey key: String)
  func encode(realv: Float, forKey key: String)
  func encode(realv: Double, forKey key: String)
  func encodeBytes(bytesp: UnsafePointer<UInt8>, length lenv: Int, forKey key: String)
  func containsValue(forKey key: String) -> Bool
  func decodeObject(forKey key: String) -> AnyObject?
  func decodeBool(forKey key: String) -> Bool
  func decodeInt(forKey key: String) -> Int32
  func decodeInt32(forKey key: String) -> Int32
  func decodeInt64(forKey key: String) -> Int64
  func decodeFloat(forKey key: String) -> Float
  func decodeDouble(forKey key: String) -> Double
  func decodeBytes(forKey key: String, returnedLength lengthp: UnsafeMutablePointer<Int>) -> UnsafePointer<UInt8>
  @available(OSX 10.5, *)
  func encode(intv: Int, forKey key: String)
  @available(OSX 10.5, *)
  func decodeInteger(forKey key: String) -> Int
  @available(OSX 10.8, *)
  var requiresSecureCoding: Bool { get }
  @available(OSX 10.8, *)
  func __decodeObject(ofClasses classes: Set<Object>?, forKey key: String) -> AnyObject?
  @available(OSX 10.8, *)
  func decodePropertyList(forKey key: String) -> AnyObject?
  @available(OSX 10.8, *)
  var allowedClasses: Set<Object>? { get }
  @available(OSX 10.11, *)
  func failWithError(error: Error)
}
extension Coder {
}
