
typealias MPMediaEntityPersistentID = UInt64
@available(iOS 4.2, *)
class MPMediaEntity : Object, SecureCoding {
  class func canFilterByProperty(property: String) -> Bool
  @available(iOS 4.0, *)
  func enumerateValuesForProperties(properties: Set<String>, usingBlock block: (String, AnyObject, UnsafeMutablePointer<ObjCBool>) -> Void)
  @available(iOS 8.0, *)
  subscript (key: AnyObject) -> AnyObject? { get }
  func valueForProperty(property: String) -> AnyObject?
  @available(iOS 7.0, *)
  var persistentID: MPMediaEntityPersistentID { get }
  init()
  @available(iOS 4.2, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 4.2, *)
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
@available(iOS 4.2, *)
let MPMediaEntityPropertyPersistentID: String