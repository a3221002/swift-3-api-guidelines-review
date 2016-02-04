
@available(watchOS 2.0, *)
var NSErrorMergePolicy: AnyObject
@available(watchOS 2.0, *)
var NSMergeByPropertyStoreTrumpMergePolicy: AnyObject
@available(watchOS 2.0, *)
var NSMergeByPropertyObjectTrumpMergePolicy: AnyObject
@available(watchOS 2.0, *)
var NSOverwriteMergePolicy: AnyObject
@available(watchOS 2.0, *)
var NSRollbackMergePolicy: AnyObject
enum NSMergePolicyType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case ErrorMergePolicyType
  case MergeByPropertyStoreTrumpMergePolicyType
  case MergeByPropertyObjectTrumpMergePolicyType
  case OverwriteMergePolicyType
  case RollbackMergePolicyType
}
@available(watchOS 2.0, *)
class NSMergeConflict : Object {
  var sourceObject: NSManagedObject { get }
  var objectSnapshot: [String : AnyObject]? { get }
  var cachedSnapshot: [String : AnyObject]? { get }
  var persistedSnapshot: [String : AnyObject]? { get }
  var newVersionNumber: Int { get }
  var oldVersionNumber: Int { get }
  init(source srcObject: NSManagedObject, newVersion newvers: Int, oldVersion oldvers: Int, cachedSnapshot cachesnap: [String : AnyObject]?, persistedSnapshot persnap: [String : AnyObject]?)
}
@available(watchOS 2.0, *)
class NSConstraintConflict : Object {
  var constraint: [String] { get }
  var constraintValues: [String : AnyObject] { get }
  var databaseObject: NSManagedObject? { get }
  var databaseSnapshot: [String : AnyObject]? { get }
  var conflictingObjects: [NSManagedObject] { get }
  var conflictingSnapshots: [[Object : AnyObject]] { get }
  init(constraint contraint: [String], databaseObject: NSManagedObject?, databaseSnapshot: [Object : AnyObject]?, conflictingObjects: [NSManagedObject], conflictingSnapshots: [AnyObject])
  convenience init()
}
@available(watchOS 2.0, *)
class NSMergePolicy : Object {
  var mergeType: NSMergePolicyType { get }
  init(merge ty: NSMergePolicyType)
  func resolveConflicts(list: [AnyObject]) throws
  @available(watchOS 2.0, *)
  func resolveOptimisticLockingVersionConflicts(list: [NSMergeConflict]) throws
  @available(watchOS 2.0, *)
  func resolve(list: [NSConstraintConflict]) throws
}