
struct NSSnapshotEventType : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var undoInsertion: NSSnapshotEventType { get }
  static var undoDeletion: NSSnapshotEventType { get }
  static var undoUpdate: NSSnapshotEventType { get }
  static var rollback: NSSnapshotEventType { get }
  static var refresh: NSSnapshotEventType { get }
  static var mergePolicy: NSSnapshotEventType { get }
}
@available(watchOS 2.0, *)
class NSManagedObject : Object {
  @available(watchOS 2.0, *)
  class func contextShouldIgnoreUnmodeledPropertyChanges() -> Bool
  init(entity: NSEntityDescription, insertInto context: NSManagedObjectContext?)
  unowned(unsafe) var managedObjectContext: @sil_unmanaged NSManagedObjectContext? { get }
  var entity: NSEntityDescription { get }
  var objectID: NSManagedObjectID { get }
  var isInserted: Bool { get }
  var isUpdated: Bool { get }
  var isDeleted: Bool { get }
  @available(watchOS 2.0, *)
  var hasChanges: Bool { get }
  @available(watchOS 2.0, *)
  var hasPersistentChangedValues: Bool { get }
  var isFault: Bool { get }
  @available(watchOS 2.0, *)
  func hasFault(forRelationshipNamed key: String) -> Bool
  @available(watchOS 2.0, *)
  func objectIDs(forRelationshipNamed key: String) -> [NSManagedObjectID]
  @available(watchOS 2.0, *)
  var faultingState: Int { get }
  func willAccessValue(forKey key: String?)
  func didAccessValue(forKey key: String?)
  func willChangeValue(forKey key: String)
  func didChangeValue(forKey key: String)
  func willChangeValue(forKey inKey: String, withSetMutation inMutationKind: KeyValueSetMutationKind, usingObjects inObjects: Set<Object>)
  func didChangeValue(forKey inKey: String, withSetMutation inMutationKind: KeyValueSetMutationKind, usingObjects inObjects: Set<Object>)
  func awakeFromFetch()
  func awakeFromInsert()
  @available(watchOS 2.0, *)
  func awake(fromSnapshotEvents flags: NSSnapshotEventType)
  @available(watchOS 2.0, *)
  func prepareForDeletion()
  func willSave()
  func didSave()
  @available(watchOS 2.0, *)
  func willTurnIntoFault()
  func didTurnIntoFault()
  func value(forKey key: String) -> AnyObject?
  func setValue(value: AnyObject?, forKey key: String)
  func primitiveValue(forKey key: String) -> AnyObject?
  func setPrimitiveValue(value: AnyObject?, forKey key: String)
  func committedValues(forKeys keys: [String]?) -> [String : AnyObject]
  func changedValues() -> [String : AnyObject]
  @available(watchOS 2.0, *)
  func changedValuesForCurrentEvent() -> [String : AnyObject]
  func validateValue(value: AutoreleasingUnsafeMutablePointer<AnyObject?>, forKey key: String) throws
  func validateForDelete() throws
  func validateForInsert() throws
  func validateForUpdate() throws
  convenience init()
}
